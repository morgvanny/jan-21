class RemoveSurgeryIdFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :surgery_id, :integer
    add_column :surgeries, :appointment_id, :integer, index: { unique: true}
  end
end
