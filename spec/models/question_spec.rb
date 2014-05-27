require 'spec_helper'

describe Question do
  it '유효한 팩토리를 가지고 있다.' do
  	question = FactoryGirl.build(:question)
  	expect(question).to be_valid
  end
  it '제목이 없으면 유효하지 않다.' do
    question = FactoryGirl.build(:question, title: nil)
  	expect(question).to have(1).errors_on(:title)
 	end
  it '내용이 없으면 유효하지 않다.' do
    question = FactoryGirl.build(:question, body: nil)
  	expect(question).to have(1).errors_on(:body)
 	end
  it 'user_id가 없으면 유효하지 않다.' do
    question = FactoryGirl.build(:question, user_id: nil)
  	expect(question).to have(1).errors_on(:user_id)
  end
end
