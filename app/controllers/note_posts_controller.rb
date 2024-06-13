class NotePostsController < ApplicationController
    before_action :set_note_post, only: [:show, :edit, :update, :destroy]
    def index
        @note_posts = NotePost.all
    end

    def show
   
    end
    
    def new
        @note_post = NotePost.new
    end

    def create
        @note_post = NotePost.new(note_post_params)
        if @note_post.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @note_post.update(note_post_params)
            redirect_to @note_post
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @note_post.destroy
        redirect_to root_path
    end

    private

    def note_post_params
        params.require(:note_post).permit(:title, :body)
    end
    def set_note_post
        @note_post = NotePost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end
end