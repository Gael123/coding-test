require_relative 'tweet'
require "test/unit"

# require 'test/unit'
class TestTweet < Test::Unit::TestCase
 #    def test_tweet
 #      # tweet = tweet.new
 #      assert_equal(["(1977)", "(2015)", "(1964)", "(1959)"],Tweet.new.convert_mjson
 # )
 #    end


    def test_length
     assert_equal( "Star Wars The Force Awake (2015): A long time ago in a galaxy far far away someone made the best sci-fi film of all time. Then some chap ★★½",Tweet.new.concat_arrays)
    end
end


