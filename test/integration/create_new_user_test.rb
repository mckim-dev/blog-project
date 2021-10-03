require "test_helper"

class CreateNewUserTest < ActionDispatch::IntegrationTest

  test "signup new user" do
    get "/signup"
    assert_response :success
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { username: "Iamnew", email: "iamnew@student.com", password: "studentPW"} }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Iamnew", response.body
  end

  test "signup new user and reject invalid username" do
    get "/signup"
    assert_response :success
    assert_no_difference 'User.count' do
      post users_path, params: { user: { username: "ab", email: "iamnew@student.com", password: "studentPW"} }
    end
    assert_match "Username is too short", response.body
  end

  test "signup new user and reject for email address not being unique" do
    User.create(username: "Iamnew", email: "iamnew@student.com", password: "studentPW")
    get "/signup"
    assert_response :success
    assert_no_difference 'User.count' do
      post users_path, params: { user: { username: "Iamnew", email: "iamnew@student.com", password: "studentPW"} }
    end
    assert_match "been taken", response.body
    assert_select 'h4.alert-heading'
  end

end
