require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/:user_id/posts'
      expect(response).to have_http_status(:success)
    end

    it 'displays the intended template' do
      get '/users/:user_id/posts'
      expect(response).to render_template('index')
    end

    it 'returns the http sucess' do
      get '/users/:user_id/posts/:id'
      expect(response).to have_http_status(:success)
    end

    it 'displays the intended template' do
      get '/users/:user_id/posts/:id'
      expect(response).to render_template('show')
    end
  end
end
