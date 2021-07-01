class Field
@@fields=[]
@@food_harvested=0


    def initialize(type,size)
        @field_type=type
        @field_size=size
        @@fields << self
    end

    def self.harvest
    end
    
    def self.display_status
    # display # of hectares of each field, i.e., each instance of field
    end
    
    def self.relax
        # vista strings that incorporate references to all field instances
    end
    