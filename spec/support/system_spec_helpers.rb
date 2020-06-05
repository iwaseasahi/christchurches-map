module SystemSpecHelpers
  def sign_in
    @user = create(:user)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'ログイン'
    end

    fill_in 'メールアドレス', with: @user.email
    fill_in 'パスワード', with: @user.password

    click_button 'ログイン'
  end
end
