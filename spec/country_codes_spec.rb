require './lib/country_code'
require 'rspec'

RSpec.describe CountryCode do
  it "returns 'Bish'" do
    country_code = CountryCode.new('fixtures/country_code_bish.json')
    expect { country_code.get_result }.to output("Sample Bish: Bish, SMB\n").to_stdout
  end

  it "returns 'Nish'" do
    country_code = CountryCode.new('fixtures/country_code_nish.json')
    expect { country_code.get_result }.to output("Sample Nish: Nish, SMN\n").to_stdout
  end

  it "returns 'BishNish'" do
    country_code = CountryCode.new('fixtures/country_code_bishnish.json')
    expect { country_code.get_result }.to output("Sample BishNish: BishNish, SBN\n").to_stdout
  end
end
