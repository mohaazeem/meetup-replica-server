collection @posts
# attributes :id, :user_sender_id, :user_receiver_id, :content, :community_id, :event_id

node do |post|
    post.slice(:id, :user_sender_id, :content)
end

node do |post|
    {
        user: User.find(post[:user_sender_id]).slice(:f_name, :l_name, :profile_picture)
    }
end