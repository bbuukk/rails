require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns a new user' do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      let(:valid_params) do
        { user: { email: 'test@example.com', password: 'password', password_confirmation: 'password' } }
      end

      before do
        post :create, params: valid_params
      end

      it 'creates a new user' do
        expect(User.count).to eq(1)
      end

      it 'redirects to the root path after signup' do
        expect(response).to redirect_to(root_path)
      end

      it 'sets the session user id' do
        expect(session[:user_id]).to eq(User.last.id)
      end
    end

    context 'with invalid attributes' do
      let(:invalid_params) do
        { user: { email: 'not_email', password: 'short', password_confirmation: 'short' } }
      end

      it 'does not create a new user' do
        expect { post :create, params: invalid_params }.not_to change(User, :count).by(1)
      end

      it 're-renders the new template' do
        post :create, params: invalid_params

        expect(response).to render_template(:new)
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:user) { User.create!(email: 'test@example.com', password: 'password', password_confirmation: 'password') }

    it 'destroys the user' do
      expect { delete :destroy, params: { id: user.id } }.to change(User, :count).by(-1)
    end

    it 'redirects to the root path after deletion' do
      delete :destroy, params: { id: user.id }
      expect(response).to redirect_to(root_path)
    end
  end
end
