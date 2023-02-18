RSpec.describe ImageProxyRuby do
  context 'ImageProxy rectangle method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add rectangle crop start_x to operations' do
      image.rectangle_crop(start_x: 50)
      expect(image.operations).to eq ['cx50cy0']
    end

    it 'add rectangle crop width to operations' do
      image.rectangle_crop(width: 50)
      expect(image.operations).to eq ['cx0cy0cw50']
    end

    it 'add rectangle crop height to operations' do
      image.rectangle_crop(height: 50)
      expect(image.operations).to eq ['cx0cy0ch50']
    end

    it 'add rectangle crop width and height to operations' do
      image.rectangle_crop(height: 50, width: 100)
      expect(image.operations).to eq ['cx0cy0cw100ch50']
    end
  end
end
