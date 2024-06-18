# app/models/company.rb

class Company < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :quotes, dependent: :destroy
  
    validates :name, presence: true
  end