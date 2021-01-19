















# # #  def reviews_input(title, review ,score)
# # #   file = File.read('./reviews.json')
# # #  inputs = JSON.parse(file)
# # # inputs.each do |input|
# # # tweet  = input[title],input[review],input[score]
# # # return  tweet
# # # end
# # # puts tweet
# # # end



# # # #     file = File.read('./movies.json')
# # # #     movies = JSON.parse(file)

# # # # file = File.read('./reviews.json')
# # # # reviews = JSON.parse(file)
# # # # reviews.each do |review|
# # # #   puts review[title]
# # # # end
# # # # # puts reviews
# # # # puts movi
# # !/usr/bin/ruby

# def json_argv(json)
#  json = File.read('./movies.json')
#     movies_hash = JSON.parse(json)
#     movies_hash.each do |movie|
#       titles << [movie['title'] + '' + (movie['year'].to_i.to_s)]

#     end

# json = File.read('./reviews.json')
#     reviews_hash = JSON.parse(json)
#     reviews_hash.each do |movie|
#       titles << [movie['title'] + '' + (movie['year'].to_i.to_s)]

#     end
# end

























































# desc   'movie_title json', 'list out movies titles from JSON file'
#   # option :api_key, aliases: '--api-key', type: :string, required: true
#   option :format, type: :string, desc: 'one line format'
#   # option :no_country_code, aliases: '--no-country-code', desc: 'remove country code', type :boolean

#   def movies_titles(keyword=nil)

#      json        = File.read('/movies.json')
#     movies_hash = JSON.parse(json)
#     # keyword     = keyword.to_s.downcase

#     movies_hash.each do |trend|
#       process_trend(trend)
#     end
#   end

# def





















#    titles =[]
#     file = File.read('./movies.json')
#     movies = JSON.parse(file)
#     movies.each{|movie|

#     titles << [movie['title'] + '' + (movie['year'].to_i.to_s)]
# }

#     end
#   end

#   private

#   def process_trend(trend)
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

# # # class Tweets
# # #   attr_accessor :title, :year, :review, :score
# # #   def initialize(title, year, review, score)
# # #     @title = title
# # #     @year = year
# # #     @review = review
# # #     @score = score
# # #   end

# titles =[]
#     file = File.read('./movies.json')
#     movies = JSON.parse(file)
#     movies.each{|movie|

#     titles << [movie['title'] + '' + (movie['year'].to_i.to_s)]
# }


#   file = File.read('./reviews.json')
#   inputs = JSON.parse(file)

# inputs.each { |i|
#   titles << input['review'] + input['score'].to_i.to_s
# }

# }

# #    # end
# # tweet = movie['title'] + '' + (movie['year'].to_i.to_s) +':'  + input['review'] + input['score'].to_i.to_s
# # #    # tweets.split("")
# # #    # tweet.year ?
# # #    # tweet_array =[]
# # #    # tweet_array << tweet
# # #    # puts tweet_array.to_json
# # #   # puts input['score'].to_i
#    # puts titles +reviews
#    # puts movies



# # # e# # # end

# # # #

# # # private

# # # def  TweetLength(tweet)
# # #    tweet.length <= 140
# # #    if tweet.length > 140  &&  movie['title'].length > 25
# # #    movie['title'].length == 25
# # #  else
# # #     tweet[0,39]
# # #   end

# # # end

# # #  def  year?(tweet)
# # #   if
# # #   tweet.include?(movie['year'])
# # #   return tweet
# # # else
# # #   puts "tweet deleted"
# # #   end
# # #  end

# # #  def  scores
# # #   star = '<span class="fa fa-star checked"></span>'
# # #   case input['score'].to_i
# # #   when 0.. 10
# # #     puts"1/2"
# # #   when  11 ..20
# # #     puts star
# # #   when  21..30
# # #     puts  star +'1/2'

# # #   when 31..40
# # #     puts star +star
# # #   when 41..50
# # #     puts star+ star + '1/2'
# # #   when 51..60
# # #      puts  star + star +star

# # #   when  61..70
# # #      puts star + star + star +'1/2'
# # #   when 71..80
# # #      puts star + star + star + star
# # #   when 81..90
# # #     puts star + star + star +star +'1/2'
# # #    when 91..100
# # #    puts star + star + star +star +star

# # #   end

# # #  end

