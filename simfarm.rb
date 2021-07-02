require_relative "field"

class Simfarm
    def initialize(name)
        @name=name
    end

    def main_menu
        while true
            print_main_menu
            user_selected =gets.chomp
            call_option(user_selected)
        end
    end

    def print_main_menu
    puts ""
    puts "*****SimFarm 1987*****"
    puts "---------------------------"
    puts "field --> adds a new field"
    puts "harvest --> harvests crops and adds to total food harvested"
    puts "status --> displays information about the farm"
    puts "relax --> take in the vistas of your fields"
    puts "exit --> leave the farm"
    puts "---------------------------"
    print ":>"
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
    
    puts "What kind of field would you like to add? Enter corn or wheat."
    type = gets.chomp
    
    puts "How many hectares should this field be?"
    hectares = gets.chomp.to_i

    Field.create(type,hectares)

    puts "Added a #{type} field of #{hectares} hectares."
end

def harvest_field
    Field.harvest
end

def status
    Field.display_status
end

def relax
    Field.relax
end

end
puts "\e[H\e[2J"
a_simfarm_app=Simfarm.new("SimFarm")
a_simfarm_app.main_menu