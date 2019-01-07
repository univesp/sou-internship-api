require 'test_helper'

class Api::V1::InternshipDocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_internship_document_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_internship_document_update_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_internship_document_new_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_internship_document_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_internship_document_show_url
    assert_response :success
  end

end
