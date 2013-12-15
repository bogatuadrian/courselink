require 'test_helper'

class FollowRelationshipsControllerTest < ActionController::TestCase
  setup do
    @follow_relationship = follow_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follow_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create follow_relationship" do
    assert_difference('FollowRelationship.count') do
      post :create, follow_relationship: { question_id: @follow_relationship.question_id, user_id: @follow_relationship.user_id }
    end

    assert_redirected_to follow_relationship_path(assigns(:follow_relationship))
  end

  test "should show follow_relationship" do
    get :show, id: @follow_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @follow_relationship
    assert_response :success
  end

  test "should update follow_relationship" do
    patch :update, id: @follow_relationship, follow_relationship: { question_id: @follow_relationship.question_id, user_id: @follow_relationship.user_id }
    assert_redirected_to follow_relationship_path(assigns(:follow_relationship))
  end

  test "should destroy follow_relationship" do
    assert_difference('FollowRelationship.count', -1) do
      delete :destroy, id: @follow_relationship
    end

    assert_redirected_to follow_relationships_path
  end
end
