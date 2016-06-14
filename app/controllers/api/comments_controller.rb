class Api::CommentsController < Api::BaseController
  def show
    respond_with @comment = Comment.find(params[:comment_id])
  end
  
  def create
    @comment = Comment.new(comments_params)
    @user = current_user
    @post = Post.find(params[:id])

    if @comment.save
      sql_comments = "INSERT INTO comments_users_and_posts (user_id, post_id, comment_id) VALUES (#{@user.id}, #{@post.id}, #{@comment.id})"
      execute = ActiveRecord::Base.connection.execute(sql_comments)
      
      sql_comment = "SELECT * FROM comments_users_and_posts WHERE post_id = #{@post.id} AND comment_id = #{@comment.id}"
      @new_comment = ActiveRecord::Base.connection.execute(sql_comment)
      respond_with @new_comment
    else
      render status: :internal_server_error
    end
  end

  protected
  def comments_params
    params.require(:comment).permit(:content)
  end
end
