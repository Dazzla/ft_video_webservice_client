# frozen_string_literal: true
require 'test/unit'
require 'rest-client'
require_relative 'test_helper'
require_relative '../test/data/ws_user'
require_relative '../video_test'
require_relative '../test/data/custom_request_data'

class VideoRestClientTest < VideoTest

  def setup
    @video_client = VideoWebserviceClient.new(WSUser.new, MIO_WS_URL + '/workflows')
    VCR.use_cassette 'create_resource' do
      @response = @video_client.create_resource(  {
                                                      definitionId:    12_387,
                                                      stringVariables: {
                                                          projectMetadata: "{\"project\": \"RESTCLIENT#{CustomRequestData.random_string(6)}\",\"section\": \"#{Config::Constants::DEFAULT_SECTION}\", \"brand\": \"#{Config::Constants::DEFAULT_BRAND}\"}"
                                                      }
                                                  })
    end

  end

  def test_can_create
    assert_kind_of(Hash, @response)
  end

  def test_can_retrieve
    @retrieved_resource_url = @response['href']
    VCR.use_cassette 'retrieve_resource' do
      @retrieved_resource = @video_client.retrieve_resource @retrieved_resource_url
    end
    info_logger :info, "RESOURCE: #{@retrieved_resource_url}"
    info_logger :info, "RETRIEVED RESOURCE: #{@retrieved_resource}"
    assert(@retrieved_resource.has_key? 'workflows')
  end

end
