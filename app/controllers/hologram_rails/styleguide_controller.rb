require_dependency "hologram_rails/application_controller"

module HologramRails
  class StyleguideController < ApplicationController
    include HighVoltage::StaticPage
  end
end
