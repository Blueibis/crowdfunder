class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new(comment_params)

    if @comment.save
      flash[:notice] = "Your comment has been successfully created!"
      redirect_to project_path(@project.id)
    else
      render "projects/show"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @project = Project.find(params[:project_id])
  end

  def update
    @project = Project.find(params[:project_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Your comment has been successfully updated!"
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Your comment has been successfully deleted!"
    redirect_to root_path
  end

  def comment_params
    params.require(:comment).permit(:name, :user_comment)
  end
end
