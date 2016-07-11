require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  erb(:index)
end

get('/words/new') do
   erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  word_string = params.fetch('word_string')
  Word.new(word_string).save()
  @words = Word.all()
  erb(:success)
end

get('/definitions/:id') do
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:definition)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/words/:id/definitions/new') do
    @word = Word.find(params.fetch('id').to_i())
    erb(:word_definitions_form)
end

post('/definitions') do
  definition_string = params.fetch('definition_string')
  @definition = Definition.new(definition_string)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  erb(:success)
end
