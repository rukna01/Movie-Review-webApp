# movie = Movie.create([   
#   # all the is added in the database
#   {
#     name:"Don 1"
#   },
#   {
#     name:"Don 2"
#   },
#   {
#     name:"Don 3"
#   },
#   {
#     name:"Kal ho na ho"
#   },
#   {
#     name:"Top gun"
#   },
#   {
#     name:"Amazing spiderman"
#   }
# ])

# review =Review.create([
#   {
#     title: "76% liked this film",
#     description: "Suri and Raghava, mafia kingpins of Andhra Pradesh, are benevolent gangsters who ensure the safety of their people.",
#     score: 9.3,
#     movie: Movie.find(1)
# #    movie is there in place of movie bcoz Review.last.movie can generate movie table
#   },
#   {
#     title:"The Chase Begins Again, better known simply as Don",
#     description:'Vijay is recruited by a police officer to masquerade as his lookalike Don, the leader of an international gang of smugglers. Things go wrong when the officer is killed and Vijay is left to fend for himself.',
#     score:9.9,
#     movie_id: '1'
#   },
#   {
#     title:"76% liked this film",
#     description:"Suri and Raghava, mafia kingpins of Andhra Pradesh, are benevolent gangsters who ensure the safety of their people.",
#     score:7.3,
#     movie_id:'1'
#   },
# ])