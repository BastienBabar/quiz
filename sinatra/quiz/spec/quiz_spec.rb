require_relative "spec_helper"
require_relative "../quiz.rb"

def app
  Quiz
end

describe Quiz do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
