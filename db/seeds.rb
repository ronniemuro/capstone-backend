# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.create(user_id: 1, post_content: "2222", sign: "sun")
Post.create(user_id: 1, post_content: "4444", sign: "moon")
Post.create(user_id: 1, post_content: "new moon today!", sign: "rising")

Relationship.create(leader_id: 1, follower_id: 2)
Relationship.create(leader_id: 1, follower_id: 3)
Relationship.create(leader_id: 2, follower_id: 1)
Relationship.create(leader_id: 2, follower_id: 3)
Relationship.create(leader_id: 3, follower_id: 2)

Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 2)
Like.create(user_id: 2, post_id: 3)
Like.create(user_id: 3, post_id: 1)
