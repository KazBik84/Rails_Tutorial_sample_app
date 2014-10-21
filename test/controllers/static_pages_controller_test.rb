require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    # symuluje żądanie home
    get :home
    # zakłada odpowiedź servera 200 czyli sukces 
    assert_response :success
    # assert_select szuka tagu "title" o zawartości "Home | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"    
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"    
  end

end
