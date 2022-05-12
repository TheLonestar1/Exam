require 'rails_helper'

RSpec.describe "Iv871Controller", type: :request do
     context 'Get #index' do
      it 'return a success response' do
        get iv871_index_path
        expect(response).to have_http_status(200)
      end
    end
    context 'Add student' do
      
      it 'return a success response' do
        get new_iv871_path
        expect(response).to have_http_status(200)
      end
      it 'add student' do
      
      get new_iv871_path
      expect(response).to have_http_status(200)
    end
  end
  context 'edit student' do
    student = Student.create(tittle: "Kirill", grady: 4)
    it 'return a success response' do
      get edit_iv871_path(id: student.id)
      expect(response).to have_http_status(200)
    end
  end
end
    
end
