require 'faker'

class RandomFormValues
  include Faker

  def generate_first_name
    @first_name = Faker::BackToTheFuture.character
  end

  def generate_last_name
    @last_name = Faker::DrWho.character
  end

  def generate_phone_number
    @phone_num = Faker::PhoneNumber.phone_number
  end

  def generate_username
    @username = Faker::Internet.user_name
  end

  def generate_invalid_username
    @invalid_username = Faker::Zelda.character
  end

  def generate_password
    @password = Faker::Internet.password
  end

  def generate_email_address
    @email_address = Faker::Internet.email
  end


end #end of class
