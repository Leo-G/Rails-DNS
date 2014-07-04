class DnsController < ApplicationController
  def index

   end

    def show
@domains = params[:domain].gsub /[^\w.]/, ""
@records = params[:record]

 @result = `dig +short @8.8.8.8 ns #{@domains}`
  @ns = @result.split

   end
end
