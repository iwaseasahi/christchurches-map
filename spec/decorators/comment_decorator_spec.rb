# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentDecorator do
  let(:comment) { Comment.new.extend CommentDecorator }
  subject { comment }
  it { should be_a Comment }

  describe '#time' do
    specify do
      current_time = Time.current
      comment = create(:comment, created_at: current_time)
      decorated_comment = ActiveDecorator::Decorator.instance.decorate(comment)

      expect(decorated_comment.time).to eq current_time.strftime('%Y-%m-%d %H:%M')
    end
  end
end
