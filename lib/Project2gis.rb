class Project2gis
  attr_accessor :id
  attr_accessor :name
  attr_accessor :code
  attr_accessor :alias
  attr_accessor :language
  attr_accessor :grammatical_cases
  attr_accessor :country_code
  attr_accessor :timezone
  attr_accessor :actual_extent
  attr_accessor :centroid
  attr_accessor :min_zoomlevel
  attr_accessor :max_zoomlevel
  attr_accessor :zoomlevel
  attr_accessor :transport
  attr_accessor :traffic
  attr_accessor :flamp
  attr_accessor :firmscout
  attr_accessor :filialscount
  attr_accessor :rubricscount
  attr_accessor :geoscount
  attr_accessor :transport_routes_count

  def initialize(json)
    @id = json['id']
    @name = json['name']
    @code = json['code']
    @alias = json['alias']
    @language = json['language']
    @grammatical_cases = json['grammatical_cases']
    @country_code = json['country_code']
    @timezone = json['timezone']
    @actual_extent = json['actual_extent']
    @centroid = json['centroid']
    @min_zoomlevel = json['min_zoomlevel']
    @max_zoomlevel = json['max_zoomlevel']
    @zoomlevel = json['zoomlevel']
    @transport = json['transport']
    @traffic = json['traffic']
    @flamp = json['flamp']
    @firmscout = json['firmscout']
    @filialscount = json['filialscount']
    @rubricscount = json['rubricscount']
    @geoscount = json['geoscount']
    @transport_routes_count = json['transport_routes_count']
  end
end