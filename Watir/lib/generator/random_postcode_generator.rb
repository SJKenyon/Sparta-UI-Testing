require 'httparty'
require 'json'

class RandomPostcodeGenerator
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def postcode
    @single_random_postcode_data = JSON.parse(self.class.get("/random/postcodes").body)["result"]["postcode"].gsub(" ", "")
  end

  def get_response_code
    @single_random_postcode_data["status"]
  end

end
