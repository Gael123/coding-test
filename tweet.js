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
const createMovie =>
const movies =
  JSON.parse(movies.json)

const  reviews =
JSON.parse(reviews.json)


 const  starRating = (rating) =>

 {

    const score      = reviews.array[i].score
    const rating   =  (score ) / 20
    let stars  = '';
    let full_stars = Math.round(rating);
    let half_star = Math.round(rating*2) /2;
    let empty_stars = 5 - full_stars - half_star;
    for($i = 0; $i < $full_stars; $i++){
      const stars = '<span class="fa fa-star checked"></span>';
    }

        if(half_star){
      const stars = '<span class="fa fa-star-half-alt checked"></span>';
    }

    for($i = 0; $i < $empty_stars; $i++){
      const stars  = '<span class="fa fa-star"></span>';
    }
    return stars;
};



const makeTweet =(tweet) => {
  const movieTitle = movies_array[i].title
  const year       = movies_array[i].year
  const review     = reviews_array[i].review
  const tweet      =    `${movieTitle}${year}${review}` + stars
  if (tweet.includes(`${year}`) )
    {return tweet;}
      return false ;

  };




const validateTweet =(tweet,movieTitle) => {

 if (tweet.length =< 140) {return tweet;}

  if  ( tweet.length > 140  && movieTitle.length > 25)
   {movieTitle.length == 25 && tweet.length =< 140;}
  if (tweet.length > 140 && movieTitle.length =< 25 ) {tweet.substring(0,139);}
  return tweet
};
