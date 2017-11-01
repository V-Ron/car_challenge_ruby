class Car
attr_accessor :make, :model_year, :speed, :brake
def initialize (make,model_year, speed=0)
    @make = make
    @model_year = model_year
    @speed = speed
    @brake
end

def full_car
    @make + " " + @model_year
end

def make= new_make
    @make = new_make
end

def model_year= new_model_year
    @model_year = new_model_year
end

def accelerate
    @speed = @speed + 10
end
def brake
    @speed = @speed - 7
end

end
