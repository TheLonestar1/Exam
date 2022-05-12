require 'rails_helper'

RSpec.describe Student, type: :model do
    context 'validation test' do
        it 'shoud save student' do
          stud = Student.new(tittle: 'Kirill', grady: 4).save
          expect(stud).to eq(true)
        end
      end
end
