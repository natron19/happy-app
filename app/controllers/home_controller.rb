class HomeController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]

  def index
    @result = ''
    if params && params[:data]
      if params[:data] == 'joke'
        result = Joke.order('RANDOM()').first
        @result = "#{result.setup} | #{result.punchline}"
      elsif params[:data] == 'quote'
        result = Quote.order('RANDOM()').first
        @result = "#{result.saying} | #{result.source}"
      end
    end
  end
  
end
