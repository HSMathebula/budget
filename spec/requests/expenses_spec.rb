require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'happen', password: 'password', email: 'mathebulahappen@gmail.com')
    @group = @user.groups.create(name: 'trip', icon: 'https://google.com')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get group_expenses_path(@group)
      expect(response).to have_http_status(:success)
    end
  end
end
