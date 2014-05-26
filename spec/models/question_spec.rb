require 'spec_helper'

describe Question do
  it '제목, 내용, user_id가 있으면 유효하다.' do
  	question = Question.new(
  		title:'제목',
  		body:'내용',
  		user_id: 1)
  	expect(question).to be_valid
  end
  it '제목이 없으면 유효하지 않다.'
  it '내용이 없으면 유효하지 않다.'
  it 'user_id가 없으면 유효하지 않다.'
end
