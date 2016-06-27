require 'test_helper'

class AdminishTest < ActiveSupport::TestCase
  test "can create model" do
    post_model = Adminish::Model.new(Post)
    assert post_model
  end
  test "can create admin" do
    Adminish::Admin.new([Post, Category]).to_json
  end
end
