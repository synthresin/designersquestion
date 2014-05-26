require 'spec_helper'

describe Question do
  it '제목, 내용, user_id가 있으면 유효하다.' do
  	question = Question.new(
  		title:'제목',
  		body:'내용',
  		user_id: 1)
  	expect(question).to be_valid
  end
  it '제목이 없으면 유효하지 않다.' do
  	expect(Question.new(title: nil)).to have(1).errors_on(:title)
 	end
  it '내용이 없으면 유효하지 않다.'  do
  	expect(Question.new(body: nil)).to have(1).errors_on(:title)
 	end
  it 'user_id가 없으면 유효하지 않다.' do
  	expect(Question.new(user_id: nil)).to have(1).errors_on(:title)
  end
end
