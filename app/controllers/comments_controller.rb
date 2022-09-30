class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_video
    def create
       @comment = @video.comments.build(comment_params)
       @comment.user_id = current_user.id
       @comment.save
    end

    private

    def set_video
    @video = Video.find(params[:video_id])        
    end
    def comment_params
        params.require(:comment).permit(:content)
    end
end
