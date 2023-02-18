module ImageProxyRuby
  module Operations
    module Resize

      def resize(width: nil, height: nil)
        operations << "#{width}x#{height}"

        self
      end
    end
  end
end