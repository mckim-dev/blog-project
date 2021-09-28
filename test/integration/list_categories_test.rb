require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @category = Category.create("Cat1")
    @category2 = Category.create("Cat2")
  end

  test "should show categories list" do 
    get '/categories'
    assert_select "a[:href=?]", category_path(@category), text: category.name
    assert_select "a[:href=?]", category_path(@category2), text: category2.name
  end

end
