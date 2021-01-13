 const movies = [
  { "title":"Star Wars",
    "year":1977},

  { "title":"Star Wars The Force Awakens",
    "year":2015},

  { "title":"Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb",
    "year":1964},
  { "title":"Plan 9 from outer space",
    "year":1959}
];


 const inputs = [
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

const makeTweet = (inputs,movies) => {
 let tweet = [];
  const titles =  movies.map((movie) => movie.title);
    for (let  i=0; i<titles.length; i++){
    if (titles[i].length > 25 && tweet.length > 140)
     { titles[i].length <= 25}
      tweet.push(titles[i]);

   const years = movies.map((movie) => movie.year);
   for (let  i=0; i<years.length; i++){
    tweet.push((years[i]));
    if (years[i] === null || undefined){
      tweet === null}}
      }
  const reviews = inputs.map((input) => input.review);
   for (let  i=0; i<reviews.length; i++){
     tweet.push(':' + reviews[i]);}

   const scores = inputs.map((input) => input.score);
   scores.forEach((score) => {
    const rating = (score )/10;
    let stars  = '';
    let fullStars = Math.floor(rating/2)
     for ( let i = 0; i < fullStars; i++)
      {stars +  '<span class="fa fa-star checked"></span>';}
      if (rating % 2 )
       {stars + '<span class="fa fa-star checked"></span>' + '1/2' ;}
      tweet.push(stars)
        });

return tweet;

}

  makeTweet(inputs,movies);
























































