require 'cuba'
require 'appinsights'

AppInsights::CubaInstaller.init File.dirname(__FILE__)

Cuba.define do
  on get do
    on 'hi' do
      res.write 'Check your dashboard to see some metrics'
    end

    on 'error' do
      fail 'Failure. Check your dashboard to see the exception'
    end

    on root do
      res.redirect '/hi'
    end
  end
end
