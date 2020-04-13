class Cat < ActiveRecord::Base
    has_many :cat_owners
    has_many :owners,  through: :cat_owners
end