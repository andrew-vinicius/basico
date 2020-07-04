class PeopleController < ApplicationController
  def index
    @a = Person.all
  end

  def new
  end

  def create
    person = Person.new(params_people)
    person.save
    redirect_to people_index_path
  end

  def edit
  end

  def update
    Person.find(params[:id]).update(params_people)
    redirect_to people_index_path
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_index_path
  end

  private
  def params_people
    params.require(:person).permit(:name, :age)
  end

end