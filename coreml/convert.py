import coremltools
coreml_model = coremltools.converters.caffe.convert('my_caffe_model.caffemodel')