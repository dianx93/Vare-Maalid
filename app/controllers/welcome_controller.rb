class WelcomeController < ApplicationController
  def index
	@info = Text.find_by(name: 'Avalehe info')
  end
end
