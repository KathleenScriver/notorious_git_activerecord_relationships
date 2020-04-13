class Owner < ActiveRecord::Base
    has_many :cat_owners
    has_many :cats, through: :cat_owners
end