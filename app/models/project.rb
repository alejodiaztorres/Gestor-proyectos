class Project < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    attribute :state, default: "propuesta"
end
