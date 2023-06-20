class CrewMembersController < ApplicationController
  def index
    crew_members = CrewMember.all
    render json: crew_members, except: [:created_at, :updated_at], status: :ok
  end

  def show
    crew_member = CrewMember.find_by(id: params[:id])
    if crew_member
    render json: crew_member, except: [:created_at, :updated_at], status: :ok
    else
      render json: {error: 'crew_member not found!'}, status: :not_found
    end
  end
end
