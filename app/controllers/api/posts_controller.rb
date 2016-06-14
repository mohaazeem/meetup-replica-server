class Api::PostsController < Api::BaseController
  def show
    respond_with @post = Post.find(params[:id])
  end
  
  def sender
    @post = Post.find(params[:id])

    respond_with @sender = User.find_by(id: @post.user_sender_id)
  end
  
  def comments
    @post = Post.find(params[:id])
    
    sql_comments = "SELECT * FROM comments_users_and_posts WHERE post_id = #{@post.id}"
    respond_with @comments = ActiveRecord::Base.connection.execute(sql_comments)
  end

  def create_user
    @post = Post.new(post_params)

    user = User.find(params[:user_id])

    @post.user_sender_id = current_user.id
    @post.user_receiver_id = user.id

    if @post.save
      respond_with @post
    else
      render status: :internal_server_error
    end
  end

  def create_comm
    @post = Post.new(post_params)

    community = Community.find(params[:community_id])

    @post.user_sender_id = current_user.id
    @post.community_id = community.id

    if @post.save
      respond_with @post
    else
      render status: :internal_server_error
    end
  end

  def create_event
    @post = Post.new(post_params)

    event = Event.find(params[:event_id])

    @post.user_sender_id = current_user.id
    @post.event_id = event.id

    if @post.save
      respond_with @post
    else
      render status: :internal_server_error
    end
  end

  protected
  def post_params
    params.require(:post).permit(:content)
  end
end
