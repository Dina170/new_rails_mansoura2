# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


u1 = User.create!(name: "dina", email: "dina@test.com")
u2 = User.create!(name: "sara", email: "sara@test.com")

e1 = Editor.create!(name: "editor1")
e2 = Editor.create!(name: "editor2")

p1 = Post.create!(title: "post 1", content: "content 1", creator: u1)
p2 = Post.create!(title: "post 2", content: "content 2", creator: u2)

PostEditor.create!(post: p1, editor: e1)
PostEditor.create!(post: p1, editor: e2)
PostEditor.create!(post: p2, editor: e2)
