class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])

    @sender = User.find_by(id: @post.user_sender_id)

    # In case of receiver
    @receiver = User.find_by(id: @post.user_receiver_id)

    sql_comments = "SELECT * FROM comments_users_and_posts WHERE post_id = #{@post.id}"
    @comments = ActiveRecord::Base.connection.execute(sql_comments)
  end

  def new_user
    @post = Post.new
  end

  def new_comm
    @post = Post.new
  end

  def new_event
    @post = Post.new
  end

  def create_user
    @post = Post.new(post_params)

    user = User.find(params[:user_id])

    @post.user_sender_id = current_user.id
    @post.user_receiver_id = user.id

    if @post.save
      redirect_to user
    else
      render 'new_user'
    end
  end

  def create_comm
    @post = Post.new(post_params)

    community = Community.find(params[:community_id])

    @post.user_sender_id = current_user.id
    @post.community_id = community.id

    if @post.save
      redirect_to community
    else
      render 'new_comm'
    end
  end

  def create_event
    @post = Post.new(post_params)

    event = Event.find(params[:event_id])

    @post.user_sender_id = current_user.id
    @post.event_id = event.id

    if @post.save
      redirect_to event
    else
      render 'new_event'
    end
  end

  protected
  def post_params
    params.require(:post).permit(:content)
  end
end
