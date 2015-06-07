require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "display_user" do
  	user = FactoryGirl.create(:user)
  	sign_in user

	place = FactoryGirl.create(:place)
	comment = FactoryGirl.create(:comment)
		assert_difference 'Comment.count' do
	  	post :create, :place_id => place.id, :comment => {
	        :rating  => '1_star',
	        :message => 'This place is awful'
	    } 	
	  end
  assert_equal 1, user.comments.count
  assert_redirected_to place_path(place)
	end
end
