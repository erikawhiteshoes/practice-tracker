class InstrumentsController < ApplicationController
  def create
    @session = Session.find(params[:session_id])
    @instrument = @session.instruments.create(params[:instrument].permit(:name, :exercise, :tempo, :notes))

    redirect_to session_path(@session)
  end
end
