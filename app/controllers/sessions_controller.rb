class SessionsController < ApplicationController
  before_action :find_session, only: [:show, :edit, :update, :destroy]
  def index
    @sessions = Session.all.order("created_at DESC")
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to @session
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @session.update(session_params)
      redirect_to @session
    else
      render 'edit'
    end
  end

  def destroy
    @session.destroy
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:date, :session, :mood, :duration)
  end

  def find_session
    @session = Session.find(params[:id])
  end
end
