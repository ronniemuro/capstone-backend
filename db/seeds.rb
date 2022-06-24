# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Test name", username: "username", email: "test@test.com", password: "password", password_confirmation: "password", profile_pic: "pic.img", sun: "sun", moon: "moon", rising: "rising")
User.create(name: "Test name 2", username: "username2", email: "test2@test.com", password: "password", password_confirmation: "password", profile_pic: "pic.img", sun: "sun2", moon: "moon2", rising: "rising2")
User.create(name: "Test name 3", username: "username3", email: "test3@test.com", password: "password", password_confirmation: "password", profile_pic: "pic.img", sun: "sun3", moon: "moon3", rising: "rising3")

Post.create(user_id: 1, post_content: "2222", sign_type: "sun", sign: "libra")
Post.create(user_id: 1, post_content: "4444", sign_type: "moon", sign: "scorpio")
Post.create(user_id: 1, post_content: "new moon today!", sign_type: "rising", sign: "pisces")

Relationship.create(leader_id: 1, follower_id: 2)
Relationship.create(leader_id: 1, follower_id: 3)
Relationship.create(leader_id: 2, follower_id: 1)
Relationship.create(leader_id: 2, follower_id: 3)
Relationship.create(leader_id: 3, follower_id: 2)

Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 2)
Like.create(user_id: 2, post_id: 3)
Like.create(user_id: 3, post_id: 1)

Comment.create(post_id: 1, user_id: 2, comment: "love that angel number")
Comment.create(post_id: 2, user_id: 2, comment: "we have the same moon")
Comment.create(post_id: 5, user_id: 3, comment: "love me some red")
Comment.create(post_id: 3, user_id: 3, comment: "i am ready for this!")
