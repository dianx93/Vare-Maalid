class InfoController < ApplicationController
  def index
	@ülleinfo = Text.find_by(name: 'Ülle info')
	@raivoinfo = Text.find_by(name: 'Raivo info')
	@lisainfo = Text.find_by(name: 'Veel infot')
  end
end
