require "application_system_test_case"

class PiCsTest < ApplicationSystemTestCase
  setup do
    @pi_c = pi_cs(:one)
  end

  test "visiting the index" do
    visit pi_cs_url
    assert_selector "h1", text: "Pi cs"
  end

  test "should create pi c" do
    visit pi_cs_url
    click_on "New pi c"

    fill_in "Clientid", with: @pi_c.ClientID_id
    fill_in "Clientname", with: @pi_c.ClientName
    fill_in "Datetransaction", with: @pi_c.DateTransaction
    fill_in "Staffid", with: @pi_c.StaffID
    fill_in "Staffphone", with: @pi_c.StaffPhone
    fill_in "Staffname", with: @pi_c.Staffname
    click_on "Create Pi c"

    assert_text "Pi c was successfully created"
    click_on "Back"
  end

  test "should update Pi c" do
    visit pi_c_url(@pi_c)
    click_on "Edit this pi c", match: :first

    fill_in "Clientid", with: @pi_c.ClientID_id
    fill_in "Clientname", with: @pi_c.ClientName
    fill_in "Datetransaction", with: @pi_c.DateTransaction
    fill_in "Staffid", with: @pi_c.StaffID
    fill_in "Staffphone", with: @pi_c.StaffPhone
    fill_in "Staffname", with: @pi_c.Staffname
    click_on "Update Pi c"

    assert_text "Pi c was successfully updated"
    click_on "Back"
  end

  test "should destroy Pi c" do
    visit pi_c_url(@pi_c)
    click_on "Destroy this pi c", match: :first

    assert_text "Pi c was successfully destroyed"
  end
end
