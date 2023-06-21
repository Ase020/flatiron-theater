class ProductionsController < ApplicationController
  rescue_from ApplicationRecord::RecordInvalid, with: :render_unprocessable_entity
  wrap_parameters format: []

  def index
    productions = Production.all
    render json: productions, except: %i[created_at updated_at], status: :ok
  end

  def show
    production = Production.find_by(id: params[:id])
    if production
      render json: production, except: %i[created_at updated_at], status: :ok
    else
      render json: { error: 'production not found!' }, status: :not_found
    end
  end

  def create
    production = Production.create!(production_params)
    render json: production, except: %i[created_at updated_at], status: :ok
  rescue
    ActiveRecord::RecordInvalid => e
    render json: {error: e.record.errors}, status: :unprocessable_entity
  end

  def update
    production = Production.find_by(id: params[:id])
    if production
      production.update(production_params)
      render json: production, except: [:created_at, :updated_at], status: :accepted
    else
      render json: {error: "Production not updated!"}, status: :not_found
    end
  end

  def destroy
    production = Production.find_by(id:params[:id])
    if production
    production.destroy
    head :no_content
    else
      render json: {error: "production not found!"}, status: :not_found
    end
  end

  private

  def production_params
    params.permit(:title, :genre, :budget, :image, :description, :director, :ongoing)
  end

  def render_unprocessable_entity(e)
    render json: {error: e.record.errors}, status: :unprocessable_entity
  end
end
