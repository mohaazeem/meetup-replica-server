{"filter":false,"title":"create_comm.json.rabl","tooltip":"/app/views/api/posts/create_comm.json.rabl","undoManager":{"mark":10,"position":10,"stack":[[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"remove","lines":["extends \"posts/base\"",""],"id":2}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["attributes :user_sender_id, :user_receiver_id, :content, :community_id, :event_id",""],"id":3}],[{"start":{"row":1,"column":11},"end":{"row":1,"column":12},"action":"insert","lines":[":"],"id":4}],[{"start":{"row":1,"column":12},"end":{"row":1,"column":13},"action":"insert","lines":["i"],"id":5}],[{"start":{"row":1,"column":13},"end":{"row":1,"column":14},"action":"insert","lines":["d"],"id":6}],[{"start":{"row":1,"column":14},"end":{"row":1,"column":15},"action":"insert","lines":[","],"id":7}],[{"start":{"row":1,"column":15},"end":{"row":1,"column":16},"action":"insert","lines":[" "],"id":8}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":["#"],"id":9}],[{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":2,"column":0},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":11}],[{"start":{"row":3,"column":0},"end":{"row":11,"column":3},"action":"insert","lines":["node do |post|","    post.slice(:id, :user_sender_id, :user_receiver_id, :content, :community_id, :event_id)","end","","node do |post|","    {","        user: User.find(post[:user_sender_id]).slice(:f_name, :l_name, :profile_picture)","    }","end"],"id":12}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":3},"end":{"row":11,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1450183633635,"hash":"e3f536e5eae7974cc61535ca9161c043bb8b655d"}