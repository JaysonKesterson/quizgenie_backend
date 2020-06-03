class QuizSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :questions
end
