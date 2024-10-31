class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(get_params)

    if @kitten.save
      redirect_to root_path
      flash[:success] = "Good lack with the new dictator!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])

    if @kitten.update(get_params)
      redirect_to root_path
      flash[:success] = "Good lack with your updated dictator!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def get_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
