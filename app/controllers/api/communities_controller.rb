class Api::CommunitiesController < Api::BaseController
  def index
    respond_with @communities = Community.all
  end

  def show
    respond_with @community = Community.find(params[:id])
  end
  
  def posts
    @community = Community.find(params[:id])

    # All posts in this community
    respond_with @posts = Post.where(community_id: @community.id).order(created_at: :desc)
  end
  
  def events
    @community = Community.find(params[:id])
    # All events of this community
    
    @events = Event.where(community_id: @community.id)
    
    # tmp_events = CommunityEvent.where(community_id: @community.id)
    # @events = []
    # tmp_events.each do |e|
    #   @events += [Event.find_by(id: e.event_id)]
    # end
    respond_with @events
  end
  
  def members
    @community = Community.find(params[:id])
    
    # All members of this community
    tmp_users = Member.where(community_id: @community.id)
    @members = []
    tmp_users.each do |u|
      @members += [User.find_by(id: u.user_id)]
    end
    respond_with @members
  end

  def create
    @community = Community.new(comm_params)

    @community.user_id = current_user.id

    if @community.save
      @member = @community.members.build(user: current_user)
      @member.save
      respond_with @community
    else
      render status: :internal_server_error
    end
  end

  def update
    @community = Commnity.find(params[:id])

    if @community.update(comm_params)
      respond_with @community
    else
      render status: :internal_server_error
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy

    respond_with communities_path
  end

  def join_community
    @community = Community.find(params[:community_id])
    @member = @community.members.build(user: current_user)
    @member.save

    respond_with @community
  end

  def leave_community
    @community = Community.find(params[:community_id])
    @member = Member.where(user_id: current_user.id, community_id: @community.id)
    @member.first.destroy

    respond_with @community
  end

  protected
  def comm_params
    params.require(:community).permit(:com_name, :description)
  end
end
