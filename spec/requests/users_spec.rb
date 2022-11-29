require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end

    it 'displays the intended template' do
      get '/users'
      expect(response).to render_template('index')
    end

    it 'contains the right placeholder text' do
      get '/users'
      expect(response.body).to include('index')
    end

    it 'returns the http sucess' do
      get '/users/:id'
      expect(response).to have_http_status(:success)
    end

    it 'displays the intended template' do
      get '/users/:id'
      expect(response).to render_template('show')
    end

    it 'contains the right placeholder text' do
      get '/users/:id'
      expect(response.body).to include('index')
    end
  end
end
