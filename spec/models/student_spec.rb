require 'spec_helper'

describe Student do

  before do
    @student = Student.new(firstname: "Example Student", lastname: "Student", student_number: "123456789", grade_id: 2, esol_group_id: 2)
  end

  subject { @student }

  it { should respond_to(:firstname) }
  it { should respond_to(:lastname) }
  it { should respond_to(:grade_id) }
  it { should respond_to(:esol_group_id) }

  it { should be_valid }

  describe "when name is not present" do
    before { @student.firstname = " " }
    it { should_not be_valid }
  end

end
