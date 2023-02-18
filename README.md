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
> The "q{qualityPercentage}" option can be used to specify the quality of the output file (JPEG only). If not specified, the default value of "95" is used.

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
> The size option takes the general form "{width}x{height}", where width and height are numbers. Integer values greater than 1 are interpreted as exact pixel values. Floats between 0 and 1 are interpreted as percentages of the original image size. If either value is omitted or set to 0, it will be automatically set to preserve the aspect ratio based on the other dimension. If a single number is provided (with no "x" separator), it will be used for both height and width.

> Depending on the size options specified, an image may be cropped to fit the requested size. In all cases, the original aspect ratio of the image will be preserved; imageproxy will never stretch the original image.

> When no explicit crop mode is specified, the following rules are followed:

> - If both width and height values are specified, the image will be scaled to fill the space, cropping if necessary to fit the exact dimension.

> - If only one of the width or height values is specified, the image will be resized to fit the specified dimension, scaling the other dimension as needed to maintain the aspect ratio.

> If the "fit" option is specified together with a width and height value, the image will be resized to fit within a containing box of the specified size. As always, the original aspect ratio will be preserved. Specifying the "fit" option with only one of either width or height does the same thing as if "fit" had not been specified.
### Rotation
```
image.rotation(20)
```

### Smart Crop
```
image.smart_crop
```




