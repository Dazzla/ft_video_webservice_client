When(/^I make a call to the metadata service$/) do
  metadata_client = MetadataDescriptionWebserviceClient.new(WSUser.new)
  response = metadata_client.retrieve_description_metadata
  expect(response).to include('metadataDefinitions')
end


When(/^I make a call to the Workflow service$/) do
  workflows_client = VideoWebserviceClient.new(WSUser.new, Config::Constants::MIO_WS_URL+'/workflows/')
  response = workflows_client.retrieve_resource
  expect(response).to include 'workflows'
end
