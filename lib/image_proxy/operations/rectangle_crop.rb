module ImageProxyRuby
  module Operations
    module RectangleCrop
      def rectangle_crop(cx: 0, cy: 0, width: nil, height: nil)
        operations_str = "cx#{cx}cy#{cy}"
        operations_str += "cw#{width}" if width
        operations_str += "ch#{height}" if height

        operations << operations_str
        self
      end
    end
  end
end