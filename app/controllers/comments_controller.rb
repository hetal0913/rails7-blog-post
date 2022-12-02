class CommentsController < ApplicationController
    before_action :set_post
    before_action :authenticate_user!

    def create
        @comment = @post.comments.create(comment_params)
        @comment.user = current_user

        if @comment.save
            flash[:notice] = "Commnt has been added"
            redirect_to post_path(@post)
        else
            flash[:alert] = "Commnt not added, #{@comment.errors.full_messages}"
            redirect_to post_path(@post)
        end
    end

    def destroy
        @comment = @post.comments.find(params[:id])
        @comment.destroy if @comment.present?
        redirect_to post_path(@post)
    end

    def update
        @comment = @post.comments.find(params[:id])
        respond_to do |format|
            if @comment.update(comment_params)
                format.html { redirect_to post_url(@post), notice: "Comment updated successfully!"}
            else
                format.html { redirect_to post_url(@post), alert: "Comment was not updated!"}
            end
        end
    end

    private

    def set_post
        @post = Post.where(id: params[:post_id]).first
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end
