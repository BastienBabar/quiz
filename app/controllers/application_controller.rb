class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def index
    @learnings = request_codeschool
    render "pages/index"
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  private
  def request_codeschool
    ::Services::Requests::Codeschool.new.get
  end
end
