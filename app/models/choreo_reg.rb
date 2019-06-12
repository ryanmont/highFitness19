class ChoreoReg < ApplicationRecord   

  validates_presence_of :song, 
                        :names,
                        :email,
                        :phone
end
