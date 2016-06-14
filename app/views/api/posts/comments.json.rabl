collection @comments
# attributes :id, :content

node do |comment|
    comment.slice('id', 'user_id', 'post_id', 'comment_id')
end

node do |comment|
    {
        user: User.find(comment['user_id']).slice(:f_name, :l_name),
        comment: Comment.find(comment['comment_id']).slice(:content)
    }
end