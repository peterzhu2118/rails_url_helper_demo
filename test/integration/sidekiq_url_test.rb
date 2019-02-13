# frozen_string_literal: true

require 'test_helper'

class SidekiqUrlTest < ActionDispatch::IntegrationTest
  test 'problematic test' do
    p "new_user_session_path before request: #{new_user_session_path}"
    p "root_path before request: #{root_path}"

    get '/sidekiq'

    p "new_user_session_path after request: #{new_user_session_path}"
    p "root_path after request: #{root_path}"
  end
end
