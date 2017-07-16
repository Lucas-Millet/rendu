class CommentairesController < ApplicationController

	def create
 		@article = Article.find(params[:article_id])
 		@commentaire = @article.commentaire.create(comment_params)
 		redirect_to article_path(@article)
 	end

 	def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

 	private
 		def comment_params
 			params.require(:commentaire).permit(:titre, :content)
 		end

end
