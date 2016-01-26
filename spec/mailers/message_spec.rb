require "rails_helper"

RSpec.describe MessageMailer, type: :mailer do
  describe 'create' do
    let(:message) { double(Message, name: 'Lucas', email: 'lucas@email.com', message: 'test email message') }
    let(:mail) { MessageMailer.new_message(message) }

    it 'renders the subject' do
      expect(mail.subject).to eql("Message from #{message.name} on bastienbarbé !")
    end

    it 'renders the receiver email' do
      expect(mail.to).to eql(['bastien.babar@gmail.com'])
    end

    it 'renders the sender email' do
      expect(mail.from).to eql([message.email])
    end
  end
end
