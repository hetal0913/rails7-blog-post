class DragController < ApplicationController


    def post
        @post = Post.find(drag_post_params[:id])
        @post.insert_at(drag_post_params[:position].to_i + 1)
    end

    private

    def drag_post_params
        params.require(:resource).permit(:id, :position)
    end
end
