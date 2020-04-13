class CatOwner < ActiveRecord::Base
    belongs_to :owner
    belongs_to :cat
end