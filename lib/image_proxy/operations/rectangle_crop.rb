# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add crop functionality to image
    module RectangleCrop
      def rectangle_crop(start_x: 0, start_y: 0, width: nil, height: nil)
        operations_str = "cx#{start_x}cy#{start_y}"
        operations_str += "cw#{width}" if width
        operations_str += "ch#{height}" if height

        operations << operations_str
        self
      end
    end
  end
end
