require 'rails_helper'

describe Services::Requests::Codeschool do
  let(:service) { Services::Requests::Codeschool.new }
  let(:response) { double(body: codeschool_response) }

  before do
    allow(HTTParty).to receive(:get).and_return(response)
  end

  describe '#get' do
    let(:subject) { service.get }

    context do
      it 'returns an array of Codeschool model' do
        subject.each do |s|
          expect(s).to be_a Services::Models::Codeschool
        end
      end
    end
  end
end
