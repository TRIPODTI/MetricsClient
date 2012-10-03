require 'test_helper'

class CalificadorControllerTest < ActionController::TestCase
  test "should get calificar" do
    get :calificar
    assert_response :success
  end

  test "should get editar" do
    get :editar
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
