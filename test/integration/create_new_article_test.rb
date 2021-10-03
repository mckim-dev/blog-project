require "test_helper"

class CreateNewArticleTest < ActionDispatch::IntegrationTest
  
  setup do
    @user = User.create(username: "iamuser", email: "iamuser@email.com", password: "411", admin: false)
    @category = Category.create(name: "Tent Camping")
  end

  test "get article form and create new article" do
    login_as(@user) 
    get "/articles/new"
    assert_response :success 
    assert_difference "Article.count", 1 do
      post articles_path, params: { article: { title: "Sleeps Six - Uncomfortably", description: "While it states it can sleep six, I believe it meant six small children. Do not buy this tent if you are more than 4 feet tall!", category: "Tent Camping" } }
      assert_response :redirect 
    end
    follow_redirect!
    assert_response :success
    assert_match "Sleeps Six", response.body 
  end

end
