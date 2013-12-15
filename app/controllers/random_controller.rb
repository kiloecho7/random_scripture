class RandomController < ApplicationController


  def do_it
    render inline: RandomScriptureGenerator.new.do_it
  end


end
