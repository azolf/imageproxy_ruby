module ImageProxyRuby
  module Operations
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