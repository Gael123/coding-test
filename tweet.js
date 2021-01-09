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

const movies =
  JSON.parse(movies.json)

const  reviews =
JSON.parse(reviews.json)

const movieTitle = movies_array[i].title
const year       = movies_array[i].year
const review     = reviews_array[i].review
const score      = reviews.array[i].score

 const rating   =  Math.round(score + 5) / 10

 function starRating($rating){


  let stars  = '';

    let full_stars = floor(score/2);
    //10 = 5, 8 = 4, etc
     let half_star = score%2;
    //Should be 1 for every odd number.
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
}

const tweet = movieTitle + (year) + review + stars
tweet.includes(year)
console.log (tweet)
tweet.length => 140
if tweet.length > 140 ,console.log(truncate_string(movieTitle,25))

if tweet.length > 140 && movieTitle.length =< 25 , console.log(truncate_string(tweet,140))


 const ratingStars   =  Math.round(score + 5) / 20
