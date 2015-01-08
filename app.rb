require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble')

get('/') do
  erb(:form)
end

get('/scrabble') do
  word = params.fetch('word')
  score = word.scrabble()
  if score < 10
    message = "Not so great."
  else
    message = "Congratulations!"
  end

  @message = message
  @score = score
  erb(:scrabble)
end
