require 'spec_helper'
require 'rspec'
#require_relative './pottermore/cli'
#require_relative './pottermore/scraper'

#describe "Pottermore" do

 # it "#call"
 it "has a @all_book that allows books to be displayed on cli"
 # @all_book to_eq(Pottermore::Scraper.new)
  expect(call).to have_phrase("Welcome to Pottermore!")#I have been unable to create good tests for my gem.
 # end
end
  it 'has a version number' do
  expect(Pottermore::VERSION).not_to be nil
end

  it 'does something useful' do
    expect(false).to eq(true)
 # end
end
