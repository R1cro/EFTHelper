# frozen_string_literal: true

class MainController < ApplicationController
  layout "main"

  def index
    @main_props = { name: "PMC" }
  end
end
