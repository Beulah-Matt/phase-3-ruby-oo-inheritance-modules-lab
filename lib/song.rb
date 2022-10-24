require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def self.all
    @@songs
  end

  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  def artist=(artist)
    @artist = artist
  end

end
