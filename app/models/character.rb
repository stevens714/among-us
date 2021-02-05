class Character < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :skills
    validates_presence_of :name, :color
end