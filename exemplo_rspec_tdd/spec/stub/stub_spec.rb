require_relative '../../lib/stub calsses/course.rb'
require_relative '../../lib/stub calsses/student.rb'

describe 'Stub' do
  it '#graduated?' do
    student = Student.new
    course = Course.new
    allow(student).to receive(:graduated?).with(an_instance_of(Course)).and_return(true)
    graduated_student = student.graduated?(course)
    expect(graduated_student).to be true
  end

  it 'dynamic arguments' do
    student = Student.new
    allow(student).to receive(:foo) do |arg| # basically is when I have multiole arg based on condiotionals
      if arg == "hello"
        'ola'
      elsif arg == "hi"
        'oi'
      end
    end
    expect(student.foo("hello")).to eq('ola')
    expect(student.foo("hi")).to eq('oi')
  end

  it 'dynamic arg any instance'do
    student_one = Student.new
    student_two = Student.new
    allow_any_instance_of(Student).to receive(:bar).and_return true
    expect(student_one.bar).to be true
    expect(student_two.bar).to be true
  end

  it 'erros'do
  student = Student.new
  allow(student).to receive(:bar).and_raise(RuntimeError)
  expect{student.bar}.to raise_error(RuntimeError)
end
end
