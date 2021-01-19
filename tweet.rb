class Tweets
  require 'json'
  movies = JSON.parse(File.read(ARGV[0]))
  reviews = JSON.parse(File.read(ARGV[1]))
  comment = []
  movies.each { |movie| comment << movie['title'] + movie['year'].to_i.to_s}
  input = []
  reviews.each { |review|
    input << ' :' + review['review']
  }

  scores = []
  reviews.each { |review|
    scores << review['score'].to_i
  }

  ratings = []
  scores.each {|score|
    ratings << (score / 20.to_f).ceil
               }
  full_star = '★'
  stars = []
  ratings .each { |num|
      if num == 2 || 4 || 5
        stars << full_star * num
      else
        stars << full_star * (num- 1) + '1/2'
      end
    }
  stars.delete_at(2)
 # puts stars.inspect
  input.delete_at(2)
  results = []
  comment.each_with_index do |item1,index|
    item2 = input[index]
    results << item1 + item2
  end

  tweet = []
  results.each_with_index do |item1,index |
    item2 = stars[index]
    tweet << item1 + item2
  end
  tweet.each { |string|
        string.length <= 140
       if tweet.length > 140 && movie['title'].length > 25
         movie['title'].length == 25
       else
         tweet[0, 39]
       end
      }

  puts tweet.to_json

 private

  # def length(tweet)
  #   tweet.each { |string|
  #       string.length <= 140
  #      if tweet.length > 140 && movie['title'].length > 25
  #        movie['title'].length == 25
  #      else
  #        tweet[0, 39]
  #      end
  #     }
  # end
end
