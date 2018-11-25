require 'unirest'
require 'test/unit'

module Test::Unit::Assertions
  def test_delete()
    response = Unirest.delete "https://reqres.in/api/users/2"

    puts response.code # Status code
    puts response.body # body
    puts response.raw_body # Unparsed body
    assert_match  '204', 'response.code', 'Does not contain status code 201'

  end
end