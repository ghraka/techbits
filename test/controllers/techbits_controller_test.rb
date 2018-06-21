require 'test_helper'

class TechbitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @techbit = techbits(:one)
  end

  test "should get index" do
    get techbits_url, as: :json
    assert_response :success
  end

  test "should create techbit" do
    assert_difference('Techbit.count') do
      post techbits_url, params: { techbit: { active: @techbit.active, description: @techbit.description, title: @techbit.title, url: @techbit.url } }, as: :json
    end

    assert_response 201
  end

  test "should show techbit" do
    get techbit_url(@techbit), as: :json
    assert_response :success
  end

  test "should update techbit" do
    patch techbit_url(@techbit), params: { techbit: { active: @techbit.active, description: @techbit.description, title: @techbit.title, url: @techbit.url } }, as: :json
    assert_response 200
  end

  test "should destroy techbit" do
    assert_difference('Techbit.count', -1) do
      delete techbit_url(@techbit), as: :json
    end

    assert_response 204
  end
end
