# ImageProxy Ruby
Minimalist ruby gem which is programmatic stream capable interface for [ImageProxy](https://github.com/willnorris/imageproxy) server.

Supports multiple image operations such as resize, crop, rotate... and both local and remote URL based image source processing.

## Installation

`gem install imageproxy_ruby`

or add the line below to your Gemfile

`gem 'imageproxy_ruby'`

## Configurations

You need to set the ImageProxy server address like this.
```
ImageProxyRuby.configure do |config|
  # You could set it directly or getting it from ENV variables
  config.server = 'http://localhost:8080/'
end
```

Also for rails application you could create an initializer at `config/initializers/imageproxy.rb`

## Operations

- Flip Vertically
- Flip Horizantally
- Convert Format to jpeg, png, tiff
- Quality
- Rectangle Crop
- Resize
- Rotation
- Smart Crop

All the options are as same as the ImageProxy server documentation.

## How to Use
First of all create your Image and then you could add different operations to it.

```
  image = ImageProxyRuby::Image.new('http://test.jpg')
```

These are the methods you could use.

You could read all the details in [ImageProxy Documentations](https://pkg.go.dev/willnorris.com/go/imageproxy#ParseOptions)

### Flip Vertically
```
image.flip_vertically
```

### Flip Horizantally
```
image.flip_horizontally
```

### Format

#### JPEG
```
image.jpeg
```

#### PNG
```
image.png
```

#### TIFF
```
image.tiff
```

### Quality
```
image.quality(20)
```

### Rectangle Crop
crop to 400x300px starting at (175,0)

```
image.rectangle_crop(start_x: 175, width: 400, height: 300)
```

> For all options, integer values are interpreted as exact pixel values and floats between 0 and 1 are interpreted as percentages of the original image size. Negative values for start_x and start_y are measured from the right and bottom edges of the image, respectively.

> If the crop width or height exceed the width or height of the image, the crop width or height will be adjusted, preserving the specified start_x and start_y values. Rectangular crop is applied before any other transformations.

### Resize
```
image.resize(30)
```

### Rotation
```
image.rotation(20)
```

### Smart Crop
```
image.smart_crop
```




