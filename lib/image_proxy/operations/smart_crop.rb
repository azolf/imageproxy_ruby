# frozen_string_literal: true

module ImageProxyRuby
  module Operations
    # add smart crop functionaly to image
    module SmartCrop
      def smart_crop
        operations << 'sc'

        self
      end
    end
  end
end
