module ImageProxyRuby
  module Operations
    module Format
      def jpeg
        operations << 'jpeg'

        self
      end

      def png
        operations << 'png'

        self
      end

      def tiff
        operations << 'tiff'

        self
      end
    end
  end
end