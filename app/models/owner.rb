class Owner < ActiveRecord::Base 
    has_many :blogs 
    has_many :estates, through: :blogs
end