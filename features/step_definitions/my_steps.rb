Given(/^voy a la pantalla inicial$/) do
  visit '/'
end

Given(/^voy a la pantalla con puntaje$/) do
  visit '/'
end

Given(/^voy a la pantalla con suma$/) do
	visit '/'
end

#Then(/^veo "(.*?)"$/) do |titulo|
  #last_response.body.should =~ /#{titulo}/m
#end

Then(/^veo "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

Then(/^veo numero (\d+)$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end
