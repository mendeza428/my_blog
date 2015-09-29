class CommentsController < ApplicationController
	def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create!(params[:comment].permit!)
        redirect_to @post
    end

    def comment_params
    	params.require(:comment).permit(:body, :title)
    end
end
