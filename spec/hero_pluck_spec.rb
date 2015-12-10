require 'spec_helper'
require 'hero_pluck'
require 'hero_pluck/shadowrun'
describe HeroPluck do
  it 'should be able to be created' do 
    assert_instance_of HeroPluck, HeroPluck.new 
  end
  describe 'create_builder' do 
    before do 
      @sr_hero = File.read('spec/fixtures/sr_hero.xml') 
    end 
    
    it 'should take a sr xml file and return a sr builder' do 
      actual = HeroPluck.create_builder(@sr_hero) 
      assert_instance_of Parsers::Shadowrun,  actual
    end
    
    it 'should take an xml document and find the version' do 
      expected = '7.3'
      @doc = Nokogiri::XML(@sr_hero)
      actual = HeroPluck.get_version(@doc) 
      assert_match actual, expected
    end 

    it 'should contain the description shadowrun ' do 
      doc = Nokogiri::XML(@sr_hero)
      actual = HeroPluck.get_product(doc) 
      assert_equal actual , :shadowrun_v4 
    end
  end
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
end 
