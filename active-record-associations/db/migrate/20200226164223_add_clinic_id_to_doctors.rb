class AddClinicIdToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :clinic_id, :integer
  end
end
