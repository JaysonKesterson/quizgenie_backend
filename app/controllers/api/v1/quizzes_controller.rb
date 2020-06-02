class Api::V1::QuizzesController < ApplicationController
    def index
        quizzes = Quiz.all
        render json: quizzes
    end

    def create
        quiz = Quiz.new(quiz_params)
        if quiz.save
            render json: quiz, status: :accepted
        else
            render json: {errors: quiz.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def quiz_params
        params.require(:quiz).permit(:name, :category)
    end
end
