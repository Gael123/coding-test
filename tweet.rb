require 'json'
class Tweet
  attr_accessor :movies, :reviews, :sentences

  def initialize
    @movies = JSON.parse(File.read(ARGV[0]))
     @reviews = JSON.parse(File.read(ARGV[1]))
     @sentences
   end

  def convert_mjson
    @movies = movies
     @movietitles = []
     @years  = []
     @movies.each {|movie|
      @movietitles << movie['title'].to_s
      @years << '(' + (movie['year']).to_i.to_s + ')' }

       puts @movietitles.inspect
       puts @years.inspect
  end

  def convert_rjson
    @reviews = reviews
    @input = []
    @reviewtitles = []
    reviews.each { |review|
    @input << ':' + review['review'].to_s
      @reviewtitles << review['title'].to_s
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
 @sentences = []
  comments.each_with_index do  |item1,index|
  item2 = @stars[index].to_s
   sentences << item1 + item2
  end
  @sentences.length
  @sentences.include?("year")
  puts @sentences.inspect
end

 private

  def length
    @sentences .each {| sentence|
      sentence.length <= 40
      if sentence.length > 140 && sentence[0].length > 25
        sentence[0].length == 25 && sentence.length <= 40
      else
         sentence[0,39]
      end
      }
  end
end


def include?
@sentences.each_with_index {|item ,index|
if  sentence.include?("year")
puts sentence
else
sentence.delete_at(sentence[index])

end
}
end

tweet = Tweet.new
 puts tweet.convert_mjson
#  tweet.convert_rjson
# # puts tweet.concat_arrays
#  tweet.get_scores
#  tweet.convert_ratings
# # puts tweet.concat_arrays

