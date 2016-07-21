# frozen_string_literal: true
require 'vcr'

VCR_LOG_FILE ||= File.expand_path(File.join(File.dirname(__FILE__), 'logs/vcr_log.log'))

VCR.configure do |c|
  c.cassette_library_dir = File.expand_path(File.join(File.dirname(__FILE__), 'test/vcr_cassettes'))
  c.hook_into :webmock
  #c.ignore_hosts 'master.dev.nativ-systems.com'
  c.ignore_localhost = true
  c.allow_http_connections_when_no_cassette = true
  c.debug_logger = File.open(VCR_LOG_FILE, 'w')
end
