require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #to use the model we've created in our controller

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]

    # @analyzed_text = TextAnalyzer.new(text_from_user)

    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
