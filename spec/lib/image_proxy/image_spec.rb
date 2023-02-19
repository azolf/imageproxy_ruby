RSpec.describe ImageProxyRuby do
  context 'ImageProxy image' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add different operations to image' do
      image.rotation(90).smart_crop
      expect(image.url).to eq 'http://localhost:8080/r90,sc/http://test.jpg'
    end
  end
end
