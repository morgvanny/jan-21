class Clinic < ActiveRecord::Base
  has_many :doctors
  has_many :patients, through: :doctors
end