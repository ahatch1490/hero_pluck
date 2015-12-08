require 'hero_pluck/shadowrun'
require 'nokogiri'

class HeroPluck
  def self.create_builder(hero)
    @doc = Nokogiri::XML(hero) 
    version = get_version(@doc)
    product = get_product(@doc) 
    case product
    when :shadowrun_v4
        return Parsers::Shadowrun.new(@doc)
    end 
  end
  def self.get_version(doc)
    doc.css('document public program version[version]')[0]['version']
  end
  def self.get_product(doc)
    #/Shadowrun/=~ doc.css('document public program programinfo')
    :shadowrun_v4
  end
end 
