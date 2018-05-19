class PhrasesController < ApplicationController
  def index
  	# session[:phrases] = nil
  	# session[:index] = nil
  	unless session[:phrases] 
  		session[:phrases] = []
  	end
  	@phrases = session[:phrases]
  	puts session[:phrases]
  end

  def get_new_phrase

  	unless session[:phrases].present?
  		@phrase = Phrase.first
  		session[:phrases] << @phrase
  		session[:index] = @phrase.id + 1
  	else
  		if session[:index] <= 10 
	  		@phrase = Phrase.find session[:index]
	  		session[:phrases] << @phrase
	  		session[:index] = @phrase.id + 1
	  	else
	  		@phrase = nil
	  	end

  	end
  	respond_to do |format|
  		format.js 
  	end
  end

  def clear_phrases
  	session[:phrases] = []
  	session[:index] = nil
  	respond_to do |format|
  		format.js 
  	end
  end
end
