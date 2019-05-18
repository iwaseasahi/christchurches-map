RSpec.shared_context 'user_authorized' do
  let(:current_user) { create(:user) }
  before { sign_in current_user }
end