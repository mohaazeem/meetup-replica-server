{"filter":false,"title":"my_posts.json.rabl","tooltip":"/app/views/api/users/my_posts.json.rabl","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":0},"end":{"row":11,"column":3},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"d812305532e1a0d24338c528d4df592f4a0ae998","undoManager":{"mark":79,"position":79,"stack":[[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":["#"],"id":2}],[{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "],"id":3}],[{"start":{"row":2,"column":0},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":4}],[{"start":{"row":3,"column":0},"end":{"row":12,"column":3},"action":"insert","lines":["node do |comment|","    comment.slice('id', 'user_id', 'post_id', 'comment_id')","end","","node do |comment|","    {","        user: User.find(comment['user_id']).slice(:f_name, :l_name),","        comment: Comment.find(comment['comment_id']).slice(:content)","    }","end"],"id":5}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":68},"action":"remove","lines":["        comment: Comment.find(comment['comment_id']).slice(:content)"],"id":6}],[{"start":{"row":9,"column":68},"end":{"row":10,"column":0},"action":"remove","lines":["",""],"id":7}],[{"start":{"row":3,"column":9},"end":{"row":3,"column":16},"action":"remove","lines":["comment"],"id":8},{"start":{"row":3,"column":9},"end":{"row":3,"column":10},"action":"insert","lines":["p"]}],[{"start":{"row":3,"column":10},"end":{"row":3,"column":11},"action":"insert","lines":["o"],"id":9}],[{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"insert","lines":["s"],"id":10}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"insert","lines":["t"],"id":11}],[{"start":{"row":7,"column":9},"end":{"row":7,"column":16},"action":"remove","lines":["comment"],"id":12},{"start":{"row":7,"column":9},"end":{"row":7,"column":10},"action":"insert","lines":["p"]}],[{"start":{"row":7,"column":10},"end":{"row":7,"column":11},"action":"insert","lines":["o"],"id":13}],[{"start":{"row":7,"column":11},"end":{"row":7,"column":12},"action":"insert","lines":["s"],"id":14}],[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":["t"],"id":15}],[{"start":{"row":4,"column":18},"end":{"row":4,"column":58},"action":"remove","lines":["'id', 'user_id', 'post_id', 'comment_id'"],"id":16}],[{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":[":"],"id":17}],[{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"insert","lines":["i"],"id":18}],[{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"insert","lines":["d"],"id":19}],[{"start":{"row":4,"column":21},"end":{"row":4,"column":22},"action":"insert","lines":[","],"id":20}],[{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"insert","lines":[" "],"id":21}],[{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"insert","lines":[":"],"id":22}],[{"start":{"row":4,"column":24},"end":{"row":4,"column":25},"action":"insert","lines":["u"],"id":23}],[{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"insert","lines":["s"],"id":24}],[{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["e"],"id":25}],[{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"insert","lines":["r"],"id":26}],[{"start":{"row":4,"column":24},"end":{"row":4,"column":28},"action":"remove","lines":["user"],"id":27},{"start":{"row":4,"column":24},"end":{"row":4,"column":38},"action":"insert","lines":["user_sender_id"]}],[{"start":{"row":4,"column":38},"end":{"row":4,"column":39},"action":"insert","lines":[","],"id":28}],[{"start":{"row":4,"column":39},"end":{"row":4,"column":40},"action":"insert","lines":[" "],"id":29}],[{"start":{"row":4,"column":40},"end":{"row":4,"column":41},"action":"insert","lines":[":"],"id":30}],[{"start":{"row":4,"column":41},"end":{"row":4,"column":42},"action":"insert","lines":["c"],"id":31}],[{"start":{"row":4,"column":42},"end":{"row":4,"column":43},"action":"insert","lines":["o"],"id":32}],[{"start":{"row":4,"column":43},"end":{"row":4,"column":44},"action":"insert","lines":["n"],"id":33}],[{"start":{"row":4,"column":44},"end":{"row":4,"column":45},"action":"insert","lines":["t"],"id":34}],[{"start":{"row":4,"column":45},"end":{"row":4,"column":46},"action":"insert","lines":["e"],"id":35}],[{"start":{"row":4,"column":46},"end":{"row":4,"column":47},"action":"insert","lines":["n"],"id":36}],[{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"insert","lines":["c"],"id":37}],[{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"remove","lines":["c"],"id":38}],[{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"insert","lines":["t"],"id":39}],[{"start":{"row":9,"column":32},"end":{"row":9,"column":41},"action":"remove","lines":["'user_id'"],"id":40},{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"insert","lines":[":"]}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"insert","lines":["u"],"id":41}],[{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"insert","lines":["s"],"id":42}],[{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"insert","lines":["e"],"id":43}],[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"insert","lines":["r"],"id":44}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":37},"action":"remove","lines":["user"],"id":45},{"start":{"row":9,"column":33},"end":{"row":9,"column":47},"action":"insert","lines":["user_sender_id"]}],[{"start":{"row":9,"column":24},"end":{"row":9,"column":31},"action":"remove","lines":["comment"],"id":46},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["p"]}],[{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["o"],"id":47}],[{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["s"],"id":48}],[{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"insert","lines":["t"],"id":49}],[{"start":{"row":9,"column":69},"end":{"row":9,"column":70},"action":"insert","lines":[","],"id":50}],[{"start":{"row":9,"column":70},"end":{"row":9,"column":71},"action":"insert","lines":[" "],"id":51}],[{"start":{"row":9,"column":71},"end":{"row":9,"column":72},"action":"insert","lines":[":"],"id":52}],[{"start":{"row":9,"column":72},"end":{"row":9,"column":73},"action":"insert","lines":["p"],"id":53}],[{"start":{"row":9,"column":73},"end":{"row":9,"column":74},"action":"insert","lines":["r"],"id":54}],[{"start":{"row":9,"column":74},"end":{"row":9,"column":75},"action":"insert","lines":["o"],"id":55}],[{"start":{"row":9,"column":75},"end":{"row":9,"column":76},"action":"insert","lines":["f"],"id":56}],[{"start":{"row":9,"column":76},"end":{"row":9,"column":77},"action":"insert","lines":["i"],"id":57}],[{"start":{"row":9,"column":77},"end":{"row":9,"column":78},"action":"insert","lines":["l"],"id":58}],[{"start":{"row":9,"column":78},"end":{"row":9,"column":79},"action":"insert","lines":["e"],"id":59}],[{"start":{"row":9,"column":79},"end":{"row":9,"column":80},"action":"insert","lines":["_"],"id":60}],[{"start":{"row":9,"column":80},"end":{"row":9,"column":81},"action":"insert","lines":["p"],"id":61}],[{"start":{"row":9,"column":81},"end":{"row":9,"column":82},"action":"insert","lines":["i"],"id":62}],[{"start":{"row":9,"column":82},"end":{"row":9,"column":83},"action":"insert","lines":["c"],"id":63}],[{"start":{"row":9,"column":83},"end":{"row":9,"column":84},"action":"insert","lines":["t"],"id":64}],[{"start":{"row":9,"column":84},"end":{"row":9,"column":85},"action":"insert","lines":["u"],"id":65}],[{"start":{"row":9,"column":85},"end":{"row":9,"column":86},"action":"insert","lines":["r"],"id":66}],[{"start":{"row":9,"column":86},"end":{"row":9,"column":87},"action":"insert","lines":["e"],"id":67}],[{"start":{"row":9,"column":88},"end":{"row":9,"column":89},"action":"remove","lines":[","],"id":68}],[{"start":{"row":0,"column":0},"end":{"row":11,"column":3},"action":"remove","lines":["collection @posts","# attributes :id, :user_sender_id, :user_receiver_id, :content, :community_id, :event_id","","node do |post|","    comment.slice(:id, :user_sender_id, :content)","end","","node do |post|","    {","        user: User.find(post[:user_sender_id]).slice(:f_name, :l_name, :profile_picture)","    }","end"],"id":69}],[{"start":{"row":0,"column":0},"end":{"row":11,"column":3},"action":"insert","lines":["collection @posts","# attributes :id, :user_sender_id, :user_receiver_id, :content, :community_id, :event_id","","node do |post|","    comment.slice(:id, :user_sender_id, :content)","end","","node do |post|","    {","        user: User.find(post[:user_sender_id]).slice(:f_name, :l_name, :profile_picture)","    }","end"],"id":70}],[{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"remove","lines":["t"],"id":74}],[{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"remove","lines":["n"],"id":75}],[{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"remove","lines":["e"],"id":76}],[{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"remove","lines":["m"],"id":77}],[{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"remove","lines":["m"],"id":78}],[{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"remove","lines":["o"],"id":79}],[{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"remove","lines":["c"],"id":80}],[{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"insert","lines":["p"],"id":81}],[{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"insert","lines":["o"],"id":82}],[{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["s"],"id":83}],[{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["t"],"id":84}]]},"timestamp":1450180595000}