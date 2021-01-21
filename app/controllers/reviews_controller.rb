class ReviewsController < ApplicationController
  before_action :set_review, only: [:create, :show, :edit, :update, :destroy]

  def index
    # @reviews = Review.all
    # render json: @reviews

    @reviews = ReviewsSerializer.new(Review.all).serializable_hash[:data].map{|hash| hash[:attributes]}
    render json: @reviews

    # render json: ReviewsSerializer.new(@reviews).serializable_hash[:data].map{|hash| hash[:attributes]}
  end

  def show
    @review = set_review  
    render json: @review
  end

  def edit
  end

  def create
    @review = current_user.reviews.build(review_params)
    #@review = Review.new(review_params)
    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors.full_messages.to_sentence, status: :unprocessable_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:comments, :user_id, :guitar_id)
    end
end


# class ReviewsController < ApplicationController
#   before_action :set_review, only: [:show, :update, :destroy]
#   # GET /reviews
#   def index
#     #@reviews = Review.all
#     @reviews = ReviewSerializer.new(Review.all).serializable_hash[:data].map{|hash| hash[:attributes]}
#     render json: @reviews
#   end
#   # GET /reviews/1
#   def show
#     @review = set_review  
#     render json: @review
#   end
#   # POST /reviews
#   def create
#     #@review = current_user.reviews.build(review_params)
#     @review = Review.new(review_params)
#     if @review.save
#       render json: @review, status: :created, location: @review
#     else
#       render json: @review.errors.full_messages.to_sentence, status: :unprocessable_entity
#     end
#   end
#   # PATCH/PUT /reviews/1
#   def update
#     if @review.update(review_params)
#       render json: @review
#     else
#       render json: @review.errors, status: :unprocessable_entity
#     end
#   end
#   # DELETE /reviews/1
#   def destroy
#     @review.destroy
#   end
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_review
#       @review = Review.find_by(id: params[:id])
#     end
#     # Only allow a trusted parameter "white list" through.
#     def review_params
#       params.require(:review).permit(:comment, :user_id, :product_id)
#     end
# end