class RelationshipsController < ApplicationController
  def show
    relationship = Relationship.find_by(id: params["id"])
    render json: relationship.as_json
  end

  def create
    relationship = Relationship.new(
      leader_id: params["leader_id"],
      follower_id: current_user.id,
    )
    relationship.save
    render json: relationship.as_json
  end

  def destroy
    relationship_id = params["id"]
    relationship = Relationship.find_by(id: relationship_id)
    relationship.destroy
    render json: { message: "Unfollowed successfully" }
  end
end
