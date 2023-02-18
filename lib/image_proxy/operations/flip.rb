# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add flip functionalities to image
    module Flip
      def flip_vertically
        operations << 'fv'

        self
      end

      def flip_horizontally
        operations << 'fh'

        self
      end
    end
  end
end
