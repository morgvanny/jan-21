class Patient < ActiveRecord::Base
  has_many :prescriptions
  has_many :appointments
  has_many :medications, through: :prescriptions
  has_many :surgeries, through: :appointments
  has_many :doctors, through: :appointments
  has_many :clinics, through: :doctors
end