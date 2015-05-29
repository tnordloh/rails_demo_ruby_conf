class AboutController < ApplicationController
  skip_before_action :authorize
  def description
  end
end
