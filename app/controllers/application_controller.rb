class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'securerandom'
  require 'carrierwave/orm/activerecord'
end
