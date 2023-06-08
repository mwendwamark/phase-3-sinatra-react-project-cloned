class Blog < ActiveRecord::Base 
    belongs_to :estate 
    belongs_to :owner
end