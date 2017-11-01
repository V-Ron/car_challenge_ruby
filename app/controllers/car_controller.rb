class CarController < ApplicationController
    def index
    #   if params[:make] != nil && params[:model_year] !=nil
    #
        if params.has_key?(:make) && params.has_key?(:model_year)  && !params[:make].strip.empty? && !params[:model_year].strip.empty?
            @car = Car.new(params[:make], params[:model_year])
            session[:car] = @car.to_yaml
            render 'accelerate.html.erb'
        elsif params.has_key?(:make) && params[:make].strip.empty? || params.has_key?(:model_year) && params[:model_year].strip.empty?
            flash.now[:alert] = "Please enter valid shit."
            render 'index.html.erb'
        else
            render 'index.html.erb'
        end

    end
    def accelerate
        @car = YAML.load(session[:car])
        if params.has_key?(:speed)
            @car.accelerate
            session[:car] = @car.to_yaml
        end
        if params.has_key?(:brake)
            @car.brake
            session[:car] = @car.to_yaml
        end
    end

end
