require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_register'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def bbc_register
    BbcRegister.new
  end

end
