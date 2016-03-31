require 'json'

class CountryCode
  def initialize(file_path)
    @file = File.read(file_path)
  end

  def parsed_json
     JSON.parse(@file)
  end

  def get_result
    parsed_json.each do |country|
      country_code = country['ISO3166-1-Alpha-3']
      if has_b? country_code
        if has_n? country_code
          puts "#{country['name']}: BishNish, #{country_code}"
        else
          puts "#{country['name']}: Bish, #{country_code}"
        end
      elsif has_n? country_code
        puts "#{country['name']}: Nish, #{country_code}"
      end
    end; nil
  end

  private

  def has_b?(country_code)
    country_code.include? "B"
  end

  def has_n?(country_code)
    country_code.include? "N"
  end
end
