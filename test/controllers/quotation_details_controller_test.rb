require "test_helper"

class QuotationDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotation_detail = quotation_details(:one)
  end

  test "should get index" do
    get quotation_details_url
    assert_response :success
  end

  test "should get new" do
    get new_quotation_detail_url
    assert_response :success
  end

  test "should create quotation_detail" do
    assert_difference("QuotationDetail.count") do
      post quotation_details_url, params: { quotation_detail: { discount: @quotation_detail.discount, good_id: @quotation_detail.good_id, leadTime: @quotation_detail.leadTime, price: @quotation_detail.price, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, sellingUnit: @quotation_detail.sellingUnit } }
    end

    assert_redirected_to quotation_detail_url(QuotationDetail.last)
  end

  test "should show quotation_detail" do
    get quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should update quotation_detail" do
    patch quotation_detail_url(@quotation_detail), params: { quotation_detail: { discount: @quotation_detail.discount, good_id: @quotation_detail.good_id, leadTime: @quotation_detail.leadTime, price: @quotation_detail.price, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, sellingUnit: @quotation_detail.sellingUnit } }
    assert_redirected_to quotation_detail_url(@quotation_detail)
  end

  test "should destroy quotation_detail" do
    assert_difference("QuotationDetail.count", -1) do
      delete quotation_detail_url(@quotation_detail)
    end

    assert_redirected_to quotation_details_url
  end
end
