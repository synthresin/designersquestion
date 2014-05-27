require 'spec_helper'

describe User do
	it '유효한 팩토리를 가지고 있다.' do
		expect(FactoryGirl.build(:user)).to be_valid
	end
  it '중복된 이메일 주소가 있으면 유효하지 않다.'
  it '이메일 주소가 없으면 유효하지 않다.'
  it '프로필이 없으면 유효하지 않다'
  it '유저의 프로필은 유저가 삭제될때 파괴된다.'
end
