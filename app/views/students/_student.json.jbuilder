json.extract! student, :id, :first_name, :middle_name, :last_name, :email, :gender, :date_of_birth, :contact_no, :qualification, :passout_pursuing, :date_of_joining, :course, :address, :address2, :city, :state, :pincode, :created_at, :updated_at
json.url student_url(student, format: :json)
