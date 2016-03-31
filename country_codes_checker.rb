require './lib/country_code'

country_code = CountryCode.new('country-codes.json')
country_code.get_result
