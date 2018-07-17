require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'


#This is the superclass for the whole site
class BbcSite
  def bbc_homepage
    BbcHomepage.new
  end

  def sign_in_page
    BbcSignInPage.new
  end

end #end of superclass
