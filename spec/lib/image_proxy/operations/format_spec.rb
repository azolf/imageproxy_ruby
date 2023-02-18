RSpec.describe ImageProxyRuby do
  context 'ImageProxy format method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add jpeg to operations' do
      image.jpeg
      expect(image.operations).to eq ['jpeg']
    end

    it 'add png to operations' do
      image.png
      expect(image.operations).to eq ['png']
    end

    it 'add tiff to operations' do
      image.tiff
      expect(image.operations).to eq ['tiff']
    end
  end
end
