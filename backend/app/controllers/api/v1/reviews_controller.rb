module Api
  module V1
    class ReviewsController < ApplicationController
      skip_before_action :verify_authenticity_token


      # Create a review
      def create
        review = Review.new(review_params)

        if review.save
          render json: serializer(review)
        else
          render json: errors(review), status: :unprocessable_entity
        end
      end

      # Destroy a review
      def destroy
        review = Review.find(params[:id])

        if review.destroy
          head :no_content
        else
          render json: errors(review), status: 422
        end
      end

      private
      # strong params
      def review_params
        params.require(:review).permit(:title, :description, :score, :airline_id)
      end

      def review
        @review ||= Review.find(params[:id])
      end

      # fast_jsonapi serializer
      def serializer(records, options = {})
        AirlineSerializer.new(records, options).serialized_json
      end

      # Errors
      def errors(record)
        { errors: record.errors.messages }
      end

    end
  end
end
