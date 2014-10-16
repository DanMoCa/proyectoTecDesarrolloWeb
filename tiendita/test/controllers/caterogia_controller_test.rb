require 'test_helper'

class CaterogiaControllerTest < ActionController::TestCase
  setup do
    @caterogium = caterogia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterogia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterogium" do
    assert_difference('Caterogium.count') do
      post :create, caterogium: { descripcion: @caterogium.descripcion, nombre: @caterogium.nombre }
    end

    assert_redirected_to caterogium_path(assigns(:caterogium))
  end

  test "should show caterogium" do
    get :show, id: @caterogium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterogium
    assert_response :success
  end

  test "should update caterogium" do
    patch :update, id: @caterogium, caterogium: { descripcion: @caterogium.descripcion, nombre: @caterogium.nombre }
    assert_redirected_to caterogium_path(assigns(:caterogium))
  end

  test "should destroy caterogium" do
    assert_difference('Caterogium.count', -1) do
      delete :destroy, id: @caterogium
    end

    assert_redirected_to caterogia_path
  end
end
