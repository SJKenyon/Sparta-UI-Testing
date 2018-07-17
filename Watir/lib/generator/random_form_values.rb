require 'faker'

class RandomFormValues
  include Faker

  def first_name
    @first_name = Faker::BackToTheFuture.character
  end

  def last_name
    @last_name = Faker::DrWho.character
  end

  def username
    @username = Faker::Internet.user_name
  end

  def password
    @password = Faker::Internet.password
  end

  def email
    @email_address = Faker::Internet.email
  end


end
