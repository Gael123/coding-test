 const movies_array = [
  { "title":"Star Wars",
    "year":1977},

  { "title":"Star Wars The Force Awakens",
    "year":2015},

  { "title":"Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb",
    "year":1964},
  { "title":"Plan 9 from outer space",
    "year":1959}
];


 const reviews_array = [
  { "title":"Star Wars",
    "review":"Great, this film was",
    "score":77},

  { "title":"Star Wars The Force Awakens",
      "review":"A long time ago in a galaxy far far away someone made the best sci-fi film of all time. Then some chap came along and basically made the same movie again",
      "score":50},
  { "title":"Metropolis",
    "review":"Another movie about a robot. Very strong futuristic look. But also very very old. Hard to understand what was happening because the audio was too low",
    "score":15},
  { "title":"Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb",
    "review":"Hilarious Kubrick satire",
    "score":100},
  { "title":"Plan 9 from outer space",
    "review":"So bad it's bad",
    "score":7}
];



// const movies =
//   JSON.parse(movies.json)

// const  reviews =
// JSON.parse(reviews.json)







const makeTweet =(movie,review) => {

    for (let i = 0;  i < movies_array.length;i++) {
      const title = movies_array[i].title
      const year  = movies_array[i].year
     }


    for (let i = 0;  i < reviews_array.length;i++) {
      const reviewComment  = reviews_array[i].reviews
      const score  = reviews_array[i].score
        const rating   =  (score ) / 10
        let stars  = '';
        let full_stars = floor(rating/2);
        let half_star = (rating%2);
        for($i = 0; $i < $full_stars; $i++){
          const stars = '<span class="fa fa-star checked"></span>';
        }

            if(half_star){
          const stars = '<span class="fa fa-star-half-alt checked"></span>';
        }

      }
       const tweet = `${title} (${year}):${review}`+ stars

     tweet.length <= 140
  if  ( tweet.length > 140  && movieTitle.length > 25)
   {movieTitle.length == 25 && tweet.length <= 140;}
  else (tweet.length > 140 && movieTitle.length <= 25 )
    {tweet.substring(0,139);}
  return tweet;
  };

module.exports = { makeTweet };
