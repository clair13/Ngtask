class CitationsController < ApplicationController
  before_action :set_citation, only: [:show, :edit, :update, :destroy]


  def index
    @citations = Citation.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end


  def new
    @citation = Citation.new
  end

  def edit
  end

  def create
    @citation = Citation.new(citation_params)

    if @citation.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    if @citation.update(citation_params)
      redirect_to @citation
    else
      render 'edit'
    end
  end

  def destroy
    @citation.destroy
    redirect_to citations_path
  end

  private

  def citation_params
    params.require(:citation).permit(:description, :name)
  end

  def set_citation
    @citation = Citation.find(params[:id])
  end
end
