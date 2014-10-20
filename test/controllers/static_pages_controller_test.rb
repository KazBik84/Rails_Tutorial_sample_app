require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    # symuluje żądanie home
    get :home
    # zakłada odpowiedź servera 200 czyli sukces 
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
