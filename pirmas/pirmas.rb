# frozen_string_literal: true

# This class checks if you passed the exam
class ExamTask
  def initialize(input_str)
    @grade = input_str.chomp.to_i
  end

  def check_grade
    return 'Neteisingai ivesti duomenys.' if @grade.negative? || @grade > 10
    return 'Egzaminas islaikytas.' if @grade > 5 && @grade <= 10

    'Egzaminas neislaikytas.'
  end
end

print 'Iveskite gauta pazymi: '
etask = ExamTask.new(gets)
puts etask.check_grade
