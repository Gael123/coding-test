
require 'json'
class Tweet
  attr_accessor :movies, :reviews

  def initialize
     @movies = JSON.parse(File.read(ARGV[0]))
     @reviews = JSON.parse(File.read(ARGV[1]))


   end

  def convert_mjson

     @movies = movies
     @movietitles = []
     @years    = []
     movies.each {|movie|
      @movietitles << movie['title']
      @years << '(' + (movie['year']).to_i.to_s + ')' }

       puts @movietitles.inspect
       puts @years.inspect
  end

def convert_rjson
  @reviews = reviews
  @input = []
  @reviewtitles = []
  reviews.each { |review|
     @input << ':' + review['review']
     @reviewtitles << review['title']
  }
    puts @input.inspect
    puts @reviewtitles.inspect
end

 def get_scores
  @reviews = reviews
   scores = []
  reviews.each { |review|
    scores << review['score'].to_i
  }
   @ratings = []
  scores.each {|score|
    @ratings << (score / 20.to_f).round()
               }


  puts @ratings.inspect
end

# def convert_rating
#  full_star = '★'
#   @stars = []
#   @ratings.each { |num|

#       if num == 2|| 4 || 5
#         @stars << full_star * num
#       else
#         @stars << (full_star * '1/2')
#       end
#     }
#    puts @stars.inspect
# end

def concat_arrays
  results = []

  @movietitles.each_with_index do |item1,index|
    item2 = @years[index]
    results << item1 + item2
  end
   puts results
  # comments = []
  # results.each_with_index do |item1,index |
  #   item2 = stars[index]
  #   tweet << item1 + item2
  # end

 end










#   movies = JSON.parse(File.read(ARGV[0]))
#   reviews = JSON.parse(File.read(ARGV[1]))
#   comment = []
#   movies.each { |movie| comment << movie['title'] + movie['year'].to_i.to_s}
#   input = []
#   reviews.each { |review|
#     input << ' :' + review['review']
#   }

#   scores = []
#   reviews.each { |review|
#     scores << review['score'].to_i
#   }

#   ratings = []
#   scores.each {|score|
#     ratings << (score / 20.to_f).ceil
#                }
#   full_star = '★'
#   stars = []
#   ratings .each { |num|
#       if num == 2 || 4 || 5
#         stars << full_star * num
#       else
#         stars << full_star * (num- 1) + '1/2'
#       end
#     }
#   stars.delete_at(2)
#  # puts stars.inspect
#   input.delete_at(2)
#   results = []
#   comment.each_with_index do |item1,index|
#     item2 = input[index]
#     results << item1 + item2
#   end

#   tweet = []
#   results.each_with_index do |item1,index |
#     item2 = stars[index]
#     tweet << item1 + item2
#   end
#   tweet.each { |string|
#         string.length <= 140
#        if tweet.length > 140 && movie['title'].length > 25
#          movie['title'].length == 25
#        else
#          tweet[0, 39]
#        end
#       }

#   puts tweet.to_json

 private

  def length(tweet)
    tweet.each { |string|
        string.length <= 140
       if tweet.length > 140 && movie['title'].length > 25
         movie['title'].length == 25
       else
         tweet[0, 39]
       end
      }
  end
end






tweet = Tweet.new
puts tweet.convert_mjson
puts tweet.convert_rjson
puts tweet.concat_arrays
puts tweet.convert_rating
# tweet <<comment
