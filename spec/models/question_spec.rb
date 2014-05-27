require 'spec_helper'

describe Question do
  it '유효한 팩토리를 가지고 있다.' do
  	question = build(:question)
  	expect(question).to be_valid
  end
  it '제목이 없으면 유효하지 않다.' do
    question = build(:question, title: nil)
  	expect(question).to have(1).errors_on(:title)
 	end
  it '내용이 없으면 유효하지 않다.' do
    question = build(:question, body: nil)
  	expect(question).to have(1).errors_on(:body)
 	end
  it 'user가 없으면 유효하지 않다.' do
    question = build(:question, user: nil)
  	expect(question).to have(1).errors_on(:user)
  end
end
