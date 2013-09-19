class CommentsController < ApplicationController
  def create
   post = Post.find(params[:post_id])
   comment = Comment.new(comment_params)
   comment.post = post
   comment.user_id = 1 #something that needs to be fixed/properly associated
   
   if comment.save
    flash[:notice]= "Your comment was saved!"
    redirect_to post_path(post)
   else
    render 'posts/show'
  end

  private

  def comment_params
  	params.require(:comment).permit(:body)
  end
  
end
