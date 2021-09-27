require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
   
  def setup
    @category = Category.new(name: "RV Camping")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do 
    @category.name = " "
    assert_not @category.valid?
  end

  test "Name should be unique" do 
    @category.save
    @category2 = Category.new(name: "RV Camping")
    assert_not @category2.valid?
  end

  test "name should not be too long" do 
    @category.name = "x" * 31
    assert_not @category.valid?
  end

  test "name should not be too short" do 
    @category.name = "xx"
    assert_not @category.valid?
  end

end
