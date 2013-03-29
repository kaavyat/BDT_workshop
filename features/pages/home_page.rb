
module HomePage

  class << self

    def openHomePage
      puts "in openHomePage"
      $SESSION_DATA.mysession.visit HOMEPAGE
    end

    def searchFor search_para
      $SESSION_DATA.mysession.fill_in("gh-ac", :with => search_para)
      $SESSION_DATA.mysession.click_button 'Search'
    end

    def SignIn
      $SESSION_DATA.mysession.click_link 'Sign in'
    end
  end
end

