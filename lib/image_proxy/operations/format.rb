# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add format functionalities to image
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
