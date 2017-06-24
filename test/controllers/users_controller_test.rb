require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "new returns a success" do
    get :new
    assert_response :success
  end

  test "create adds a new user" do
    user = User.new(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    assert_difference('User.count') do
      post :create, params: {user: {email: user.email, password: user.password, password_confirmation: user.password_confirmation}}
    end
  end

  test "create redirects to projects page on success" do
    user = User.new(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    post :create, params: {user: {email: user.email, password: user.password, password_confirmation: user.password_confirmation}}
    assert_redirected_to projects_url
  end

  test "create renders new on failure" do
    user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    user2 = User.new(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    post :create, params: {user: {email: user2.email, password: user2.password, password_confirmation: user2.password_confirmation}}
    assert_template :new
  end

  test "show renders current user profile page" do
    user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    session[:user_id] = user.id
    get :show, params: {id: "foo" }
    assert_response :success
  end
end
