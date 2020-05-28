require_relative( 'models/casting' )
require_relative( 'models/movie' )
require_relative( 'models/star' )

require( 'pry-byebug' )

star1 = Star.new ({ 'first_name' => 'Brad','Last_name' => 'Pitt'})
star1.save()
star2 = Star.new ({'first_name' => 'Leonardo', 'last_name' => 'Decaprio'})
star2.save()
star3 = Star.new ({'first_name' => 'Bruce', 'last_name' => 'Willace'})
star3.save()

movie1 = Movie.new ({ 'title' => 'Twelve Monkeys', 'genre' => 'Sci-Fi' })
movie1.save()
movie2 = Movie.new ({ 'title' => 'Inception', 'genre' => 'Sci-Fi' })
movie2.save()
movie3 = Movie.new ({ 'title' => 'Once Upon a Time', 'genre' => 'Thriller' })
movie3.save()

casting1 = Casting.new ({ 'star_id' => start1.id, 'movie_id' => movie1.id, 'fee' => 100 })
casting1.save()
casting2 = Casting.new ({ 'star_id' => start1.id, 'movie_id' => movie1.id, 'fee' => 500 })
casting2.save()
casting3 = Casting.new ({ 'star_id' => start1.id, 'movie_id' => movie1.id, 'fee' => 300 })
casting3.save()

binding.pry
nil