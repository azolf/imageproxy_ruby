# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add quality functionality to image
    module Quality
      def quality(quality_percentage)
        operations << "q#{quality_percentage}"

        self
      end
    end
  end
end
