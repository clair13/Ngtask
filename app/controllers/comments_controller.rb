class CommentsController < ApplicationController
  def create
    @citation = Citation.find(params[:citation_id])
    @comment = @citation.comments.create(comment_params)
    redirect_to citation_path(@citation)
  end

  def destroy
    @citation = Citation.find(params[:citation_id])
    @comment = @citation.comments.find(params[:id])
    @comment.destroy
    redirect_to citations_path(@citation)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
