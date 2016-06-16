require 'test_helper'

class TypeOfArticlesControllerTest < ActionController::TestCase
  setup do
    @type_of_article = type_of_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_of_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_of_article" do
    assert_difference('TypeOfArticle.count') do
      post :create, type_of_article: { description: @type_of_article.description, image: @type_of_article.image, name: @type_of_article.name }
    end

    assert_redirected_to type_of_article_path(assigns(:type_of_article))
  end

  test "should show type_of_article" do
    get :show, id: @type_of_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_of_article
    assert_response :success
  end

  test "should update type_of_article" do
    patch :update, id: @type_of_article, type_of_article: { description: @type_of_article.description, image: @type_of_article.image, name: @type_of_article.name }
    assert_redirected_to type_of_article_path(assigns(:type_of_article))
  end

  test "should destroy type_of_article" do
    assert_difference('TypeOfArticle.count', -1) do
      delete :destroy, id: @type_of_article
    end

    assert_redirected_to type_of_articles_path
  end
end
