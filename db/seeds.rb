#Clear DB
Comment.delete_all
Topic.delete_all
User.delete_all

#Create new users
user_ryan = User.create(firstname:"Ryan", lastname:"Giggs", email:"ryangiggs11@gmail.com")
user_paul = User.create(firstname:"Paul", lastname:"Scholes", email:"paulscholes18@gmail.com")

#Create 3 topics for Ryan
topic_1 = Topic.create(title:"Football", body:"Playing for MUFC", user: user_ryan)
topic_2 = Topic.create(title:"Retirement", body:"Good Life", user: user_ryan)
topic_3 = Topic.create(title:"Age", body:"Old man Giggsy", user: user_ryan)

#Create 3 topics for Paul
topic_4 = Topic.create(title:"Football Life", body:"Life in MUFC", user: user_paul)
topic_5 = Topic.create(title:"How to shoot", body:"With your boots", user: user_paul)
topic_6 = Topic.create(title:"How not to tackle", body:"Idk how to tackle", user: user_paul)

#Creating comments
comment_1 = Comment.create(body:"SAF best manager", topic: topic_1, user: user_ryan)
comment_2 = Comment.create(body:"Retirement rocks", topic: topic_2, user: user_ryan)
comment_3 = Comment.create(body:"Getting old all day errday", topic: topic_3, user: user_ryan)

comment_4 = Comment.create(body:"I am the best number 18", topic: topic_4, user: user_paul)
comment_5 = Comment.create(body:"Like a boss", topic: topic_5, user: user_paul)
comment_6 = Comment.create(body:"Dont tackle like me", topic: topic_6, user: user_paul)

comment_7 = Comment.create(body:"I shoot better than Scholes", topic: topic_5, user: user_ryan)
comment_8 = Comment.create(body:"Older but golder than Giggs", topic: topic_1, user: user_paul)
