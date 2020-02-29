# frozen_string_literal: true

class Medication < ActiveRecord::Base
  has_many :prescriptions
end
