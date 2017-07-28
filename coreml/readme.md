# Convert Model of Keras to coreml
Reference:
* https://developer.apple.com/documentation/coreml/converting_trained_models_to_core_ml#2880117
* http://machinelearningmastery.com/check-point-deep-learning-models-keras/ 
* http://www.merocode.com/coreml-coremltools/ 

1. output in model
coreml_model = coremltools.converters.keras.convert('keras_minst_1layer_softmax_trained_model.h5')
W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.1 instructions, but these are available on your machine and could speed up CPU computations.
W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use SSE4.2 instructions, but these are available on your machine and could speed up CPU computations.
W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX instructions, but these are available on your machine and could speed up CPU computations.
W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use AVX2 instructions, but these are available on your machine and could speed up CPU computations.
W tensorflow/core/platform/cpu_feature_guard.cc:45] The TensorFlow library wasn't compiled to use FMA instructions, but these are available on your machine and could speed up CPU computations.
0 : dense_1_input, <keras.engine.topology.InputLayer object at 0x11497d190>
1 : dense_1, <keras.layers.core.Dense object at 0x11497d090>
2 : activation_1, <keras.layers.core.Activation object at 0x114993210>


