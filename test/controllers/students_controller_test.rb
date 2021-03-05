require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address: @student.address, address2: @student.address2, city: @student.city, contact_no: @student.contact_no, course: @student.course, date_of_birth: @student.date_of_birth, date_of_joining: @student.date_of_joining, email: @student.email, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, middle_name: @student.middle_name, passout_pursuing: @student.passout_pursuing, pincode: @student.pincode, qualification: @student.qualification, state: @student.state } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address: @student.address, address2: @student.address2, city: @student.city, contact_no: @student.contact_no, course: @student.course, date_of_birth: @student.date_of_birth, date_of_joining: @student.date_of_joining, email: @student.email, first_name: @student.first_name, gender: @student.gender, last_name: @student.last_name, middle_name: @student.middle_name, passout_pursuing: @student.passout_pursuing, pincode: @student.pincode, qualification: @student.qualification, state: @student.state } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
