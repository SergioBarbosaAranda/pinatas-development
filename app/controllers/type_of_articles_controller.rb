class TypeOfArticlesController < ApplicationController
  before_action :set_type_of_article, only: [:show, :edit, :update]
  before_action :authenticate_admin!

  # GET /type_of_articles
  # GET /type_of_articles.json
  def index
    @type_of_articles = TypeOfArticle.all
  end

  # GET /type_of_articles/1
  # GET /type_of_articles/1.json
  def show
  end

  # GET /type_of_articles/new
  def new
    @type_of_article = TypeOfArticle.new
  end

  # GET /type_of_articles/1/edit
  def edit
  end

  # POST /type_of_articles
  # POST /type_of_articles.json
  def create
    @type_of_article = TypeOfArticle.new(type_of_article_params)

    respond_to do |format|
      if @type_of_article.save
        format.html { redirect_to @type_of_article, notice: 'Type of article was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_article }
      else
        format.html { render :new }
        format.json { render json: @type_of_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_articles/1
  # PATCH/PUT /type_of_articles/1.json
  def update
    respond_to do |format|
      if @type_of_article.update(type_of_article_params)
        format.html { redirect_to @type_of_article, notice: 'Type of article was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_article }
      else
        format.html { render :edit }
        format.json { render json: @type_of_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_articles/1
  # DELETE /type_of_articles/1.json
  def destroy
    @type_of_article.destroy
    respond_to do |format|
      format.html { redirect_to type_of_articles_url, notice: 'Type of article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_article
      @type_of_article = TypeOfArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_article_params
      params.require(:type_of_article).permit(:name, :description, :image)
    end
end
