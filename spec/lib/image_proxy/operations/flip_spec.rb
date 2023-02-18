RSpec.describe ImageProxyRuby do
  context 'ImageProxy flip method' do
    let(:image) do
      ImageProxyRuby::Image.new('http://test.jpg')
    end

    it 'add flip vertically to operations' do
      image.flip_vertically
      expect(image.operations).to eq ['fv']
    end


    it 'add flip horizantally to operations' do
      image.flip_horizontally
      expect(image.operations).to eq ['fh']
    end
  end
end
