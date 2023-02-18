# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add rotation functionality to image
    module Rotation
      VALID_ROTAION_DEGREES = [90, 180, 270]
      def rotation(degrees)
        raise 'Rotation degree is not valid' unless VALID_ROTAION_DEGREES.include?(degrees)
        operations << "r#{degrees}"

        self
      end
    end
  end
end
