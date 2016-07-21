# frozen_string_literal: true
require 'test/unit'
require_relative 'test/data/ws_user'
require_relative 'config/config'
require_relative 'video_test'

class VideoTest < Test::Unit::TestCase

  include Config::Constants
  include Config::Logging

end
