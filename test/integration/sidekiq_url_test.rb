# frozen_string_literal: true

require 'test_helper'

class SidekiqUrlTest < ActionDispatch::IntegrationTest
  test 'problematic test' do
    p new_user_session_path

    get '/sidekiq'

    p new_user_session_path
  end
end
