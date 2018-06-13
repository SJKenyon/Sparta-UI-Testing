require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq "http://demoqa.com/registration/"
    end

    it 'should accept a first name' do
      # @driver.set_first_name_field("Sophie")
      expect(@driver.first_name_field_displayed).to be true
    end

    it 'should accept a last name' do
      # @driver.set_last_name_field("Kenyon")
      expect(@driver.last_name_field_displayed).to be true
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option("single")
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option("reading")
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq("Afghanistan")
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select("United Kingdom")
      expect(@driver.get_selected_country).not_to eq("Afghanistan")
    end

    it 'should accept a new DOB' do
      @driver.dob_month_list_select(28)
      @driver.dob_day_list_select(2)
      @driver.dob_year_list_select(1997)
      expect(@driver.get_DOB_month).not_to eq("Month")
      expect(@driver.get_DOB_day).not_to eq("Day")
      expect(@driver.get_DOB_year).not_to eq("Year")
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field("07253647581")
      expect(@driver.get_phone_number_field_value).to be_kind_of(String)
    end

    it 'should accept a username' do
      @driver.set_user_name_field("username")
      expect(@driver.get_user_name_field_value).to be_kind_of(String)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field("Hello, this is dog")
      expect(@driver.get_about_yourself_value).to be_kind_of(String)
    end

    it 'should accept a password' do
      @driver.set_password_field("password")
      expect(@driver.get_password_value).to be_kind_of(String)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field("password")
      expect(@driver.get_confirmation_password_value).to be_kind_of(String)
    end

  end

end
