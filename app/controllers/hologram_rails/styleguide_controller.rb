require_dependency "hologram_rails/application_controller"

module HologramRails
  class StyleguideController < ApplicationController
    include HighVoltage::StaticPage
    layout "hologram_rails"
  end
end
