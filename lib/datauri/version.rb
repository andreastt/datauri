module DataUri

  # @private
  VERSION = File.read(File.join(File.dirname(__FILE__), '../..', 'VERSION')).strip.freeze

  #
  # Fetches DataUri's version number.
  #
  # @return [String] Current version of DataUri.
  #

  def self.version
    VERSION
  end

end
