require 'unirest'
require 'test/unit'

module Test::Unit::Assertions
  def test_get()
  response = Unirest.get "http://restapi.demoqa.com/utilities/weather/city/Pune"

  puts response.code # Status code
  puts response.body # body
  puts response.raw_body # Unparsed body
  assert_contains  'Pune', 'response.raw_body', 'Does not contain Pune in the response'
 end
end

