require 'unirest'
require 'test/unit'

module Test::Unit::Assertions
  def test_post()

  response = Unirest.post "https://reqres.in/api/register",
                          parameters:{ :email => "kushan@lk.lk", :password => "kushan" }

  puts response.code # Status code
  puts response.body # body
  puts response.raw_body # Unparsed body
  assert_match  '201', 'response.code', 'Does not contain status code 201'

  end
  end