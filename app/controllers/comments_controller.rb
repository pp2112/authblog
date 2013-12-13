class CommentsController < ApplicationController
# http_basic_authenticate_with :name => "pp2112", :password => "Pkn115p135", :except => [:index, :show]
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    @comment.update_attributes(
      :commenter => current_user.email
    )
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

end
