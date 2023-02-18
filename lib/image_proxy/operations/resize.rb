# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add resize functionality to image
    module Resize
      def resize(width: nil, height: nil)
        operations << "#{width}x#{height}"

        self
      end
    end
  end
end
