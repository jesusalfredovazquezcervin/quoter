require "application_system_test_case"

class ConsultantsTest < ApplicationSystemTestCase
  setup do
    @consultant = consultants(:one)
  end

  test "visiting the index" do
    visit consultants_url
    assert_selector "h1", text: "Consultants"
  end

  test "should create consultant" do
    visit consultants_url
    click_on "New consultant"

    fill_in "Code", with: @consultant.code
    fill_in "Email", with: @consultant.email
    fill_in "Fullname", with: @consultant.fullName
    fill_in "Phonenumber", with: @consultant.phoneNumber
    fill_in "Role", with: @consultant.role
    click_on "Create Consultant"

    assert_text "Consultant was successfully created"
    click_on "Back"
  end

  test "should update Consultant" do
    visit consultant_url(@consultant)
    click_on "Edit this consultant", match: :first

    fill_in "Code", with: @consultant.code
    fill_in "Email", with: @consultant.email
    fill_in "Fullname", with: @consultant.fullName
    fill_in "Phonenumber", with: @consultant.phoneNumber
    fill_in "Role", with: @consultant.role
    click_on "Update Consultant"

    assert_text "Consultant was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultant" do
    visit consultant_url(@consultant)
    click_on "Destroy this consultant", match: :first

    assert_text "Consultant was successfully destroyed"
  end
end
