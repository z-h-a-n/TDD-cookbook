require 'rails_helper'

	describe Post do

		it "must have a title" do
			post = Post.new
			expect(post.valid?).to eq false
			
		end

		it "it must have a content" do
			post = Post.new(title: 'lamb stew')
			expect(post.valid?).to eq false
		end


	context 'no comments' do
		it "should return a message saying no comments" do
			lamb_stew = Post.new(title: 'lamb stew', content: 'delicous')
			expect(lamb_stew.display_comments).to eq 'No comments yet'
		end
	end

	context 'one plus comments' do
		it 'should return the comments' do
			lamb_stew = Post.new(title: 'lamb stew', content: 'delicous')
			lamb_stew.comments.new(remark: 'meh')
			lamb_stew.comments.new(remark: 'great')
			expect(lamb_stew.display_comments).to eq ['meh', 'great']
		end
	end

end
