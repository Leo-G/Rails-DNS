class WhoisController < ApplicationController
  def index

   end

    def show
	require 'whois'
    @domains = params[:domain].gsub /[^\w.]/, ""
    r = Whois::Client.new
    @c = r.lookup("#{@domains}")
    
   end
end
