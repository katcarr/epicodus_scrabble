require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble_score')

get('/') do
  erb(:scrabble_calculator)
end

get('/scrabble_answer') do
  @word = params.fetch('word').upcase()
  @score = @word.scrabble_score()

  erb(:scrabble_answer)
end
