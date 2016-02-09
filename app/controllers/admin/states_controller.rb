class Admin::StatesController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"

  def index
    @states = State.all
    @categories = Category.all
  end

  def new
    @state = State.new
    @categories = Category.all
  end

  def show
    @states = State.all
    @categories = Category.all
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to admin_states_path
    else
      render 'new'
    end
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy

    redirect_to admin_states_path
  end

  private
    def state_params
      params.require(:state).permit(:name)
    end
end
