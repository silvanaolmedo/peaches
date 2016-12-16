Given(/^voy a la pantalla inicial$/) do
  visit '/'
end

Given(/^voy a la pantalla con puntaje$/) do
  visit '/'
end

Given(/^voy a la pantalla con suma$/) do
	visit '/'
end

Given(/^voy a la pantalla con input box$/) do
  visit '/'
end

When(/^ingreso en respuesta\t(\d+)$/) do |arg1|
  fill_in("respuesta", :with => arg1)
	click_button("jugar")
end


#Then(/^veo "(.*?)"$/) do |titulo|
  #last_response.body.should =~ /#{titulo}/m
#end


Then(/^veo (\d+) en campo respuesta$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^veo "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{ Regexp.escape arg1 }/m
end

Then(/^veo numero (\d+)$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end


