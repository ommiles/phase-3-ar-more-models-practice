class PlantParenthood < ActiveRecord::Base

     belongs_to :person
     belongs_to :plant

    # def people
    #     # before ActiveRecord
    #     PlantParent.all.select{|person| person == self.people}
    #     # AR:
    #     id_num = self.person_id
    #     PlantParent.find(id_num)
    # end
end