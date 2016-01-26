require "rails_helper"

RSpec.describe MessageMailer, type: :mailer do
  describe 'create' do
    let(:message) { Message.new('Lucas', 'lucas@email.com', 'test email message') }
    let(:mail) { MessageMailer.new_message(message.name, message.email, message.message) }

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
