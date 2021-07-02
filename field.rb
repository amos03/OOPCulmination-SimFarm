class Field
@@fields=[]
@@food_harvested=0


    def initialize(type,size)
        @field_type=type
        @field_size=size
    end

    def self.create(type,size)
        new_field=Field.new(type,size)
        @@fields << new_field
        return new_field
    end

    def self.harvest
    end
    
    def self.display_status
    # display # of hectares of each field, i.e., each instance of field
    end
    
    def self.relax
        # vista strings that incorporate references to all field instances
    end
    