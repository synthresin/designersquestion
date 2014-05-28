require 'spec_helper'

describe User do
	it '유효한 팩토리를 가지고 있다.' do
		expect(FactoryGirl.build(:user)).to be_valid
	end
  it '중복된 이메일 주소가 있으면 유효하지 않다.' do
  	create(:user, email: 'synthresin@me.com')
  	expect(build(:user, email: 'synthresin@me.com')).not_to be_valid
  end
  it '이메일 주소가 없으면 유효하지 않다.' do
  	expect(build(:user, email: nil)).not_to be_valid
  end
  it '프로필이 없으면 유효하지 않다' do
  	expect(build(:user, profile: nil)).not_to be_valid
  end
  it '유저의 프로필은 유저가 삭제될때 파괴된다.' do
  	user = create(:user)
  	
  	expect{
      user.destroy
    }.to change(Profile ,:count).by(-1)
  end
end
