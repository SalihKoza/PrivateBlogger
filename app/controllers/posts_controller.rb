class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :set_categories, only: %i[new create edit update]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Blog yazısı başarıyla oluşturuldu."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Blog yazısı başarıyla güncellendi."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Blog yazısı başarıyla silindi."
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_categories
    @categories = Category.order(:name)
  end

  def post_params
    params.require(:post).permit(:title, :article, :status, category_ids: [])
  end
end