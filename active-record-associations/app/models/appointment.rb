class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  has_one :surgery
end