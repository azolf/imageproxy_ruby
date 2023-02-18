RSpec.describe ImageProxyRuby do
  context 'ImageProxy smart crop method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add smart crop to operations' do
      image.smart_crop
      expect(image.operations).to eq ['sc']
    end
  end
end
