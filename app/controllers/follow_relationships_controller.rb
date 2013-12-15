class FollowRelationshipsController < ApplicationController
  before_action :set_follow_relationship, only: [:show, :edit, :update, :destroy]

  # GET /follow_relationships
  # GET /follow_relationships.json
  def index
    @follow_relationships = FollowRelationship.all
  end

  # GET /follow_relationships/1
  # GET /follow_relationships/1.json
  def show
  end

  # GET /follow_relationships/new
  def new
    @follow_relationship = FollowRelationship.new
  end

  # GET /follow_relationships/1/edit
  def edit
  end

  # POST /follow_relationships
  # POST /follow_relationships.json
  def create
    @follow_relationship = FollowRelationship.new(follow_relationship_params)

    respond_to do |format|
      if @follow_relationship.save
        format.html { redirect_to @follow_relationship, notice: 'Follow relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @follow_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @follow_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follow_relationships/1
  # PATCH/PUT /follow_relationships/1.json
  def update
    respond_to do |format|
      if @follow_relationship.update(follow_relationship_params)
        format.html { redirect_to @follow_relationship, notice: 'Follow relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @follow_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_relationships/1
  # DELETE /follow_relationships/1.json
  def destroy
    @follow_relationship.destroy
    respond_to do |format|
      format.html { redirect_to follow_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow_relationship
      @follow_relationship = FollowRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follow_relationship_params
      params.require(:follow_relationship).permit(:user_id, :question_id)
    end
end
