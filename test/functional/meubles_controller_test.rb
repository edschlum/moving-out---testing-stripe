require 'test_helper'

class MeublesControllerTest < ActionController::TestCase
  setup do
    @meuble = meubles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meubles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meuble" do
    assert_difference('Meuble.count') do
      post :create, meuble: { description: @meuble.description, link: @meuble.link, name: @meuble.name, price: @meuble.price }
    end

    assert_redirected_to meuble_path(assigns(:meuble))
  end

  test "should show meuble" do
    get :show, id: @meuble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meuble
    assert_response :success
  end

  test "should update meuble" do
    put :update, id: @meuble, meuble: { description: @meuble.description, link: @meuble.link, name: @meuble.name, price: @meuble.price }
    assert_redirected_to meuble_path(assigns(:meuble))
  end

  test "should destroy meuble" do
    assert_difference('Meuble.count', -1) do
      delete :destroy, id: @meuble
    end

    assert_redirected_to meubles_path
  end
end
