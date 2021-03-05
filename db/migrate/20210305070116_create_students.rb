class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.date :date_of_birth
      t.string :contact_no
      t.string :qualification
      t.string :passout_pursuing
      t.date :date_of_joining
      t.string :course
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :pincode

      t.timestamps
    end
  end
end
