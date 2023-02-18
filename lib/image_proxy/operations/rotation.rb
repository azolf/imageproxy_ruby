# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add rotation functionality to image
    module Rotation
      def rotation(degrees)
        operations << "r#{degrees}"

        self
      end
    end
  end
end
