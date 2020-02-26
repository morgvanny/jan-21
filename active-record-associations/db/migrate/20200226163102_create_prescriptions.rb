class CreatePrescriptions < ActiveRecord::Migration[5.2]
    def change
    create_table :prescriptions do |t|
      t.integer :doctor_id
      t.integer :medication_id
      t.integer :patient_id
    end
  end
end
