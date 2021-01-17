  require 'json'



# #  def reviews_input(title, review ,score)
# #   file = File.read('./reviews.json')
# #  inputs = JSON.parse(file)
# # inputs.each do |input|
# # tweet  = input[title],input[review],input[score]
# # return  tweet
# # end
# # puts tweet
# # end



# # #     file = File.read('./movies.json')
# # #     movies = JSON.parse(file)

# # # file = File.read('./reviews.json')
# # # reviews = JSON.parse(file)
# # # reviews.each do |review|
# # #   puts review[title]
# # # end
# # # # puts reviews
# # # puts movi
# # !/usr/bin/ruby

# require 'thor'
# require 'json'

# class TweetReviews < Thor

#   # VALID_API_KEY_RE = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/

#   desc   'movies json', 'list out trends from JSON file'
#   # option :api_key, aliases: '--api-key', type: :string, required: true
#   option :format, type: :string, desc: 'one line format'
#   # option :no_country_code, aliases: '--no-country-code', desc: 'remove country code', type :boolean

#   def input_reviews(keyword=nil)

#     # Check your options before reading the file
#     # if !VALID_API_KEY_RE.match(options[:api_key])
#     #   puts "Invalid API Key, operation abort..."
#     #   exit(255)
#     # end

#     json        = File.read('trends_available.json')
#     trends_hash = JSON.parse(json)
#     keyword     = keyword.to_s.downcase

#     trends_hash.each do |trend|
#       process_trend(trend)
#     end
#   end

#   private

#   def inclue_yeae(trend)
#     return unless trend["country"].downcase.include?(keyword)

#     if options[:format]
#       output_formatted_trend(trend)
#     else
#       output_complete_trend(trend)
#     end
#   end

#   def output_formatted_trend(trend)
#     output = trend.values[0..2]
#     output.delete_at(1) if options[:no_country_code]
#     puts output.join(' ')
#   end

#   def output_complete_trend(trend)
#     trend.each do |k, v|
#       if v.is_a?(Hash)
#         v.each do |i, j| puts "Trend location type #{i}: #{j}" end
#       else
#         puts "Trend #{k}: #{v}"
#       end
#       puts ''
#     end
#   end

# end

# ListTrends.start(ARGV)

class Tweets
  attr_accessor :title, :year, :review, :score
  def initialize(title, year, review, score)
    @title = title
    @year = year
    @review = review
    @score = score
  end


    file = File.read('./movies.json')
    movies = JSON.parse(file)
    movies.each{|movie|
    params = {
      table_name: 'Movies',
      item: movie
    }
    # tweets >> movie[titile], movie[year]


  file = File.read('./reviews.json')
  inputs = JSON.parse(file)
  inputs.each{|input|
  params = {
      table_name: 'inputs',
      item: input
  }

   # end
  tweet = movie['title'] + '' + (movie['year'].to_i.to_s) +':'  + input['review'] + input['score'].to_i.to_s
   # tweets.split("")
   tweet_array =[]
   tweet_array << tweet
   # puts tweet_array.to_json
  puts input['score'].to_i
  # puts movies

}
}
end

# end

#

private

def  TweetLength(tweet)
   tweet.length <= 140
   if tweet.length > 140  &&  movie['title'].length > 25
   movie['title'].length == 25
 else
    tweet[0,39]
  end

end

 def Year(tweet)
  if
  tweet.include?(movie['year'])
  return tweet
else
  puts "tweet deleted"
  end
 end

 def  scores
  star = '<span class="fa fa-star checked"></span>'
  case input['score'].to_i
  when 0.. 10
    puts"1/2"
  when  11 ..20
    puts star + star
  when  21..30
    puts  star + star +1/2

   when 31..40
   puts star +star + star
   when 41..50
   puts star+ star +star + 1/2
   when 51..60
    puts  star + star +star +star

 end
