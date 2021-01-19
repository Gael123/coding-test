
require 'json'
class Tweet
  attr_accessor :movies, :reviews

  def initialize
    @movies = JSON.parse(File.read(ARGV[0]))
     @reviews = JSON.parse(File.read(ARGV[1]))
     @stars = []
     @ratings = []
   end

  def convert_mjson
   @movies = movies
     @movietitles = []
     @years    = []
     @movies.each {|movie|
      @movietitles << movie['title']
      @years << '(' + (movie['year']).to_i.to_s + ')' }

       # puts @movietitles.inspect
       # puts @years.inspect
  end

def convert_rjson
  @reviews = reviews
  @input = []
  @reviewtitles = []
  reviews.each { |review|
   @input << ':' + review['review']
     @reviewtitles << review['title']
  }
    # puts @input.inspect
    # puts @reviewtitles.inspect
end

 def get_scores
  @reviews = reviews
   scores = []
  @reviews.each { |review|
    scores << review['score'].to_i
  }
   @ratings = []
  scores.each {|score|
    @ratings << (score / 20.to_f).round()

               }
def convert_ratings
full_star = '★'
  @stars = []
  @ratings.each { |num|

      if num.even? || num == 5
        @stars << full_star * num
      else
        num.odd?
        @stars << (full_star * (num-1) + '1/2')
      end
      if num == 0
        @stars << '1/2'
      end
    }
   @stars.delete_at(4)
   @stars.flatten
  # puts @stars.inspect
end

# def convert_rating
#  full_star = '★'
#   @stars = []
#   @ratings .each { |num|

#       if num == 2|| 4 || 5
#         @stars << full_star * num
#       else
#         @stars << (full_star * '1/2')
#       end
#     }
#    puts @stars.inspect
end

def concat_arrays
  results = []

  @movietitles.each_with_index do |item1,index|
    item2 = @years[index]
    results << item1 + item2

  end
  results.insert(2, @reviewtitles[2])
   # puts results
  comments = []
  results.each_with_index do |item1,index |
    item2 = @input[index]
    comments << item1 + item2
  end
 # puts comments

comments

 sentences = []
  comments.each_with_index do  |item1,index|
   item2 = @stars[index].to_s
   sentences << item1 + item2

  end

 puts sentences.inspect
 end




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
 tweet.convert_mjson
 tweet.convert_rjson
# puts tweet.concat_arrays
 tweet.get_scores
 tweet.convert_ratings
puts tweet.concat_arrays



