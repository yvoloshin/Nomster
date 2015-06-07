require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "humanized_rating" do  	    	 
     user = FactoryGirl.create(:user)
     puts user.inspect
     place = FactoryGirl.create(:place)
     puts user.inspect
     comment = FactoryGirl.create(:comment)
     puts user.inspect
     expected = 'one star'
     actual = comment.humanized_rating
     assert_equal expected, actual
   end
end
