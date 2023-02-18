RSpec.describe ImageProxyRuby do
  context 'ImageProxy quality method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add quality to operations' do
      image.quality(20)
      expect(image.operations).to eq ['q20']
    end
  end
end
