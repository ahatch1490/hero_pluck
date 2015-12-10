require 'spec_helper'
require 'hero_pluck/shadowrun'
describe Parsers::Shadowrun do 
  let(:doc) do
    sr_hero = File.read('spec/fixtures/sr_hero.xml') 
    Nokogiri::XML(sr_hero)
  end
  it 'should take an sr document' do 
    sr = Parsers::Shadowrun.new(@doc) 
    assert_instance_of Parsers::Shadowrun , sr
  end
end
