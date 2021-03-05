require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Address", with: @student.address
    fill_in "Address2", with: @student.address2
    fill_in "City", with: @student.city
    fill_in "Contact no", with: @student.contact_no
    fill_in "Course", with: @student.course
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Date of joining", with: @student.date_of_joining
    fill_in "Email", with: @student.email
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Middle name", with: @student.middle_name
    fill_in "Passout pursuing", with: @student.passout_pursuing
    fill_in "Pincode", with: @student.pincode
    fill_in "Qualification", with: @student.qualification
    fill_in "State", with: @student.state
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Address", with: @student.address
    fill_in "Address2", with: @student.address2
    fill_in "City", with: @student.city
    fill_in "Contact no", with: @student.contact_no
    fill_in "Course", with: @student.course
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Date of joining", with: @student.date_of_joining
    fill_in "Email", with: @student.email
    fill_in "First name", with: @student.first_name
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Middle name", with: @student.middle_name
    fill_in "Passout pursuing", with: @student.passout_pursuing
    fill_in "Pincode", with: @student.pincode
    fill_in "Qualification", with: @student.qualification
    fill_in "State", with: @student.state
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
