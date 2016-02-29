require 'rails_helper'

describe Services::Responses::Codeschool do
  context '#model' do
    let(:response) { codeschool_response }
    let(:model) { Services::Responses::Codeschool.new(response).models }

    it { expect(model.nil?).to eq false }

    it 'returns the codeschool model' do
      model.each do |m|
        expect(m).to be_a Services::Models::Codeschool
      end
    end
  end
end
