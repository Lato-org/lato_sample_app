class App::ApplicationController < Lato::ApplicationController
  layout "lato/application"

  before_action :authenticate_session
end
