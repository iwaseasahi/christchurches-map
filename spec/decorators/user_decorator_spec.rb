# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserDecorator do
  let(:user) { User.new.extend UserDecorator }
  subject { user }
  it { should be_a User }

  describe '#full_name' do
    specify do
      user = create(:user)
      decorated_user = ActiveDecorator::Decorator.instance.decorate(user)

      expect(decorated_user.full_name).to eq "#{user.last_name} #{user.first_name}"
    end
  end
end
