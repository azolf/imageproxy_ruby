RSpec.describe ImageProxyRuby do
  context 'ImageProxy resize method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add resize width to operations' do
      image.resize(width: 20)
      expect(image.operations).to eq ['20x']
    end

    it 'add resize height to operations' do
      image.resize(height: 20)
      expect(image.operations).to eq ['x20']
    end

    it 'add resize width height to operations' do
      image.resize(height: 20, width: 50)
      expect(image.operations).to eq ['50x20']
    end
  end
end
