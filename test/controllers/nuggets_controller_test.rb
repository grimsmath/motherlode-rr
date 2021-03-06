require 'test_helper'

class NuggetsControllerTest < ActionController::TestCase
  setup do
    @nugget = nuggets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nuggets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nugget" do
    assert_difference('Nugget.count') do
      post :create, nugget: { author_id_id: @nugget.author_id_id, body: @nugget.body, category_id_id: @nugget.category_id_id, published: @nugget.published, title: @nugget.title }
    end

    assert_redirected_to nugget_path(assigns(:nugget))
  end

  test "should show nugget" do
    get :show, id: @nugget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nugget
    assert_response :success
  end

  test "should update nugget" do
    patch :update, id: @nugget, nugget: { author_id_id: @nugget.author_id_id, body: @nugget.body, category_id_id: @nugget.category_id_id, published: @nugget.published, title: @nugget.title }
    assert_redirected_to nugget_path(assigns(:nugget))
  end

  test "should destroy nugget" do
    assert_difference('Nugget.count', -1) do
      delete :destroy, id: @nugget
    end

    assert_redirected_to nuggets_path
  end
end
