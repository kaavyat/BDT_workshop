include Test::Unit::Assertions
module Login
  class << self
    def login_as_register_user (username, password)
      HomePage.SignIn
      Login.enter_details_and_submit(username, password)
    end

    def verifyOnLoginPage
      assert_equal SignInPage.getLoginPageHeader.text.include?(WELCOME_MESSAGE_SIGNIN_PAGE), true
    end
  end
end
