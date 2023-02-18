module ImageProxyRuby
  module Operations
    module Quality
      def quality(quality_percentage)
        operations << "q#{quality_percentage}"

        self
      end
    end
  end
end