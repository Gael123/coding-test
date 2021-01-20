require_relative 'tweet'
require "test/unit"
require 'rspec'
include RSpec
describe Tweet do
     let(:movies) { Tweet.new }
     it 'should return  a hashes array from JSON' do
     expect(array).to eq '[{"title"=>"Star Wars", "review"=>"Great, this film was", "score"=>77}
]'
     it 'should iterate through hashes array' do
     expect(array).to eq '["Star Wars", "Star Wars The Force Awakens",
      "Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb", "Plan 9 from outer space"]'
      end
      end

       it 'should convert scores to unicode star rating including half stars' do
        expect(array).to eq '["★★★★", "★★1/2", "1/2", "★★★★★", "", "1/2"]'
       end

         it 'concat string of arrays and form a tweet string ' do
         expect(array).to eq '[`Movie Title (year): Review of the movie ★★★★½`]'
        end
        it ' should  iterate over array return a string of 140 characters if its more the movie title
         should be less than 25 and if it stills exceeds 140 then reduce the words
           in review till the whole string is 140 characters' do
        expect string.length.to eq 140 if string.length
      end
       it ' ' do
     expect string.length.to eq 140 if string.length
      end
    end
