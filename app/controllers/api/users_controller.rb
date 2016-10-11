class Api::UsersController < ApplicationController
  skip_before_filter :parse_request, only: [:show]
end


