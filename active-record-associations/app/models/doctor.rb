class Doctor < ActiveRecord::Base
  has_many :appointments
  belongs_to :clinic
  has_many :prescriptions
  has_many :patients, through: :appointments
end