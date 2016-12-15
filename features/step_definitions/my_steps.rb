Given(/^voy a la pantalla inicial$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

