<<<<<<< HEAD
# require 'test_helper'
#
=======
require 'test_helper'

>>>>>>> 09342895df4dff370af83831b32972cf901bda4f
# class ProjectsControllerTest < ActionController::TestCase
#   test "index returns success" do
#     get :index
#     assert_response :success
#   end
#
#   test "show returns success" do
<<<<<<< HEAD
#     project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now)
=======
#     owner = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now, owner: owner)
>>>>>>> 09342895df4dff370af83831b32972cf901bda4f
#     get :show, params: {id: project.id}
#     assert_response :success
#   end
#
#   test "new returns success when logged in" do
#     user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     login_user(user = user)
#     get :new
#     assert_response :success
#   end
#
#   test "new redirects to login when logged out" do
#     logout_user
#     get :new
#     assert_redirected_to login_url
#   end
#
#   test "create redirects to login when logged out" do
#     project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now)
#     logout_user
#     post :create, params: { project: project.as_json }
#     assert_redirected_to login_url
#   end
#
#   test "create renders new when logged in and invalid" do
#     user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     login_user(user = user)
#     post :create, params: { project: {title: 'test'} } # missing required params
#     assert_template :new
#   end
#
#   test "create redirects to projects when logged in and valid" do
<<<<<<< HEAD
#     user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now)
=======
#     owner = User.create(email: "pettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
#     project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now, owner: owner)
>>>>>>> 09342895df4dff370af83831b32972cf901bda4f
#     login_user(user = user)
#     post :create, params: { project: project.as_json }
#     assert_redirected_to projects_url
#   end
# end
