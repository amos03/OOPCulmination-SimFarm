class Field
@@fields=[]
@@food_harvested=0
@@corn_hectares=0
@@wheat_hectares=0

    def initialize(type,size)
        @field_type=type
        @field_size=size
    end

attr_reader :field_type, :field_size

    def self.create(type,size)
        new_field=Field.new(type,size)
        if type=="corn" || type=="Corn"
                @@corn_hectares += size
            elsif type =="wheat" || type=="Wheat"
                @@wheat_hectares+=size
        end 
        @@fields << new_field
        return new_field
    end

    def self.harvest
        @@fields.each do |field|
            case field.field_type
                when "corn" || "Corn" then puts "Harvesting #{field.field_size*20} units of food from #{field.field_size} hectare corn field."
                when "wheat" || "Wheat" then puts "Harvesting #{field.field_size*30} units of food from #{field.field_size} hectare wheat field."    
                else puts "No fields to harvest from."
            end
        end
        @@food_harvested+= @@corn_hectares*20 + @@wheat_hectares*30
        puts "The farm has #{@@food_harvested} units harvested food thus far."
    end
    
    def self.display_status
        @@fields.each do |field|
            puts ""
            puts "A #{field.field_type} field is #{field.field_size} hectares."
        end
        puts ""
        puts "The farm has #{@@food_harvested} units of harvested food thus far."
    # display # of hectares of each field, i.e., each instance of field
    end
    
    def self.relax
        if @@corn_hectares > 0 && @@wheat_hectares>0
            puts "A trail shrouded in the morning's fog leads your gaze through your #{@@corn_hectares} hectares of corn. "
            puts "Golden sheaves sway in the cooling breeze caressing your #{@@wheat_hectares} hectares of wheat."
        elsif @@wheat_hectares >0
            puts "Golden sheaves sway in the cooling breeze caressing your #{@@wheat_hectares} hectares of wheat."
        elsif @@corn_hectares > 0
            puts "A trail shrouded in the morning's fog leads your gaze through your #{@@corn_hectares} hectares of corn. "
        else
            puts "This is your land to cultivate - may it sprout forth sustenance and delight your senses."
        end
            # vista strings that incorporate references to all field instances

    end
end