RSpec.describe ImageProxyRuby do
  context 'ImageProxy rotation method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add rotation to operations' do
      image.rotation(90)
      expect(image.operations).to eq ['r90']
    end
  end
end
