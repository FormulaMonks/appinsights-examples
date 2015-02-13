require 'sinatra'
require 'appinsights'

get '/hi' do
  'Check your Application Insights Dashboard! New metrics will arrive soon..'
end

get '/error' do
  fail 'ExceptionHandler should track this'
end
