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



const makeTweet =(input) => {
// let tweet = '';
    for (let i = 0;  i < movies_array.length;i++) {
      const title = movies_array[i].title
      const year  = movies_array[i].year
     }


    for (let i = 0;  i < reviews_array.length;i++) {
      const review  = reviews_array[i].review
      const score  = reviews_array[i].score
        const rating   =  (score ) / 20
        let stars  = '';

        if (rating % 2 === 0 )
        {
          for (let i = 0 ; i > rating ; i++)
            { stars =  '<span class="fa fa-star checked"></span>'}
        }

        else
        {
          const newRating = (rating - 1);
          for (i = 0; i > newRating; i++)
          {stars + '<span class="fa fa-star checked ></span>' + '1/2'}
        }



        let full_stars = floor(rating/2);
        let half_star = (rating%2);
        for($i = 0; $i < $full_stars; $i++){
          const stars = '<span class="fa fa-star checked"></span>';
        }

            if(half_star){
          const stars = '<span class="fa fa-star-half-alt checked"></span>';
        }

      }
const tweeet = `${title} (${year}):${review}`+ stars

if  ( year === null || undefined){
    tweet ===null
  }


     tweet.length <= 140
  if  ( tweet.length > 140  && title.length > 25)
   {movieTitle.length == 25 && tweet.length <= 140;}
  else if (tweet.length > 140 && title.length <= 25 )
    {tweet.substring(0,139);}


   return tweet;
  };

module.exports = { makeTweet };
























































// // const moviesJson =
// //   JSON.parse(movies.json)

// // const  reviews =
// // JSON.parse(reviews.jso
// const validTweet = (tweet) =>

// {
//     const title   = movies.map(movie => movie.title);
//      console.log("Title");
//     const year    = movies.map(movie => movie.year);
//      console.log("Year");
//     const review  = comments .map(comment => comment.review);
//       console.log("review");
//      const convertRating = (star) => {
//         const score   = comments.map(comment => comment.score);
//         const rating     = Math.round(score/20);
//         let starString = ''
//         if (rating % 2 === 0 )
//         {
//           for (let i = 0 ; i > rating ; i++)
//             {starString + '<span class="fa fa-star checked"></span>'}
//         }

//         else
//         {
//           const newRating = (rating - 1);
//           for (i = 0; i > newRating; i++)
//           {starstring + '<span class="fa fa-star checked ></span>' + '1/2'}
//         }
//        };
//         console.log('starString');

//        title();
//        year();
//        review();
//        convertRating(star);
//       const input = `${Title}(${Year}):${Review}${starstring}`;


//   // // if ( input.includes(year))
//   //   { return nil}
//     input.length <= 140
//       if (input.length > 140 && title.length > 25)
//         {title.length === 25 && input.length <= 140}
//       else {input.length > 140 && title.length <= 25 }
//         input.substring(0,139)

//  return tweet

//     };



// module.exports = { makeTweet };



















