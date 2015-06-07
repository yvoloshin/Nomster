require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "display_user" do
  	user = FactoryGirl.create(:user)
  	sign_in user

	place = FactoryGirl.create(:place)
	place.inspect
	comment = FactoryGirl.create(:comment)
	comment.inspect
  	post :create, :place_id => place.id, :comment => comment
  	assert_response :success
  	assert_redirected_to place_path(place)
    end
end
