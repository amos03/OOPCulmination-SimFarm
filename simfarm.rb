require_relative 'field'

class SimFarm
    def initialize(name)
        @name=name
    end

    def main_menu
    while true
        print_main_menu
        user_selected =gets.chomp
        call_option(user_selected)
    end

    def print_main_menu
    puts ""
    puts "---------------------------"
    puts "field --> adds a new field"
    puts "harvest --> harvests crops and adds to total food harvested"
    puts "status --> displays information about the farm"
    puts "relax --> take in the vistas of your fields"
    puts "exit --> leave the farm"
    end

    def call_option(user_selected)
        case user_selected
        when "field" then add_field
        when "harvest" then harvest_field
        when "status" then status
        when "relax" then relax
        when "exit" then exit
        end
    end

def add_field
    
    puts "What kind of field would you like to add? Corn or wheat?"
    type = gets.chomp
    
    puts "How many hectares should this field be?"
    hectares = gets.chomp.to_f

    Field.create(type,hectares)

end

def harvest_field
end

def status
end

def relax
end

end

a_simfarm_app=SimFarm.new
a_simfarm_app.main_menu