require "test_helper"

class PiCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pi_c = pi_cs(:one)
  end

  test "should get index" do
    get pi_cs_url
    assert_response :success
  end

  test "should get new" do
    get new_pi_c_url
    assert_response :success
  end

  test "should create pi_c" do
    assert_difference("PiC.count") do
      post pi_cs_url, params: { pi_c: { ClientID_id: @pi_c.ClientID_id, ClientName: @pi_c.ClientName, DateTransaction: @pi_c.DateTransaction, StaffID: @pi_c.StaffID, StaffPhone: @pi_c.StaffPhone, Staffname: @pi_c.Staffname } }
    end

    assert_redirected_to pi_c_url(PiC.last)
  end

  test "should show pi_c" do
    get pi_c_url(@pi_c)
    assert_response :success
  end

  test "should get edit" do
    get edit_pi_c_url(@pi_c)
    assert_response :success
  end

  test "should update pi_c" do
    patch pi_c_url(@pi_c), params: { pi_c: { ClientID_id: @pi_c.ClientID_id, ClientName: @pi_c.ClientName, DateTransaction: @pi_c.DateTransaction, StaffID: @pi_c.StaffID, StaffPhone: @pi_c.StaffPhone, Staffname: @pi_c.Staffname } }
    assert_redirected_to pi_c_url(@pi_c)
  end

  test "should destroy pi_c" do
    assert_difference("PiC.count", -1) do
      delete pi_c_url(@pi_c)
    end

    assert_redirected_to pi_cs_url
  end
end
