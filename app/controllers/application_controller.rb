# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def hello
    render html: "hello, motherfuckers! get ready for the new era."
  end
end
