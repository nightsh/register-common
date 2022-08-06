require 'zlib'

module RegisterCommon
  module Utils
    class GzipReader
      def open_stream(stream)
        gz = Zlib::GzipReader.new(stream)
        yield gz
      ensure
        gz.close
      end
    end
  end
end