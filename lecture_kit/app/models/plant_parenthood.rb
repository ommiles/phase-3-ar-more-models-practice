class PlantParenthood < ActiveRecord::Base

    # lifecycle method
    # triggered whenever ther is an update or an instance is created
    # before the save is triggered, AR will look for the cap_affection method
    before_save :cap_affection
    
    belongs_to :person
    belongs_to :plant

    # def people
    #     # before ActiveRecord
    #     PlantParent.all.select{|person| person == self.people}
    #     # AR:
    #     id_num = self.person_id
    #     PlantParent.find(id_num)
    # end

    def cap_affection
        self.affection = 11_000 if self.affection > 11_000
        # introduces a cap on the affection value at 11_000
        # if affection is higher than 11_000, change it
    end
end