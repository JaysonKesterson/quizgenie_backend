class Api::V1::QuizzesController < ApplicationController
    def index
        quizzes = Quiz.all
        render json: QuizSerializer.new(quizzes)
    end

    def create
        quiz = Quiz.new(quiz_params)
        if quiz.save
            params[:questions].each do |question|
                quiz.questions.build(content: question["content"], answer: question["answer"], quiz_id: quiz.id)
            quiz.save
            end
            render json: quiz, status: :accepted
        else
            render json: {errors: quiz.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def quiz_params
        params.require(:quiz).permit(:name, :category, :questions)
    end
end
