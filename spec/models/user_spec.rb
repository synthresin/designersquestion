require 'spec_helper'

describe User do
  it '중복된 이메일 주소가 있으면 유효하지 않다.'
  it '이메일 주소가 없으면 유효하지 않다.'
  it '프로필이 없으면 유효하지 않다'
end
