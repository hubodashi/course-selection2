class Student < ApplicationRecord
   has_many :teachers, :through => :teacher_relationship, :source => :teacher
   has_many :courses, :through => :course_relationship, :source => :course

   has_many :teacher_relationships
   has_many :course_relationships
end
