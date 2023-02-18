module ImageProxyRuby
  module Operations
    module Rotation
      def rotation(degrees)
        operations << "r#{degrees}"

        self
      end
    end
  end
end