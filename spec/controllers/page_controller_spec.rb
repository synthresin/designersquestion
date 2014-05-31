require 'spec_helper'

describe PageController do
	describe 'GET #index' do
		it "모든 question 을 populate 한다.." do
			question1 = create(:question, title: 'q1')
      question2 = create(:question, title: 'q2')

      get :index

      expect(assigns(:questions)).to match_array([question1, question2])
		end

		it ":index 템플릿을 렌더 한다." do
			get :index
			expect(response).to render_template :index
		end
	end

	describe 'GET #about'	
end
