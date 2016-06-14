collection @requests
# attributes :id, :user_request_sender_id, :user_request_receiver_id, :accept

node do |request|
    request.slice(:id, :user_request_sender_id, :user_request_receiver_id, :accept)
end

node do |request|
    {
        user_one: User.find(request[:user_request_sender_id]).slice(:id),
        user_two: User.find(request[:user_request_receiver_id]).slice(:id)
    }
end