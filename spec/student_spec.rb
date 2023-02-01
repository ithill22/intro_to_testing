require 'rspec'
require './lib/student'
# Add the 2 requires you will need here
# Domain Specific Language

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      
      expect(student).to be_instance_of(Student)
      # write the code to initialize a new student object
    end

    it 'has dynamic attributes' do
      student = Student.new('Penelope')
      student_2 = Student.new('Logan')

      expect(student.name).to eq('Penelope')
      expect(student_2.name).to eq('Logan')
      expect(student.cookies).to eq([])
      expect(student_2.cookies).to eq([])
    # test it has a name
    # test it has cookies
    end
   
    # test it can add cookies
  end

  describe '#add_cookie' do
    it 'adds a cookie to a student cookies array' do
      student = Student.new('Penelope')

      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
    end
  end  
end
