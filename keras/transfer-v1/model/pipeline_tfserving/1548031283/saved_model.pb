ĺ%
 ÷
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Ý
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
E
Relu6
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
9
Softmax
logits"T
softmax"T"
Ttype:
2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.12.02v1.12.0-0-ga6d8ffae09šÖ#

input_1Placeholder*
dtype0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*6
shape-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

conv1_pad/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:

conv1_pad/PadPadinput_1conv1_pad/Pad/paddings*
	Tpaddings0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
§
-conv1/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@conv1/kernel*%
valueB"             *
dtype0*
_output_shapes
:

+conv1/kernel/Initializer/random_uniform/minConst*
_class
loc:@conv1/kernel*
valueB
 *OSž*
dtype0*
_output_shapes
: 

+conv1/kernel/Initializer/random_uniform/maxConst*
_class
loc:@conv1/kernel*
valueB
 *OS>*
dtype0*
_output_shapes
: 
í
5conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*
_class
loc:@conv1/kernel*
seed2 
Î
+conv1/kernel/Initializer/random_uniform/subSub+conv1/kernel/Initializer/random_uniform/max+conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/kernel*
_output_shapes
: 
č
+conv1/kernel/Initializer/random_uniform/mulMul5conv1/kernel/Initializer/random_uniform/RandomUniform+conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@conv1/kernel*&
_output_shapes
: 
Ú
'conv1/kernel/Initializer/random_uniformAdd+conv1/kernel/Initializer/random_uniform/mul+conv1/kernel/Initializer/random_uniform/min*
_class
loc:@conv1/kernel*&
_output_shapes
: *
T0
Ž
conv1/kernelVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameconv1/kernel*
_class
loc:@conv1/kernel
i
-conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1/kernel*
_output_shapes
: 

conv1/kernel/AssignAssignVariableOpconv1/kernel'conv1/kernel/Initializer/random_uniform*
_class
loc:@conv1/kernel*
dtype0

 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*
_class
loc:@conv1/kernel*
dtype0*&
_output_shapes
: 
d
conv1/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
p
conv1/Conv2D/ReadVariableOpReadVariableOpconv1/kernel*
dtype0*&
_output_shapes
: 
ý
conv1/Conv2DConv2Dconv1_pad/Padconv1/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 

conv1_bn/gamma/Initializer/onesConst*!
_class
loc:@conv1_bn/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
¨
conv1_bn/gammaVarHandleOp*
shared_nameconv1_bn/gamma*!
_class
loc:@conv1_bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
m
/conv1_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1_bn/gamma*
_output_shapes
: 

conv1_bn/gamma/AssignAssignVariableOpconv1_bn/gammaconv1_bn/gamma/Initializer/ones*!
_class
loc:@conv1_bn/gamma*
dtype0

"conv1_bn/gamma/Read/ReadVariableOpReadVariableOpconv1_bn/gamma*!
_class
loc:@conv1_bn/gamma*
dtype0*
_output_shapes
: 

conv1_bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv1_bn/beta*
valueB *    
Ľ
conv1_bn/betaVarHandleOp* 
_class
loc:@conv1_bn/beta*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameconv1_bn/beta
k
.conv1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1_bn/beta*
_output_shapes
: 

conv1_bn/beta/AssignAssignVariableOpconv1_bn/betaconv1_bn/beta/Initializer/zeros* 
_class
loc:@conv1_bn/beta*
dtype0

!conv1_bn/beta/Read/ReadVariableOpReadVariableOpconv1_bn/beta*
_output_shapes
: * 
_class
loc:@conv1_bn/beta*
dtype0

&conv1_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *'
_class
loc:@conv1_bn/moving_mean*
valueB *    
ş
conv1_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameconv1_bn/moving_mean*'
_class
loc:@conv1_bn/moving_mean*
	container *
shape: 
y
5conv1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1_bn/moving_mean*
_output_shapes
: 
Ł
conv1_bn/moving_mean/AssignAssignVariableOpconv1_bn/moving_mean&conv1_bn/moving_mean/Initializer/zeros*'
_class
loc:@conv1_bn/moving_mean*
dtype0
˘
(conv1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv1_bn/moving_mean*'
_class
loc:@conv1_bn/moving_mean*
dtype0*
_output_shapes
: 
Ł
)conv1_bn/moving_variance/Initializer/onesConst*+
_class!
loc:@conv1_bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 
Ć
conv1_bn/moving_varianceVarHandleOp*
_output_shapes
: *)
shared_nameconv1_bn/moving_variance*+
_class!
loc:@conv1_bn/moving_variance*
	container *
shape: *
dtype0

9conv1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1_bn/moving_variance*
_output_shapes
: 
˛
conv1_bn/moving_variance/AssignAssignVariableOpconv1_bn/moving_variance)conv1_bn/moving_variance/Initializer/ones*+
_class!
loc:@conv1_bn/moving_variance*
dtype0
Ž
,conv1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv1_bn/moving_variance*+
_class!
loc:@conv1_bn/moving_variance*
dtype0*
_output_shapes
: 
b
conv1_bn/ReadVariableOpReadVariableOpconv1_bn/gamma*
dtype0*
_output_shapes
: 
c
conv1_bn/ReadVariableOp_1ReadVariableOpconv1_bn/beta*
dtype0*
_output_shapes
: 
w
&conv1_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv1_bn/moving_mean*
dtype0*
_output_shapes
: 
}
(conv1_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv1_bn/moving_variance*
dtype0*
_output_shapes
: 
Ý
conv1_bn/FusedBatchNormFusedBatchNormconv1/Conv2Dconv1_bn/ReadVariableOpconv1_bn/ReadVariableOp_1&conv1_bn/FusedBatchNorm/ReadVariableOp(conv1_bn/FusedBatchNorm/ReadVariableOp_1*
T0*
data_formatNHWC*Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ : : : : *
is_training( *
epsilon%o:
S
conv1_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
~
conv1_relu/Relu6Relu6conv1_bn/FusedBatchNorm*
T0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ 
Ă
;conv_dw_1/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_1/depthwise_kernel*%
valueB"             *
dtype0*
_output_shapes
:
­
9conv_dw_1/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_1/depthwise_kernel*
valueB
 *ž*
dtype0*
_output_shapes
: 
­
9conv_dw_1/depthwise_kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *-
_class#
!loc:@conv_dw_1/depthwise_kernel*
valueB
 *>

Cconv_dw_1/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_1/depthwise_kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0*-
_class#
!loc:@conv_dw_1/depthwise_kernel*
seed2 

9conv_dw_1/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_1/depthwise_kernel/Initializer/random_uniform/max9conv_dw_1/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_1/depthwise_kernel*
_output_shapes
: 
 
9conv_dw_1/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_1/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_1/depthwise_kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0*-
_class#
!loc:@conv_dw_1/depthwise_kernel

5conv_dw_1/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_1/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_1/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_1/depthwise_kernel*&
_output_shapes
: 
Ř
conv_dw_1/depthwise_kernelVarHandleOp*-
_class#
!loc:@conv_dw_1/depthwise_kernel*
	container *
shape: *
dtype0*
_output_shapes
: *+
shared_nameconv_dw_1/depthwise_kernel

;conv_dw_1/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_1/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_1/depthwise_kernel/AssignAssignVariableOpconv_dw_1/depthwise_kernel5conv_dw_1/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_1/depthwise_kernel*
dtype0
Ŕ
.conv_dw_1/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_1/depthwise_kernel*&
_output_shapes
: *-
_class#
!loc:@conv_dw_1/depthwise_kernel*
dtype0

"conv_dw_1/depthwise/ReadVariableOpReadVariableOpconv_dw_1/depthwise_kernel*
dtype0*&
_output_shapes
: 
r
conv_dw_1/depthwise/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"             
r
!conv_dw_1/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_1/depthwiseDepthwiseConv2dNativeconv1_relu/Relu6"conv_dw_1/depthwise/ReadVariableOp*
data_formatNHWC*
strides
*
paddingSAME*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
	dilations
*
T0

#conv_dw_1_bn/gamma/Initializer/onesConst*
_output_shapes
: *%
_class
loc:@conv_dw_1_bn/gamma*
valueB *  ?*
dtype0
´
conv_dw_1_bn/gammaVarHandleOp*#
shared_nameconv_dw_1_bn/gamma*%
_class
loc:@conv_dw_1_bn/gamma*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3conv_dw_1_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_1_bn/gamma*
_output_shapes
: 

conv_dw_1_bn/gamma/AssignAssignVariableOpconv_dw_1_bn/gamma#conv_dw_1_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_1_bn/gamma*
dtype0

&conv_dw_1_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/gamma*%
_class
loc:@conv_dw_1_bn/gamma*
dtype0*
_output_shapes
: 

#conv_dw_1_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_1_bn/beta*
valueB *    *
dtype0*
_output_shapes
: 
ą
conv_dw_1_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv_dw_1_bn/beta*$
_class
loc:@conv_dw_1_bn/beta*
	container *
shape: 
s
2conv_dw_1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_1_bn/beta*
_output_shapes
: 

conv_dw_1_bn/beta/AssignAssignVariableOpconv_dw_1_bn/beta#conv_dw_1_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_1_bn/beta*
dtype0

%conv_dw_1_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/beta*$
_class
loc:@conv_dw_1_bn/beta*
dtype0*
_output_shapes
: 
¤
*conv_dw_1_bn/moving_mean/Initializer/zerosConst*
_output_shapes
: *+
_class!
loc:@conv_dw_1_bn/moving_mean*
valueB *    *
dtype0
Ć
conv_dw_1_bn/moving_meanVarHandleOp*
_output_shapes
: *)
shared_nameconv_dw_1_bn/moving_mean*+
_class!
loc:@conv_dw_1_bn/moving_mean*
	container *
shape: *
dtype0

9conv_dw_1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_1_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_1_bn/moving_mean/AssignAssignVariableOpconv_dw_1_bn/moving_mean*conv_dw_1_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_1_bn/moving_mean*
dtype0
Ž
,conv_dw_1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/moving_mean*
dtype0*
_output_shapes
: *+
_class!
loc:@conv_dw_1_bn/moving_mean
Ť
-conv_dw_1_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_1_bn/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 
Ň
conv_dw_1_bn/moving_varianceVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *-
shared_nameconv_dw_1_bn/moving_variance*/
_class%
#!loc:@conv_dw_1_bn/moving_variance

=conv_dw_1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_1_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_1_bn/moving_variance/AssignAssignVariableOpconv_dw_1_bn/moving_variance-conv_dw_1_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_1_bn/moving_variance*
dtype0
ş
0conv_dw_1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/moving_variance*
dtype0*
_output_shapes
: */
_class%
#!loc:@conv_dw_1_bn/moving_variance
j
conv_dw_1_bn/ReadVariableOpReadVariableOpconv_dw_1_bn/gamma*
dtype0*
_output_shapes
: 
k
conv_dw_1_bn/ReadVariableOp_1ReadVariableOpconv_dw_1_bn/beta*
dtype0*
_output_shapes
: 

*conv_dw_1_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_1_bn/moving_mean*
dtype0*
_output_shapes
: 

,conv_dw_1_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_1_bn/moving_variance*
dtype0*
_output_shapes
: 
ř
conv_dw_1_bn/FusedBatchNormFusedBatchNormconv_dw_1/depthwiseconv_dw_1_bn/ReadVariableOpconv_dw_1_bn/ReadVariableOp_1*conv_dw_1_bn/FusedBatchNorm/ReadVariableOp,conv_dw_1_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ : : : : *
is_training( *
epsilon%o:*
T0
W
conv_dw_1_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_1_relu/Relu6Relu6conv_dw_1_bn/FusedBatchNorm*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ *
T0
Ż
1conv_pw_1/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv_pw_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:

/conv_pw_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv_pw_1/kernel*
valueB
 *  ž

/conv_pw_1/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_1/kernel*
valueB
 *  >*
dtype0*
_output_shapes
: 
ů
9conv_pw_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*#
_class
loc:@conv_pw_1/kernel*
seed2 
Ţ
/conv_pw_1/kernel/Initializer/random_uniform/subSub/conv_pw_1/kernel/Initializer/random_uniform/max/conv_pw_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_1/kernel*
_output_shapes
: 
ř
/conv_pw_1/kernel/Initializer/random_uniform/mulMul9conv_pw_1/kernel/Initializer/random_uniform/RandomUniform/conv_pw_1/kernel/Initializer/random_uniform/sub*#
_class
loc:@conv_pw_1/kernel*&
_output_shapes
: @*
T0
ę
+conv_pw_1/kernel/Initializer/random_uniformAdd/conv_pw_1/kernel/Initializer/random_uniform/mul/conv_pw_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_1/kernel*&
_output_shapes
: @
ş
conv_pw_1/kernelVarHandleOp*
	container *
shape: @*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_1/kernel*#
_class
loc:@conv_pw_1/kernel
q
1conv_pw_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_1/kernel*
_output_shapes
: 

conv_pw_1/kernel/AssignAssignVariableOpconv_pw_1/kernel+conv_pw_1/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_1/kernel*
dtype0
˘
$conv_pw_1/kernel/Read/ReadVariableOpReadVariableOpconv_pw_1/kernel*#
_class
loc:@conv_pw_1/kernel*
dtype0*&
_output_shapes
: @
h
conv_pw_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv_pw_1/Conv2D/ReadVariableOpReadVariableOpconv_pw_1/kernel*
dtype0*&
_output_shapes
: @

conv_pw_1/Conv2DConv2Dconv_dw_1_relu/Relu6conv_pw_1/Conv2D/ReadVariableOp*
paddingSAME*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

#conv_pw_1_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_pw_1_bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
´
conv_pw_1_bn/gammaVarHandleOp*#
shared_nameconv_pw_1_bn/gamma*%
_class
loc:@conv_pw_1_bn/gamma*
	container *
shape:@*
dtype0*
_output_shapes
: 
u
3conv_pw_1_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_1_bn/gamma*
_output_shapes
: 

conv_pw_1_bn/gamma/AssignAssignVariableOpconv_pw_1_bn/gamma#conv_pw_1_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_1_bn/gamma*
dtype0

&conv_pw_1_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/gamma*
_output_shapes
:@*%
_class
loc:@conv_pw_1_bn/gamma*
dtype0

#conv_pw_1_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_1_bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
ą
conv_pw_1_bn/betaVarHandleOp*$
_class
loc:@conv_pw_1_bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_1_bn/beta
s
2conv_pw_1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_1_bn/beta*
_output_shapes
: 

conv_pw_1_bn/beta/AssignAssignVariableOpconv_pw_1_bn/beta#conv_pw_1_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_1_bn/beta*
dtype0

%conv_pw_1_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/beta*$
_class
loc:@conv_pw_1_bn/beta*
dtype0*
_output_shapes
:@
¤
*conv_pw_1_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_1_bn/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ć
conv_pw_1_bn/moving_meanVarHandleOp*)
shared_nameconv_pw_1_bn/moving_mean*+
_class!
loc:@conv_pw_1_bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
: 

9conv_pw_1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_1_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_1_bn/moving_mean/AssignAssignVariableOpconv_pw_1_bn/moving_mean*conv_pw_1_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_1_bn/moving_mean*
dtype0
Ž
,conv_pw_1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/moving_mean*
_output_shapes
:@*+
_class!
loc:@conv_pw_1_bn/moving_mean*
dtype0
Ť
-conv_pw_1_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_1_bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ň
conv_pw_1_bn/moving_varianceVarHandleOp*/
_class%
#!loc:@conv_pw_1_bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_1_bn/moving_variance

=conv_pw_1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_1_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_1_bn/moving_variance/AssignAssignVariableOpconv_pw_1_bn/moving_variance-conv_pw_1_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_1_bn/moving_variance*
dtype0
ş
0conv_pw_1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/moving_variance*/
_class%
#!loc:@conv_pw_1_bn/moving_variance*
dtype0*
_output_shapes
:@
j
conv_pw_1_bn/ReadVariableOpReadVariableOpconv_pw_1_bn/gamma*
dtype0*
_output_shapes
:@
k
conv_pw_1_bn/ReadVariableOp_1ReadVariableOpconv_pw_1_bn/beta*
dtype0*
_output_shapes
:@

*conv_pw_1_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_1_bn/moving_mean*
dtype0*
_output_shapes
:@

,conv_pw_1_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_1_bn/moving_variance*
dtype0*
_output_shapes
:@
ő
conv_pw_1_bn/FusedBatchNormFusedBatchNormconv_pw_1/Conv2Dconv_pw_1_bn/ReadVariableOpconv_pw_1_bn/ReadVariableOp_1*conv_pw_1_bn/FusedBatchNorm/ReadVariableOp,conv_pw_1_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@*
is_training( 
W
conv_pw_1_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_1_relu/Relu6Relu6conv_pw_1_bn/FusedBatchNorm*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@*
T0

conv_pad_2/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
Ą
conv_pad_2/PadPadconv_pw_1_relu/Relu6conv_pad_2/Pad/paddings*
	Tpaddings0*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@*
T0
Ă
;conv_dw_2/depthwise_kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*-
_class#
!loc:@conv_dw_2/depthwise_kernel*%
valueB"      @      *
dtype0
­
9conv_dw_2/depthwise_kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *-
_class#
!loc:@conv_dw_2/depthwise_kernel*
valueB
 *śhĎ˝
­
9conv_dw_2/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_2/depthwise_kernel*
valueB
 *śhĎ=*
dtype0*
_output_shapes
: 

Cconv_dw_2/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_2/depthwise_kernel/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@conv_dw_2/depthwise_kernel*
seed2 *
dtype0*&
_output_shapes
:@*

seed 

9conv_dw_2/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_2/depthwise_kernel/Initializer/random_uniform/max9conv_dw_2/depthwise_kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*-
_class#
!loc:@conv_dw_2/depthwise_kernel
 
9conv_dw_2/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_2/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_2/depthwise_kernel/Initializer/random_uniform/sub*&
_output_shapes
:@*
T0*-
_class#
!loc:@conv_dw_2/depthwise_kernel

5conv_dw_2/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_2/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_2/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_2/depthwise_kernel*&
_output_shapes
:@
Ř
conv_dw_2/depthwise_kernelVarHandleOp*+
shared_nameconv_dw_2/depthwise_kernel*-
_class#
!loc:@conv_dw_2/depthwise_kernel*
	container *
shape:@*
dtype0*
_output_shapes
: 

;conv_dw_2/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_2/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_2/depthwise_kernel/AssignAssignVariableOpconv_dw_2/depthwise_kernel5conv_dw_2/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_2/depthwise_kernel*
dtype0
Ŕ
.conv_dw_2/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_2/depthwise_kernel*-
_class#
!loc:@conv_dw_2/depthwise_kernel*
dtype0*&
_output_shapes
:@

"conv_dw_2/depthwise/ReadVariableOpReadVariableOpconv_dw_2/depthwise_kernel*
dtype0*&
_output_shapes
:@
r
conv_dw_2/depthwise/ShapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
r
!conv_dw_2/depthwise/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

conv_dw_2/depthwiseDepthwiseConv2dNativeconv_pad_2/Pad"conv_dw_2/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@

#conv_dw_2_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_dw_2_bn/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
´
conv_dw_2_bn/gammaVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_2_bn/gamma*%
_class
loc:@conv_dw_2_bn/gamma
u
3conv_dw_2_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_2_bn/gamma*
_output_shapes
: 

conv_dw_2_bn/gamma/AssignAssignVariableOpconv_dw_2_bn/gamma#conv_dw_2_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_2_bn/gamma*
dtype0

&conv_dw_2_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/gamma*%
_class
loc:@conv_dw_2_bn/gamma*
dtype0*
_output_shapes
:@

#conv_dw_2_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_2_bn/beta*
valueB@*    *
dtype0*
_output_shapes
:@
ą
conv_dw_2_bn/betaVarHandleOp*
shape:@*
dtype0*
_output_shapes
: *"
shared_nameconv_dw_2_bn/beta*$
_class
loc:@conv_dw_2_bn/beta*
	container 
s
2conv_dw_2_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_2_bn/beta*
_output_shapes
: 

conv_dw_2_bn/beta/AssignAssignVariableOpconv_dw_2_bn/beta#conv_dw_2_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_2_bn/beta*
dtype0

%conv_dw_2_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/beta*$
_class
loc:@conv_dw_2_bn/beta*
dtype0*
_output_shapes
:@
¤
*conv_dw_2_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*+
_class!
loc:@conv_dw_2_bn/moving_mean*
valueB@*    
Ć
conv_dw_2_bn/moving_meanVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_2_bn/moving_mean*+
_class!
loc:@conv_dw_2_bn/moving_mean

9conv_dw_2_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_2_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_2_bn/moving_mean/AssignAssignVariableOpconv_dw_2_bn/moving_mean*conv_dw_2_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_2_bn/moving_mean*
dtype0
Ž
,conv_dw_2_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/moving_mean*+
_class!
loc:@conv_dw_2_bn/moving_mean*
dtype0*
_output_shapes
:@
Ť
-conv_dw_2_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_2_bn/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ň
conv_dw_2_bn/moving_varianceVarHandleOp*/
_class%
#!loc:@conv_dw_2_bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
: *-
shared_nameconv_dw_2_bn/moving_variance

=conv_dw_2_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_2_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_2_bn/moving_variance/AssignAssignVariableOpconv_dw_2_bn/moving_variance-conv_dw_2_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_2_bn/moving_variance*
dtype0
ş
0conv_dw_2_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/moving_variance*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@conv_dw_2_bn/moving_variance
j
conv_dw_2_bn/ReadVariableOpReadVariableOpconv_dw_2_bn/gamma*
dtype0*
_output_shapes
:@
k
conv_dw_2_bn/ReadVariableOp_1ReadVariableOpconv_dw_2_bn/beta*
dtype0*
_output_shapes
:@

*conv_dw_2_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_2_bn/moving_mean*
dtype0*
_output_shapes
:@

,conv_dw_2_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_2_bn/moving_variance*
dtype0*
_output_shapes
:@
ř
conv_dw_2_bn/FusedBatchNormFusedBatchNormconv_dw_2/depthwiseconv_dw_2_bn/ReadVariableOpconv_dw_2_bn/ReadVariableOp_1*conv_dw_2_bn/FusedBatchNorm/ReadVariableOp,conv_dw_2_bn/FusedBatchNorm/ReadVariableOp_1*Y
_output_shapesG
E:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@:@:@:@:@*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
W
conv_dw_2_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_2_relu/Relu6Relu6conv_dw_2_bn/FusedBatchNorm*A
_output_shapes/
-:+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙@*
T0
Ż
1conv_pw_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@conv_pw_2/kernel*%
valueB"      @      

/conv_pw_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_2/kernel*
valueB
 *ó5ž*
dtype0*
_output_shapes
: 

/conv_pw_2/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_2/kernel*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
ú
9conv_pw_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_2/kernel/Initializer/random_uniform/shape*

seed *
T0*#
_class
loc:@conv_pw_2/kernel*
seed2 *
dtype0*'
_output_shapes
:@
Ţ
/conv_pw_2/kernel/Initializer/random_uniform/subSub/conv_pw_2/kernel/Initializer/random_uniform/max/conv_pw_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv_pw_2/kernel
ů
/conv_pw_2/kernel/Initializer/random_uniform/mulMul9conv_pw_2/kernel/Initializer/random_uniform/RandomUniform/conv_pw_2/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv_pw_2/kernel*'
_output_shapes
:@
ë
+conv_pw_2/kernel/Initializer/random_uniformAdd/conv_pw_2/kernel/Initializer/random_uniform/mul/conv_pw_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_2/kernel*'
_output_shapes
:@
ť
conv_pw_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_2/kernel*#
_class
loc:@conv_pw_2/kernel*
	container *
shape:@
q
1conv_pw_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_2/kernel*
_output_shapes
: 

conv_pw_2/kernel/AssignAssignVariableOpconv_pw_2/kernel+conv_pw_2/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_2/kernel*
dtype0
Ł
$conv_pw_2/kernel/Read/ReadVariableOpReadVariableOpconv_pw_2/kernel*#
_class
loc:@conv_pw_2/kernel*
dtype0*'
_output_shapes
:@
h
conv_pw_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
y
conv_pw_2/Conv2D/ReadVariableOpReadVariableOpconv_pw_2/kernel*
dtype0*'
_output_shapes
:@

conv_pw_2/Conv2DConv2Dconv_dw_2_relu/Relu6conv_pw_2/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_pw_2_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_pw_2_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_pw_2_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_2_bn/gamma*%
_class
loc:@conv_pw_2_bn/gamma*
	container *
shape:
u
3conv_pw_2_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_2_bn/gamma*
_output_shapes
: 

conv_pw_2_bn/gamma/AssignAssignVariableOpconv_pw_2_bn/gamma#conv_pw_2_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_2_bn/gamma*
dtype0

&conv_pw_2_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/gamma*%
_class
loc:@conv_pw_2_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_2_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_2_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_2_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_2_bn/beta*$
_class
loc:@conv_pw_2_bn/beta*
	container *
shape:
s
2conv_pw_2_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_2_bn/beta*
_output_shapes
: 

conv_pw_2_bn/beta/AssignAssignVariableOpconv_pw_2_bn/beta#conv_pw_2_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_2_bn/beta*
dtype0

%conv_pw_2_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/beta*$
_class
loc:@conv_pw_2_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_2_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*+
_class!
loc:@conv_pw_2_bn/moving_mean*
valueB*    
Ç
conv_pw_2_bn/moving_meanVarHandleOp*+
_class!
loc:@conv_pw_2_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_2_bn/moving_mean

9conv_pw_2_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_2_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_2_bn/moving_mean/AssignAssignVariableOpconv_pw_2_bn/moving_mean*conv_pw_2_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_2_bn/moving_mean*
dtype0
Ż
,conv_pw_2_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/moving_mean*
_output_shapes	
:*+
_class!
loc:@conv_pw_2_bn/moving_mean*
dtype0
­
-conv_pw_2_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_2_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_2_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_2_bn/moving_variance*/
_class%
#!loc:@conv_pw_2_bn/moving_variance*
	container *
shape:

=conv_pw_2_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_2_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_2_bn/moving_variance/AssignAssignVariableOpconv_pw_2_bn/moving_variance-conv_pw_2_bn/moving_variance/Initializer/ones*
dtype0*/
_class%
#!loc:@conv_pw_2_bn/moving_variance
ť
0conv_pw_2_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/moving_variance*
_output_shapes	
:*/
_class%
#!loc:@conv_pw_2_bn/moving_variance*
dtype0
k
conv_pw_2_bn/ReadVariableOpReadVariableOpconv_pw_2_bn/gamma*
_output_shapes	
:*
dtype0
l
conv_pw_2_bn/ReadVariableOp_1ReadVariableOpconv_pw_2_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_2_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_2_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_2_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_2_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_2_bn/FusedBatchNormFusedBatchNormconv_pw_2/Conv2Dconv_pw_2_bn/ReadVariableOpconv_pw_2_bn/ReadVariableOp_1*conv_pw_2_bn/FusedBatchNorm/ReadVariableOp,conv_pw_2_bn/FusedBatchNorm/ReadVariableOp_1*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:
W
conv_pw_2_bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *¤p}?

conv_pw_2_relu/Relu6Relu6conv_pw_2_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ă
;conv_dw_3/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_3/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
­
9conv_dw_3/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
valueB
 *I:˝*
dtype0*
_output_shapes
: 
­
9conv_dw_3/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
valueB
 *I:=*
dtype0*
_output_shapes
: 

Cconv_dw_3/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_3/depthwise_kernel/Initializer/random_uniform/shape*

seed *
T0*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
seed2 *
dtype0*'
_output_shapes
:

9conv_dw_3/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_3/depthwise_kernel/Initializer/random_uniform/max9conv_dw_3/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_3/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_3/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_3/depthwise_kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@conv_dw_3/depthwise_kernel*'
_output_shapes
:

5conv_dw_3/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_3/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_3/depthwise_kernel/Initializer/random_uniform/min*-
_class#
!loc:@conv_dw_3/depthwise_kernel*'
_output_shapes
:*
T0
Ů
conv_dw_3/depthwise_kernelVarHandleOp*
dtype0*
_output_shapes
: *+
shared_nameconv_dw_3/depthwise_kernel*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
	container *
shape:

;conv_dw_3/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_3/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_3/depthwise_kernel/AssignAssignVariableOpconv_dw_3/depthwise_kernel5conv_dw_3/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
dtype0
Á
.conv_dw_3/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_3/depthwise_kernel*-
_class#
!loc:@conv_dw_3/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_3/depthwise/ReadVariableOpReadVariableOpconv_dw_3/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_3/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_3/depthwise/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

conv_dw_3/depthwiseDepthwiseConv2dNativeconv_pw_2_relu/Relu6"conv_dw_3/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_dw_3_bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*%
_class
loc:@conv_dw_3_bn/gamma*
valueB*  ?
ľ
conv_dw_3_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_3_bn/gamma*%
_class
loc:@conv_dw_3_bn/gamma*
	container *
shape:
u
3conv_dw_3_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_3_bn/gamma*
_output_shapes
: 

conv_dw_3_bn/gamma/AssignAssignVariableOpconv_dw_3_bn/gamma#conv_dw_3_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_3_bn/gamma*
dtype0

&conv_dw_3_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/gamma*%
_class
loc:@conv_dw_3_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_3_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_3_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_dw_3_bn/betaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_dw_3_bn/beta*$
_class
loc:@conv_dw_3_bn/beta
s
2conv_dw_3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_3_bn/beta*
_output_shapes
: 

conv_dw_3_bn/beta/AssignAssignVariableOpconv_dw_3_bn/beta#conv_dw_3_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_3_bn/beta*
dtype0

%conv_dw_3_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/beta*$
_class
loc:@conv_dw_3_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_dw_3_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*+
_class!
loc:@conv_dw_3_bn/moving_mean*
valueB*    
Ç
conv_dw_3_bn/moving_meanVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_3_bn/moving_mean*+
_class!
loc:@conv_dw_3_bn/moving_mean

9conv_dw_3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_3_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_3_bn/moving_mean/AssignAssignVariableOpconv_dw_3_bn/moving_mean*conv_dw_3_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_3_bn/moving_mean*
dtype0
Ż
,conv_dw_3_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/moving_mean*+
_class!
loc:@conv_dw_3_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_3_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_3_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_dw_3_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_dw_3_bn/moving_variance*/
_class%
#!loc:@conv_dw_3_bn/moving_variance*
	container *
shape:

=conv_dw_3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_3_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_3_bn/moving_variance/AssignAssignVariableOpconv_dw_3_bn/moving_variance-conv_dw_3_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_3_bn/moving_variance*
dtype0
ť
0conv_dw_3_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/moving_variance*/
_class%
#!loc:@conv_dw_3_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_3_bn/ReadVariableOpReadVariableOpconv_dw_3_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_3_bn/ReadVariableOp_1ReadVariableOpconv_dw_3_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_3_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_3_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_3_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_3_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_3_bn/FusedBatchNormFusedBatchNormconv_dw_3/depthwiseconv_dw_3_bn/ReadVariableOpconv_dw_3_bn/ReadVariableOp_1*conv_dw_3_bn/FusedBatchNorm/ReadVariableOp,conv_dw_3_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_dw_3_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_3_relu/Relu6Relu6conv_dw_3_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ż
1conv_pw_3/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv_pw_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/conv_pw_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@conv_pw_3/kernel*
valueB
 *qÄž*
dtype0

/conv_pw_3/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@conv_pw_3/kernel*
valueB
 *qÄ>*
dtype0
ű
9conv_pw_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_3/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv_pw_3/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
Ţ
/conv_pw_3/kernel/Initializer/random_uniform/subSub/conv_pw_3/kernel/Initializer/random_uniform/max/conv_pw_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@conv_pw_3/kernel
ú
/conv_pw_3/kernel/Initializer/random_uniform/mulMul9conv_pw_3/kernel/Initializer/random_uniform/RandomUniform/conv_pw_3/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_3/kernel
ě
+conv_pw_3/kernel/Initializer/random_uniformAdd/conv_pw_3/kernel/Initializer/random_uniform/mul/conv_pw_3/kernel/Initializer/random_uniform/min*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_3/kernel
ź
conv_pw_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_3/kernel*#
_class
loc:@conv_pw_3/kernel*
	container *
shape:
q
1conv_pw_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_3/kernel*
_output_shapes
: 

conv_pw_3/kernel/AssignAssignVariableOpconv_pw_3/kernel+conv_pw_3/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_3/kernel*
dtype0
¤
$conv_pw_3/kernel/Read/ReadVariableOpReadVariableOpconv_pw_3/kernel*#
_class
loc:@conv_pw_3/kernel*
dtype0*(
_output_shapes
:
h
conv_pw_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv_pw_3/Conv2D/ReadVariableOpReadVariableOpconv_pw_3/kernel*
dtype0*(
_output_shapes
:

conv_pw_3/Conv2DConv2Dconv_dw_3_relu/Relu6conv_pw_3/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_pw_3_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_pw_3_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_pw_3_bn/gammaVarHandleOp*%
_class
loc:@conv_pw_3_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_3_bn/gamma
u
3conv_pw_3_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_3_bn/gamma*
_output_shapes
: 

conv_pw_3_bn/gamma/AssignAssignVariableOpconv_pw_3_bn/gamma#conv_pw_3_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_3_bn/gamma*
dtype0

&conv_pw_3_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/gamma*%
_class
loc:@conv_pw_3_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_3_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_3_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_3_bn/betaVarHandleOp*"
shared_nameconv_pw_3_bn/beta*$
_class
loc:@conv_pw_3_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_pw_3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_3_bn/beta*
_output_shapes
: 

conv_pw_3_bn/beta/AssignAssignVariableOpconv_pw_3_bn/beta#conv_pw_3_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_3_bn/beta*
dtype0

%conv_pw_3_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/beta*$
_class
loc:@conv_pw_3_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_3_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_3_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_pw_3_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_3_bn/moving_mean*+
_class!
loc:@conv_pw_3_bn/moving_mean*
	container *
shape:

9conv_pw_3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_3_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_3_bn/moving_mean/AssignAssignVariableOpconv_pw_3_bn/moving_mean*conv_pw_3_bn/moving_mean/Initializer/zeros*
dtype0*+
_class!
loc:@conv_pw_3_bn/moving_mean
Ż
,conv_pw_3_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/moving_mean*
dtype0*
_output_shapes	
:*+
_class!
loc:@conv_pw_3_bn/moving_mean
­
-conv_pw_3_bn/moving_variance/Initializer/onesConst*
_output_shapes	
:*/
_class%
#!loc:@conv_pw_3_bn/moving_variance*
valueB*  ?*
dtype0
Ó
conv_pw_3_bn/moving_varianceVarHandleOp*-
shared_nameconv_pw_3_bn/moving_variance*/
_class%
#!loc:@conv_pw_3_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: 

=conv_pw_3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_3_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_3_bn/moving_variance/AssignAssignVariableOpconv_pw_3_bn/moving_variance-conv_pw_3_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_3_bn/moving_variance*
dtype0
ť
0conv_pw_3_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/moving_variance*/
_class%
#!loc:@conv_pw_3_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_pw_3_bn/ReadVariableOpReadVariableOpconv_pw_3_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_3_bn/ReadVariableOp_1ReadVariableOpconv_pw_3_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_3_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_3_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_3_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_3_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_3_bn/FusedBatchNormFusedBatchNormconv_pw_3/Conv2Dconv_pw_3_bn/ReadVariableOpconv_pw_3_bn/ReadVariableOp_1*conv_pw_3_bn/FusedBatchNorm/ReadVariableOp,conv_pw_3_bn/FusedBatchNorm/ReadVariableOp_1*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:
W
conv_pw_3_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_3_relu/Relu6Relu6conv_pw_3_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

conv_pad_4/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
˘
conv_pad_4/PadPadconv_pw_3_relu/Relu6conv_pad_4/Pad/paddings*
T0*
	Tpaddings0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ă
;conv_dw_4/depthwise_kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*-
_class#
!loc:@conv_dw_4/depthwise_kernel*%
valueB"            *
dtype0
­
9conv_dw_4/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
valueB
 *I:˝*
dtype0*
_output_shapes
: 
­
9conv_dw_4/depthwise_kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *-
_class#
!loc:@conv_dw_4/depthwise_kernel*
valueB
 *I:=

Cconv_dw_4/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_4/depthwise_kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:*

seed *
T0*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
seed2 

9conv_dw_4/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_4/depthwise_kernel/Initializer/random_uniform/max9conv_dw_4/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_4/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_4/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_4/depthwise_kernel/Initializer/random_uniform/sub*'
_output_shapes
:*
T0*-
_class#
!loc:@conv_dw_4/depthwise_kernel

5conv_dw_4/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_4/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_4/depthwise_kernel/Initializer/random_uniform/min*'
_output_shapes
:*
T0*-
_class#
!loc:@conv_dw_4/depthwise_kernel
Ů
conv_dw_4/depthwise_kernelVarHandleOp*
_output_shapes
: *+
shared_nameconv_dw_4/depthwise_kernel*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
	container *
shape:*
dtype0

;conv_dw_4/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_4/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_4/depthwise_kernel/AssignAssignVariableOpconv_dw_4/depthwise_kernel5conv_dw_4/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
dtype0
Á
.conv_dw_4/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_4/depthwise_kernel*-
_class#
!loc:@conv_dw_4/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_4/depthwise/ReadVariableOpReadVariableOpconv_dw_4/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_4/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_4/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_4/depthwiseDepthwiseConv2dNativeconv_pad_4/Pad"conv_dw_4/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_dw_4_bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*%
_class
loc:@conv_dw_4_bn/gamma*
valueB*  ?
ľ
conv_dw_4_bn/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_4_bn/gamma*%
_class
loc:@conv_dw_4_bn/gamma*
	container 
u
3conv_dw_4_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_4_bn/gamma*
_output_shapes
: 

conv_dw_4_bn/gamma/AssignAssignVariableOpconv_dw_4_bn/gamma#conv_dw_4_bn/gamma/Initializer/ones*
dtype0*%
_class
loc:@conv_dw_4_bn/gamma

&conv_dw_4_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_4_bn/gamma*%
_class
loc:@conv_dw_4_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_4_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_4_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_dw_4_bn/betaVarHandleOp*"
shared_nameconv_dw_4_bn/beta*$
_class
loc:@conv_dw_4_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_dw_4_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_4_bn/beta*
_output_shapes
: 

conv_dw_4_bn/beta/AssignAssignVariableOpconv_dw_4_bn/beta#conv_dw_4_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_4_bn/beta*
dtype0

%conv_dw_4_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_4_bn/beta*
_output_shapes	
:*$
_class
loc:@conv_dw_4_bn/beta*
dtype0
Ś
*conv_dw_4_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_4_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_4_bn/moving_meanVarHandleOp*)
shared_nameconv_dw_4_bn/moving_mean*+
_class!
loc:@conv_dw_4_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: 

9conv_dw_4_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_4_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_4_bn/moving_mean/AssignAssignVariableOpconv_dw_4_bn/moving_mean*conv_dw_4_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_4_bn/moving_mean*
dtype0
Ż
,conv_dw_4_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_4_bn/moving_mean*+
_class!
loc:@conv_dw_4_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_4_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_4_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_dw_4_bn/moving_varianceVarHandleOp*-
shared_nameconv_dw_4_bn/moving_variance*/
_class%
#!loc:@conv_dw_4_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: 

=conv_dw_4_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_4_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_4_bn/moving_variance/AssignAssignVariableOpconv_dw_4_bn/moving_variance-conv_dw_4_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_4_bn/moving_variance*
dtype0
ť
0conv_dw_4_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_4_bn/moving_variance*/
_class%
#!loc:@conv_dw_4_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_4_bn/ReadVariableOpReadVariableOpconv_dw_4_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_4_bn/ReadVariableOp_1ReadVariableOpconv_dw_4_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_4_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_4_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_4_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_4_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_4_bn/FusedBatchNormFusedBatchNormconv_dw_4/depthwiseconv_dw_4_bn/ReadVariableOpconv_dw_4_bn/ReadVariableOp_1*conv_dw_4_bn/FusedBatchNorm/ReadVariableOp,conv_dw_4_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_dw_4_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_4_relu/Relu6Relu6conv_dw_4_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ż
1conv_pw_4/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*#
_class
loc:@conv_pw_4/kernel*%
valueB"            *
dtype0

/conv_pw_4/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_4/kernel*
valueB
 *   ž*
dtype0*
_output_shapes
: 

/conv_pw_4/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_4/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 
ű
9conv_pw_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_4/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*#
_class
loc:@conv_pw_4/kernel*
seed2 
Ţ
/conv_pw_4/kernel/Initializer/random_uniform/subSub/conv_pw_4/kernel/Initializer/random_uniform/max/conv_pw_4/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_4/kernel*
_output_shapes
: 
ú
/conv_pw_4/kernel/Initializer/random_uniform/mulMul9conv_pw_4/kernel/Initializer/random_uniform/RandomUniform/conv_pw_4/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_4/kernel
ě
+conv_pw_4/kernel/Initializer/random_uniformAdd/conv_pw_4/kernel/Initializer/random_uniform/mul/conv_pw_4/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_4/kernel*(
_output_shapes
:
ź
conv_pw_4/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_4/kernel*#
_class
loc:@conv_pw_4/kernel*
	container *
shape:
q
1conv_pw_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_4/kernel*
_output_shapes
: 

conv_pw_4/kernel/AssignAssignVariableOpconv_pw_4/kernel+conv_pw_4/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_4/kernel*
dtype0
¤
$conv_pw_4/kernel/Read/ReadVariableOpReadVariableOpconv_pw_4/kernel*#
_class
loc:@conv_pw_4/kernel*
dtype0*(
_output_shapes
:
h
conv_pw_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
z
conv_pw_4/Conv2D/ReadVariableOpReadVariableOpconv_pw_4/kernel*
dtype0*(
_output_shapes
:

conv_pw_4/Conv2DConv2Dconv_dw_4_relu/Relu6conv_pw_4/Conv2D/ReadVariableOp*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

#conv_pw_4_bn/gamma/Initializer/onesConst*
_output_shapes	
:*%
_class
loc:@conv_pw_4_bn/gamma*
valueB*  ?*
dtype0
ľ
conv_pw_4_bn/gammaVarHandleOp*#
shared_nameconv_pw_4_bn/gamma*%
_class
loc:@conv_pw_4_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_pw_4_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_4_bn/gamma*
_output_shapes
: 

conv_pw_4_bn/gamma/AssignAssignVariableOpconv_pw_4_bn/gamma#conv_pw_4_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_4_bn/gamma*
dtype0

&conv_pw_4_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_4_bn/gamma*%
_class
loc:@conv_pw_4_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_4_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_4_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_4_bn/betaVarHandleOp*
_output_shapes
: *"
shared_nameconv_pw_4_bn/beta*$
_class
loc:@conv_pw_4_bn/beta*
	container *
shape:*
dtype0
s
2conv_pw_4_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_4_bn/beta*
_output_shapes
: 

conv_pw_4_bn/beta/AssignAssignVariableOpconv_pw_4_bn/beta#conv_pw_4_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_4_bn/beta*
dtype0

%conv_pw_4_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_4_bn/beta*$
_class
loc:@conv_pw_4_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_4_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_4_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_pw_4_bn/moving_meanVarHandleOp*+
_class!
loc:@conv_pw_4_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_4_bn/moving_mean

9conv_pw_4_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_4_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_4_bn/moving_mean/AssignAssignVariableOpconv_pw_4_bn/moving_mean*conv_pw_4_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_4_bn/moving_mean*
dtype0
Ż
,conv_pw_4_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_4_bn/moving_mean*
_output_shapes	
:*+
_class!
loc:@conv_pw_4_bn/moving_mean*
dtype0
­
-conv_pw_4_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_4_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_4_bn/moving_varianceVarHandleOp*/
_class%
#!loc:@conv_pw_4_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_4_bn/moving_variance

=conv_pw_4_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_4_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_4_bn/moving_variance/AssignAssignVariableOpconv_pw_4_bn/moving_variance-conv_pw_4_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_4_bn/moving_variance*
dtype0
ť
0conv_pw_4_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_4_bn/moving_variance*/
_class%
#!loc:@conv_pw_4_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_pw_4_bn/ReadVariableOpReadVariableOpconv_pw_4_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_4_bn/ReadVariableOp_1ReadVariableOpconv_pw_4_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_4_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_4_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_4_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_4_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_4_bn/FusedBatchNormFusedBatchNormconv_pw_4/Conv2Dconv_pw_4_bn/ReadVariableOpconv_pw_4_bn/ReadVariableOp_1*conv_pw_4_bn/FusedBatchNorm/ReadVariableOp,conv_pw_4_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_pw_4_bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *¤p}?

conv_pw_4_relu/Relu6Relu6conv_pw_4_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ă
;conv_dw_5/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_5/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
­
9conv_dw_5/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
valueB
 *ˇP˝*
dtype0*
_output_shapes
: 
­
9conv_dw_5/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
valueB
 *ˇP=*
dtype0*
_output_shapes
: 

Cconv_dw_5/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_5/depthwise_kernel/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
seed2 *
dtype0*'
_output_shapes
:*

seed 

9conv_dw_5/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_5/depthwise_kernel/Initializer/random_uniform/max9conv_dw_5/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_5/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_5/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_5/depthwise_kernel/Initializer/random_uniform/sub*-
_class#
!loc:@conv_dw_5/depthwise_kernel*'
_output_shapes
:*
T0

5conv_dw_5/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_5/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_5/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_5/depthwise_kernel*'
_output_shapes
:
Ů
conv_dw_5/depthwise_kernelVarHandleOp*+
shared_nameconv_dw_5/depthwise_kernel*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
	container *
shape:*
dtype0*
_output_shapes
: 

;conv_dw_5/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_5/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_5/depthwise_kernel/AssignAssignVariableOpconv_dw_5/depthwise_kernel5conv_dw_5/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
dtype0
Á
.conv_dw_5/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_5/depthwise_kernel*-
_class#
!loc:@conv_dw_5/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_5/depthwise/ReadVariableOpReadVariableOpconv_dw_5/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_5/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_5/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_5/depthwiseDepthwiseConv2dNativeconv_pw_4_relu/Relu6"conv_dw_5/depthwise/ReadVariableOp*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides


#conv_dw_5_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_dw_5_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_dw_5_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_5_bn/gamma*%
_class
loc:@conv_dw_5_bn/gamma*
	container *
shape:
u
3conv_dw_5_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_5_bn/gamma*
_output_shapes
: 

conv_dw_5_bn/gamma/AssignAssignVariableOpconv_dw_5_bn/gamma#conv_dw_5_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_5_bn/gamma*
dtype0

&conv_dw_5_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_5_bn/gamma*%
_class
loc:@conv_dw_5_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_5_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_5_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_dw_5_bn/betaVarHandleOp*"
shared_nameconv_dw_5_bn/beta*$
_class
loc:@conv_dw_5_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_dw_5_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_5_bn/beta*
_output_shapes
: 

conv_dw_5_bn/beta/AssignAssignVariableOpconv_dw_5_bn/beta#conv_dw_5_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_5_bn/beta*
dtype0

%conv_dw_5_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_5_bn/beta*
_output_shapes	
:*$
_class
loc:@conv_dw_5_bn/beta*
dtype0
Ś
*conv_dw_5_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_5_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_5_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_5_bn/moving_mean*+
_class!
loc:@conv_dw_5_bn/moving_mean*
	container *
shape:

9conv_dw_5_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_5_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_5_bn/moving_mean/AssignAssignVariableOpconv_dw_5_bn/moving_mean*conv_dw_5_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_5_bn/moving_mean*
dtype0
Ż
,conv_dw_5_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_5_bn/moving_mean*+
_class!
loc:@conv_dw_5_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_5_bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*/
_class%
#!loc:@conv_dw_5_bn/moving_variance*
valueB*  ?
Ó
conv_dw_5_bn/moving_varianceVarHandleOp*-
shared_nameconv_dw_5_bn/moving_variance*/
_class%
#!loc:@conv_dw_5_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: 

=conv_dw_5_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_5_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_5_bn/moving_variance/AssignAssignVariableOpconv_dw_5_bn/moving_variance-conv_dw_5_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_5_bn/moving_variance*
dtype0
ť
0conv_dw_5_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_5_bn/moving_variance*/
_class%
#!loc:@conv_dw_5_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_5_bn/ReadVariableOpReadVariableOpconv_dw_5_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_5_bn/ReadVariableOp_1ReadVariableOpconv_dw_5_bn/beta*
_output_shapes	
:*
dtype0

*conv_dw_5_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_5_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_5_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_5_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_5_bn/FusedBatchNormFusedBatchNormconv_dw_5/depthwiseconv_dw_5_bn/ReadVariableOpconv_dw_5_bn/ReadVariableOp_1*conv_dw_5_bn/FusedBatchNorm/ReadVariableOp,conv_dw_5_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
W
conv_dw_5_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_5_relu/Relu6Relu6conv_dw_5_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ż
1conv_pw_5/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv_pw_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/conv_pw_5/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_5/kernel*
valueB
 *×łÝ˝*
dtype0*
_output_shapes
: 

/conv_pw_5/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_5/kernel*
valueB
 *×łÝ=*
dtype0*
_output_shapes
: 
ű
9conv_pw_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_5/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv_pw_5/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
Ţ
/conv_pw_5/kernel/Initializer/random_uniform/subSub/conv_pw_5/kernel/Initializer/random_uniform/max/conv_pw_5/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_5/kernel*
_output_shapes
: 
ú
/conv_pw_5/kernel/Initializer/random_uniform/mulMul9conv_pw_5/kernel/Initializer/random_uniform/RandomUniform/conv_pw_5/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv_pw_5/kernel*(
_output_shapes
:
ě
+conv_pw_5/kernel/Initializer/random_uniformAdd/conv_pw_5/kernel/Initializer/random_uniform/mul/conv_pw_5/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_5/kernel*(
_output_shapes
:
ź
conv_pw_5/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_5/kernel*#
_class
loc:@conv_pw_5/kernel*
	container 
q
1conv_pw_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_5/kernel*
_output_shapes
: 

conv_pw_5/kernel/AssignAssignVariableOpconv_pw_5/kernel+conv_pw_5/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@conv_pw_5/kernel
¤
$conv_pw_5/kernel/Read/ReadVariableOpReadVariableOpconv_pw_5/kernel*(
_output_shapes
:*#
_class
loc:@conv_pw_5/kernel*
dtype0
h
conv_pw_5/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
z
conv_pw_5/Conv2D/ReadVariableOpReadVariableOpconv_pw_5/kernel*
dtype0*(
_output_shapes
:

conv_pw_5/Conv2DConv2Dconv_dw_5_relu/Relu6conv_pw_5/Conv2D/ReadVariableOp*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

#conv_pw_5_bn/gamma/Initializer/onesConst*
_output_shapes	
:*%
_class
loc:@conv_pw_5_bn/gamma*
valueB*  ?*
dtype0
ľ
conv_pw_5_bn/gammaVarHandleOp*#
shared_nameconv_pw_5_bn/gamma*%
_class
loc:@conv_pw_5_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_pw_5_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_5_bn/gamma*
_output_shapes
: 

conv_pw_5_bn/gamma/AssignAssignVariableOpconv_pw_5_bn/gamma#conv_pw_5_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_5_bn/gamma*
dtype0

&conv_pw_5_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_5_bn/gamma*%
_class
loc:@conv_pw_5_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_5_bn/beta/Initializer/zerosConst*
_output_shapes	
:*$
_class
loc:@conv_pw_5_bn/beta*
valueB*    *
dtype0
˛
conv_pw_5_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_5_bn/beta*$
_class
loc:@conv_pw_5_bn/beta*
	container *
shape:
s
2conv_pw_5_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_5_bn/beta*
_output_shapes
: 

conv_pw_5_bn/beta/AssignAssignVariableOpconv_pw_5_bn/beta#conv_pw_5_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_5_bn/beta*
dtype0

%conv_pw_5_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_5_bn/beta*$
_class
loc:@conv_pw_5_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_5_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_5_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_pw_5_bn/moving_meanVarHandleOp*+
_class!
loc:@conv_pw_5_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_5_bn/moving_mean

9conv_pw_5_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_5_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_5_bn/moving_mean/AssignAssignVariableOpconv_pw_5_bn/moving_mean*conv_pw_5_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_5_bn/moving_mean*
dtype0
Ż
,conv_pw_5_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_5_bn/moving_mean*+
_class!
loc:@conv_pw_5_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_pw_5_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_5_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_5_bn/moving_varianceVarHandleOp*/
_class%
#!loc:@conv_pw_5_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_5_bn/moving_variance

=conv_pw_5_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_5_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_5_bn/moving_variance/AssignAssignVariableOpconv_pw_5_bn/moving_variance-conv_pw_5_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_5_bn/moving_variance*
dtype0
ť
0conv_pw_5_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_5_bn/moving_variance*/
_class%
#!loc:@conv_pw_5_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_pw_5_bn/ReadVariableOpReadVariableOpconv_pw_5_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_5_bn/ReadVariableOp_1ReadVariableOpconv_pw_5_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_5_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_5_bn/moving_mean*
_output_shapes	
:*
dtype0

,conv_pw_5_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_5_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_5_bn/FusedBatchNormFusedBatchNormconv_pw_5/Conv2Dconv_pw_5_bn/ReadVariableOpconv_pw_5_bn/ReadVariableOp_1*conv_pw_5_bn/FusedBatchNorm/ReadVariableOp,conv_pw_5_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
W
conv_pw_5_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_5_relu/Relu6Relu6conv_pw_5_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

conv_pad_6/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
˘
conv_pad_6/PadPadconv_pw_5_relu/Relu6conv_pad_6/Pad/paddings*
T0*
	Tpaddings0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ă
;conv_dw_6/depthwise_kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*-
_class#
!loc:@conv_dw_6/depthwise_kernel*%
valueB"            
­
9conv_dw_6/depthwise_kernel/Initializer/random_uniform/minConst*
_output_shapes
: *-
_class#
!loc:@conv_dw_6/depthwise_kernel*
valueB
 *ˇP˝*
dtype0
­
9conv_dw_6/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
valueB
 *ˇP=*
dtype0*
_output_shapes
: 

Cconv_dw_6/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_6/depthwise_kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:*

seed *
T0*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
seed2 

9conv_dw_6/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_6/depthwise_kernel/Initializer/random_uniform/max9conv_dw_6/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_6/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_6/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_6/depthwise_kernel/Initializer/random_uniform/sub*-
_class#
!loc:@conv_dw_6/depthwise_kernel*'
_output_shapes
:*
T0

5conv_dw_6/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_6/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_6/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_6/depthwise_kernel*'
_output_shapes
:
Ů
conv_dw_6/depthwise_kernelVarHandleOp*
_output_shapes
: *+
shared_nameconv_dw_6/depthwise_kernel*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
	container *
shape:*
dtype0

;conv_dw_6/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_6/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_6/depthwise_kernel/AssignAssignVariableOpconv_dw_6/depthwise_kernel5conv_dw_6/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
dtype0
Á
.conv_dw_6/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_6/depthwise_kernel*-
_class#
!loc:@conv_dw_6/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_6/depthwise/ReadVariableOpReadVariableOpconv_dw_6/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_6/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_6/depthwise/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

conv_dw_6/depthwiseDepthwiseConv2dNativeconv_pad_6/Pad"conv_dw_6/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_dw_6_bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*%
_class
loc:@conv_dw_6_bn/gamma*
valueB*  ?
ľ
conv_dw_6_bn/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_6_bn/gamma*%
_class
loc:@conv_dw_6_bn/gamma*
	container 
u
3conv_dw_6_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_6_bn/gamma*
_output_shapes
: 

conv_dw_6_bn/gamma/AssignAssignVariableOpconv_dw_6_bn/gamma#conv_dw_6_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_6_bn/gamma*
dtype0

&conv_dw_6_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_6_bn/gamma*%
_class
loc:@conv_dw_6_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_6_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_dw_6_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_dw_6_bn/betaVarHandleOp*"
shared_nameconv_dw_6_bn/beta*$
_class
loc:@conv_dw_6_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_dw_6_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_6_bn/beta*
_output_shapes
: 

conv_dw_6_bn/beta/AssignAssignVariableOpconv_dw_6_bn/beta#conv_dw_6_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_6_bn/beta*
dtype0

%conv_dw_6_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_6_bn/beta*
_output_shapes	
:*$
_class
loc:@conv_dw_6_bn/beta*
dtype0
Ś
*conv_dw_6_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_6_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_6_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_6_bn/moving_mean*+
_class!
loc:@conv_dw_6_bn/moving_mean*
	container *
shape:

9conv_dw_6_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_6_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_6_bn/moving_mean/AssignAssignVariableOpconv_dw_6_bn/moving_mean*conv_dw_6_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_6_bn/moving_mean*
dtype0
Ż
,conv_dw_6_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_6_bn/moving_mean*+
_class!
loc:@conv_dw_6_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_6_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_6_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_dw_6_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_dw_6_bn/moving_variance*/
_class%
#!loc:@conv_dw_6_bn/moving_variance*
	container *
shape:

=conv_dw_6_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_6_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_6_bn/moving_variance/AssignAssignVariableOpconv_dw_6_bn/moving_variance-conv_dw_6_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_6_bn/moving_variance*
dtype0
ť
0conv_dw_6_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_6_bn/moving_variance*/
_class%
#!loc:@conv_dw_6_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_6_bn/ReadVariableOpReadVariableOpconv_dw_6_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_6_bn/ReadVariableOp_1ReadVariableOpconv_dw_6_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_6_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_6_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_6_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_6_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_6_bn/FusedBatchNormFusedBatchNormconv_dw_6/depthwiseconv_dw_6_bn/ReadVariableOpconv_dw_6_bn/ReadVariableOp_1*conv_dw_6_bn/FusedBatchNorm/ReadVariableOp,conv_dw_6_bn/FusedBatchNorm/ReadVariableOp_1*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
W
conv_dw_6_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_6_relu/Relu6Relu6conv_dw_6_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ż
1conv_pw_6/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*#
_class
loc:@conv_pw_6/kernel*%
valueB"            *
dtype0

/conv_pw_6/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_6/kernel*
valueB
 *óľ˝*
dtype0*
_output_shapes
: 

/conv_pw_6/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_6/kernel*
valueB
 *óľ=*
dtype0*
_output_shapes
: 
ű
9conv_pw_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_6/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*#
_class
loc:@conv_pw_6/kernel*
seed2 
Ţ
/conv_pw_6/kernel/Initializer/random_uniform/subSub/conv_pw_6/kernel/Initializer/random_uniform/max/conv_pw_6/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_6/kernel*
_output_shapes
: 
ú
/conv_pw_6/kernel/Initializer/random_uniform/mulMul9conv_pw_6/kernel/Initializer/random_uniform/RandomUniform/conv_pw_6/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv_pw_6/kernel*(
_output_shapes
:
ě
+conv_pw_6/kernel/Initializer/random_uniformAdd/conv_pw_6/kernel/Initializer/random_uniform/mul/conv_pw_6/kernel/Initializer/random_uniform/min*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_6/kernel
ź
conv_pw_6/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_6/kernel*#
_class
loc:@conv_pw_6/kernel*
	container *
shape:
q
1conv_pw_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_6/kernel*
_output_shapes
: 

conv_pw_6/kernel/AssignAssignVariableOpconv_pw_6/kernel+conv_pw_6/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_6/kernel*
dtype0
¤
$conv_pw_6/kernel/Read/ReadVariableOpReadVariableOpconv_pw_6/kernel*#
_class
loc:@conv_pw_6/kernel*
dtype0*(
_output_shapes
:
h
conv_pw_6/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
z
conv_pw_6/Conv2D/ReadVariableOpReadVariableOpconv_pw_6/kernel*
dtype0*(
_output_shapes
:

conv_pw_6/Conv2DConv2Dconv_dw_6_relu/Relu6conv_pw_6/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_pw_6_bn/gamma/Initializer/onesConst*
_output_shapes	
:*%
_class
loc:@conv_pw_6_bn/gamma*
valueB*  ?*
dtype0
ľ
conv_pw_6_bn/gammaVarHandleOp*%
_class
loc:@conv_pw_6_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_6_bn/gamma
u
3conv_pw_6_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_6_bn/gamma*
_output_shapes
: 

conv_pw_6_bn/gamma/AssignAssignVariableOpconv_pw_6_bn/gamma#conv_pw_6_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_6_bn/gamma*
dtype0

&conv_pw_6_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_6_bn/gamma*
dtype0*
_output_shapes	
:*%
_class
loc:@conv_pw_6_bn/gamma

#conv_pw_6_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_6_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_6_bn/betaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_6_bn/beta*$
_class
loc:@conv_pw_6_bn/beta
s
2conv_pw_6_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_6_bn/beta*
_output_shapes
: 

conv_pw_6_bn/beta/AssignAssignVariableOpconv_pw_6_bn/beta#conv_pw_6_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_6_bn/beta*
dtype0

%conv_pw_6_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_6_bn/beta*$
_class
loc:@conv_pw_6_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_6_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_6_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_pw_6_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_6_bn/moving_mean*+
_class!
loc:@conv_pw_6_bn/moving_mean*
	container *
shape:

9conv_pw_6_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_6_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_6_bn/moving_mean/AssignAssignVariableOpconv_pw_6_bn/moving_mean*conv_pw_6_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_6_bn/moving_mean*
dtype0
Ż
,conv_pw_6_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_6_bn/moving_mean*+
_class!
loc:@conv_pw_6_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_pw_6_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_6_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_6_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_6_bn/moving_variance*/
_class%
#!loc:@conv_pw_6_bn/moving_variance*
	container *
shape:

=conv_pw_6_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_6_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_6_bn/moving_variance/AssignAssignVariableOpconv_pw_6_bn/moving_variance-conv_pw_6_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_6_bn/moving_variance*
dtype0
ť
0conv_pw_6_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_6_bn/moving_variance*/
_class%
#!loc:@conv_pw_6_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_pw_6_bn/ReadVariableOpReadVariableOpconv_pw_6_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_6_bn/ReadVariableOp_1ReadVariableOpconv_pw_6_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_6_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_6_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_6_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_6_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_6_bn/FusedBatchNormFusedBatchNormconv_pw_6/Conv2Dconv_pw_6_bn/ReadVariableOpconv_pw_6_bn/ReadVariableOp_1*conv_pw_6_bn/FusedBatchNorm/ReadVariableOp,conv_pw_6_bn/FusedBatchNorm/ReadVariableOp_1*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:
W
conv_pw_6_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_6_relu/Relu6Relu6conv_pw_6_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ă
;conv_dw_7/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_7/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
­
9conv_dw_7/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_7/depthwise_kernel*
valueB
 *U¨˝*
dtype0*
_output_shapes
: 
­
9conv_dw_7/depthwise_kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *-
_class#
!loc:@conv_dw_7/depthwise_kernel*
valueB
 *U¨=*
dtype0

Cconv_dw_7/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_7/depthwise_kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*'
_output_shapes
:*

seed *
T0*-
_class#
!loc:@conv_dw_7/depthwise_kernel

9conv_dw_7/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_7/depthwise_kernel/Initializer/random_uniform/max9conv_dw_7/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_7/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_7/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_7/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_7/depthwise_kernel/Initializer/random_uniform/sub*'
_output_shapes
:*
T0*-
_class#
!loc:@conv_dw_7/depthwise_kernel

5conv_dw_7/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_7/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_7/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_7/depthwise_kernel*'
_output_shapes
:
Ů
conv_dw_7/depthwise_kernelVarHandleOp*
dtype0*
_output_shapes
: *+
shared_nameconv_dw_7/depthwise_kernel*-
_class#
!loc:@conv_dw_7/depthwise_kernel*
	container *
shape:

;conv_dw_7/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_7/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_7/depthwise_kernel/AssignAssignVariableOpconv_dw_7/depthwise_kernel5conv_dw_7/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_7/depthwise_kernel*
dtype0
Á
.conv_dw_7/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_7/depthwise_kernel*-
_class#
!loc:@conv_dw_7/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_7/depthwise/ReadVariableOpReadVariableOpconv_dw_7/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_7/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_7/depthwise/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

conv_dw_7/depthwiseDepthwiseConv2dNativeconv_pw_6_relu/Relu6"conv_dw_7/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_dw_7_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_dw_7_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_dw_7_bn/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_7_bn/gamma*%
_class
loc:@conv_dw_7_bn/gamma*
	container 
u
3conv_dw_7_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_7_bn/gamma*
_output_shapes
: 

conv_dw_7_bn/gamma/AssignAssignVariableOpconv_dw_7_bn/gamma#conv_dw_7_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_7_bn/gamma*
dtype0

&conv_dw_7_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_7_bn/gamma*%
_class
loc:@conv_dw_7_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_7_bn/beta/Initializer/zerosConst*
_output_shapes	
:*$
_class
loc:@conv_dw_7_bn/beta*
valueB*    *
dtype0
˛
conv_dw_7_bn/betaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_dw_7_bn/beta*$
_class
loc:@conv_dw_7_bn/beta
s
2conv_dw_7_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_7_bn/beta*
_output_shapes
: 

conv_dw_7_bn/beta/AssignAssignVariableOpconv_dw_7_bn/beta#conv_dw_7_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_7_bn/beta*
dtype0

%conv_dw_7_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_7_bn/beta*
dtype0*
_output_shapes	
:*$
_class
loc:@conv_dw_7_bn/beta
Ś
*conv_dw_7_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_7_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_7_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_7_bn/moving_mean*+
_class!
loc:@conv_dw_7_bn/moving_mean*
	container *
shape:

9conv_dw_7_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_7_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_7_bn/moving_mean/AssignAssignVariableOpconv_dw_7_bn/moving_mean*conv_dw_7_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_7_bn/moving_mean*
dtype0
Ż
,conv_dw_7_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_7_bn/moving_mean*+
_class!
loc:@conv_dw_7_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_7_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_7_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_dw_7_bn/moving_varianceVarHandleOp*-
shared_nameconv_dw_7_bn/moving_variance*/
_class%
#!loc:@conv_dw_7_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: 

=conv_dw_7_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_7_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_7_bn/moving_variance/AssignAssignVariableOpconv_dw_7_bn/moving_variance-conv_dw_7_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_7_bn/moving_variance*
dtype0
ť
0conv_dw_7_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_7_bn/moving_variance*/
_class%
#!loc:@conv_dw_7_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_7_bn/ReadVariableOpReadVariableOpconv_dw_7_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_7_bn/ReadVariableOp_1ReadVariableOpconv_dw_7_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_7_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_7_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_7_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_7_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_7_bn/FusedBatchNormFusedBatchNormconv_dw_7/depthwiseconv_dw_7_bn/ReadVariableOpconv_dw_7_bn/ReadVariableOp_1*conv_dw_7_bn/FusedBatchNorm/ReadVariableOp,conv_dw_7_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_dw_7_bn/ConstConst*
_output_shapes
: *
valueB
 *¤p}?*
dtype0

conv_dw_7_relu/Relu6Relu6conv_dw_7_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ż
1conv_pw_7/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv_pw_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/conv_pw_7/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_7/kernel*
valueB
 *qÄ˝*
dtype0*
_output_shapes
: 

/conv_pw_7/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_7/kernel*
valueB
 *qÄ=*
dtype0*
_output_shapes
: 
ű
9conv_pw_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_7/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*#
_class
loc:@conv_pw_7/kernel*
seed2 
Ţ
/conv_pw_7/kernel/Initializer/random_uniform/subSub/conv_pw_7/kernel/Initializer/random_uniform/max/conv_pw_7/kernel/Initializer/random_uniform/min*#
_class
loc:@conv_pw_7/kernel*
_output_shapes
: *
T0
ú
/conv_pw_7/kernel/Initializer/random_uniform/mulMul9conv_pw_7/kernel/Initializer/random_uniform/RandomUniform/conv_pw_7/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv_pw_7/kernel*(
_output_shapes
:
ě
+conv_pw_7/kernel/Initializer/random_uniformAdd/conv_pw_7/kernel/Initializer/random_uniform/mul/conv_pw_7/kernel/Initializer/random_uniform/min*#
_class
loc:@conv_pw_7/kernel*(
_output_shapes
:*
T0
ź
conv_pw_7/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv_pw_7/kernel*#
_class
loc:@conv_pw_7/kernel*
	container *
shape:
q
1conv_pw_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_7/kernel*
_output_shapes
: 

conv_pw_7/kernel/AssignAssignVariableOpconv_pw_7/kernel+conv_pw_7/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_7/kernel*
dtype0
¤
$conv_pw_7/kernel/Read/ReadVariableOpReadVariableOpconv_pw_7/kernel*#
_class
loc:@conv_pw_7/kernel*
dtype0*(
_output_shapes
:
h
conv_pw_7/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
z
conv_pw_7/Conv2D/ReadVariableOpReadVariableOpconv_pw_7/kernel*
dtype0*(
_output_shapes
:

conv_pw_7/Conv2DConv2Dconv_dw_7_relu/Relu6conv_pw_7/Conv2D/ReadVariableOp*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC

#conv_pw_7_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_pw_7_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_pw_7_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_7_bn/gamma*%
_class
loc:@conv_pw_7_bn/gamma*
	container *
shape:
u
3conv_pw_7_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_7_bn/gamma*
_output_shapes
: 

conv_pw_7_bn/gamma/AssignAssignVariableOpconv_pw_7_bn/gamma#conv_pw_7_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_7_bn/gamma*
dtype0

&conv_pw_7_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_7_bn/gamma*%
_class
loc:@conv_pw_7_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_7_bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*$
_class
loc:@conv_pw_7_bn/beta*
valueB*    
˛
conv_pw_7_bn/betaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_7_bn/beta*$
_class
loc:@conv_pw_7_bn/beta
s
2conv_pw_7_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_7_bn/beta*
_output_shapes
: 

conv_pw_7_bn/beta/AssignAssignVariableOpconv_pw_7_bn/beta#conv_pw_7_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_7_bn/beta*
dtype0

%conv_pw_7_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_7_bn/beta*
dtype0*
_output_shapes	
:*$
_class
loc:@conv_pw_7_bn/beta
Ś
*conv_pw_7_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_pw_7_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_pw_7_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_7_bn/moving_mean*+
_class!
loc:@conv_pw_7_bn/moving_mean*
	container *
shape:

9conv_pw_7_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_7_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_7_bn/moving_mean/AssignAssignVariableOpconv_pw_7_bn/moving_mean*conv_pw_7_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_7_bn/moving_mean*
dtype0
Ż
,conv_pw_7_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_7_bn/moving_mean*+
_class!
loc:@conv_pw_7_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_pw_7_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_7_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_7_bn/moving_varianceVarHandleOp*/
_class%
#!loc:@conv_pw_7_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_7_bn/moving_variance

=conv_pw_7_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_7_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_7_bn/moving_variance/AssignAssignVariableOpconv_pw_7_bn/moving_variance-conv_pw_7_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_7_bn/moving_variance*
dtype0
ť
0conv_pw_7_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_7_bn/moving_variance*/
_class%
#!loc:@conv_pw_7_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_pw_7_bn/ReadVariableOpReadVariableOpconv_pw_7_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_7_bn/ReadVariableOp_1ReadVariableOpconv_pw_7_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_7_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_7_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_7_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_7_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_7_bn/FusedBatchNormFusedBatchNormconv_pw_7/Conv2Dconv_pw_7_bn/ReadVariableOpconv_pw_7_bn/ReadVariableOp_1*conv_pw_7_bn/FusedBatchNorm/ReadVariableOp,conv_pw_7_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_pw_7_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_7_relu/Relu6Relu6conv_pw_7_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ă
;conv_dw_8/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_8/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
­
9conv_dw_8/depthwise_kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
valueB
 *U¨˝*
dtype0*
_output_shapes
: 
­
9conv_dw_8/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
valueB
 *U¨=*
dtype0*
_output_shapes
: 

Cconv_dw_8/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_8/depthwise_kernel/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
seed2 *
dtype0*'
_output_shapes
:*

seed 

9conv_dw_8/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_8/depthwise_kernel/Initializer/random_uniform/max9conv_dw_8/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_8/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_8/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_8/depthwise_kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@conv_dw_8/depthwise_kernel*'
_output_shapes
:

5conv_dw_8/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_8/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_8/depthwise_kernel/Initializer/random_uniform/min*'
_output_shapes
:*
T0*-
_class#
!loc:@conv_dw_8/depthwise_kernel
Ů
conv_dw_8/depthwise_kernelVarHandleOp*
dtype0*
_output_shapes
: *+
shared_nameconv_dw_8/depthwise_kernel*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
	container *
shape:

;conv_dw_8/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_8/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_8/depthwise_kernel/AssignAssignVariableOpconv_dw_8/depthwise_kernel5conv_dw_8/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
dtype0
Á
.conv_dw_8/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_8/depthwise_kernel*'
_output_shapes
:*-
_class#
!loc:@conv_dw_8/depthwise_kernel*
dtype0

"conv_dw_8/depthwise/ReadVariableOpReadVariableOpconv_dw_8/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_8/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_8/depthwise/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

conv_dw_8/depthwiseDepthwiseConv2dNativeconv_pw_7_relu/Relu6"conv_dw_8/depthwise/ReadVariableOp*
data_formatNHWC*
strides
*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0

#conv_dw_8_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_dw_8_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_dw_8_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_8_bn/gamma*%
_class
loc:@conv_dw_8_bn/gamma*
	container *
shape:
u
3conv_dw_8_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_8_bn/gamma*
_output_shapes
: 

conv_dw_8_bn/gamma/AssignAssignVariableOpconv_dw_8_bn/gamma#conv_dw_8_bn/gamma/Initializer/ones*
dtype0*%
_class
loc:@conv_dw_8_bn/gamma

&conv_dw_8_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_8_bn/gamma*%
_class
loc:@conv_dw_8_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_8_bn/beta/Initializer/zerosConst*
_output_shapes	
:*$
_class
loc:@conv_dw_8_bn/beta*
valueB*    *
dtype0
˛
conv_dw_8_bn/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_dw_8_bn/beta*$
_class
loc:@conv_dw_8_bn/beta*
	container 
s
2conv_dw_8_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_8_bn/beta*
_output_shapes
: 

conv_dw_8_bn/beta/AssignAssignVariableOpconv_dw_8_bn/beta#conv_dw_8_bn/beta/Initializer/zeros*
dtype0*$
_class
loc:@conv_dw_8_bn/beta

%conv_dw_8_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_8_bn/beta*$
_class
loc:@conv_dw_8_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_dw_8_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_8_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_8_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_8_bn/moving_mean*+
_class!
loc:@conv_dw_8_bn/moving_mean*
	container *
shape:

9conv_dw_8_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_8_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_8_bn/moving_mean/AssignAssignVariableOpconv_dw_8_bn/moving_mean*conv_dw_8_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_8_bn/moving_mean*
dtype0
Ż
,conv_dw_8_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_8_bn/moving_mean*+
_class!
loc:@conv_dw_8_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_8_bn/moving_variance/Initializer/onesConst*
_output_shapes	
:*/
_class%
#!loc:@conv_dw_8_bn/moving_variance*
valueB*  ?*
dtype0
Ó
conv_dw_8_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_dw_8_bn/moving_variance*/
_class%
#!loc:@conv_dw_8_bn/moving_variance*
	container *
shape:

=conv_dw_8_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_8_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_8_bn/moving_variance/AssignAssignVariableOpconv_dw_8_bn/moving_variance-conv_dw_8_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_8_bn/moving_variance*
dtype0
ť
0conv_dw_8_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_8_bn/moving_variance*/
_class%
#!loc:@conv_dw_8_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_8_bn/ReadVariableOpReadVariableOpconv_dw_8_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_8_bn/ReadVariableOp_1ReadVariableOpconv_dw_8_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_8_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_8_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_8_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_8_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_8_bn/FusedBatchNormFusedBatchNormconv_dw_8/depthwiseconv_dw_8_bn/ReadVariableOpconv_dw_8_bn/ReadVariableOp_1*conv_dw_8_bn/FusedBatchNorm/ReadVariableOp,conv_dw_8_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
W
conv_dw_8_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_8_relu/Relu6Relu6conv_dw_8_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ż
1conv_pw_8/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@conv_pw_8/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/conv_pw_8/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_8/kernel*
valueB
 *qÄ˝*
dtype0*
_output_shapes
: 

/conv_pw_8/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@conv_pw_8/kernel*
valueB
 *qÄ=
ű
9conv_pw_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_8/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*#
_class
loc:@conv_pw_8/kernel*
seed2 
Ţ
/conv_pw_8/kernel/Initializer/random_uniform/subSub/conv_pw_8/kernel/Initializer/random_uniform/max/conv_pw_8/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_8/kernel*
_output_shapes
: 
ú
/conv_pw_8/kernel/Initializer/random_uniform/mulMul9conv_pw_8/kernel/Initializer/random_uniform/RandomUniform/conv_pw_8/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_8/kernel
ě
+conv_pw_8/kernel/Initializer/random_uniformAdd/conv_pw_8/kernel/Initializer/random_uniform/mul/conv_pw_8/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_8/kernel*(
_output_shapes
:
ź
conv_pw_8/kernelVarHandleOp*!
shared_nameconv_pw_8/kernel*#
_class
loc:@conv_pw_8/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
q
1conv_pw_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_8/kernel*
_output_shapes
: 

conv_pw_8/kernel/AssignAssignVariableOpconv_pw_8/kernel+conv_pw_8/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_8/kernel*
dtype0
¤
$conv_pw_8/kernel/Read/ReadVariableOpReadVariableOpconv_pw_8/kernel*#
_class
loc:@conv_pw_8/kernel*
dtype0*(
_output_shapes
:
h
conv_pw_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv_pw_8/Conv2D/ReadVariableOpReadVariableOpconv_pw_8/kernel*
dtype0*(
_output_shapes
:

conv_pw_8/Conv2DConv2Dconv_dw_8_relu/Relu6conv_pw_8/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_pw_8_bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*%
_class
loc:@conv_pw_8_bn/gamma*
valueB*  ?
ľ
conv_pw_8_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_8_bn/gamma*%
_class
loc:@conv_pw_8_bn/gamma*
	container *
shape:
u
3conv_pw_8_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_8_bn/gamma*
_output_shapes
: 

conv_pw_8_bn/gamma/AssignAssignVariableOpconv_pw_8_bn/gamma#conv_pw_8_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_8_bn/gamma*
dtype0

&conv_pw_8_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_8_bn/gamma*%
_class
loc:@conv_pw_8_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_8_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_8_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_8_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_8_bn/beta*$
_class
loc:@conv_pw_8_bn/beta*
	container *
shape:
s
2conv_pw_8_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_8_bn/beta*
_output_shapes
: 

conv_pw_8_bn/beta/AssignAssignVariableOpconv_pw_8_bn/beta#conv_pw_8_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_8_bn/beta*
dtype0

%conv_pw_8_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_8_bn/beta*
dtype0*
_output_shapes	
:*$
_class
loc:@conv_pw_8_bn/beta
Ś
*conv_pw_8_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*+
_class!
loc:@conv_pw_8_bn/moving_mean*
valueB*    
Ç
conv_pw_8_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *)
shared_nameconv_pw_8_bn/moving_mean*+
_class!
loc:@conv_pw_8_bn/moving_mean*
	container *
shape:

9conv_pw_8_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_8_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_8_bn/moving_mean/AssignAssignVariableOpconv_pw_8_bn/moving_mean*conv_pw_8_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_8_bn/moving_mean*
dtype0
Ż
,conv_pw_8_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_8_bn/moving_mean*+
_class!
loc:@conv_pw_8_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_pw_8_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_8_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_8_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_8_bn/moving_variance*/
_class%
#!loc:@conv_pw_8_bn/moving_variance*
	container *
shape:

=conv_pw_8_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_8_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_8_bn/moving_variance/AssignAssignVariableOpconv_pw_8_bn/moving_variance-conv_pw_8_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_pw_8_bn/moving_variance*
dtype0
ť
0conv_pw_8_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_8_bn/moving_variance*
dtype0*
_output_shapes	
:*/
_class%
#!loc:@conv_pw_8_bn/moving_variance
k
conv_pw_8_bn/ReadVariableOpReadVariableOpconv_pw_8_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_8_bn/ReadVariableOp_1ReadVariableOpconv_pw_8_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_8_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_8_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_8_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_8_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_8_bn/FusedBatchNormFusedBatchNormconv_pw_8/Conv2Dconv_pw_8_bn/ReadVariableOpconv_pw_8_bn/ReadVariableOp_1*conv_pw_8_bn/FusedBatchNorm/ReadVariableOp,conv_pw_8_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
W
conv_pw_8_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_8_relu/Relu6Relu6conv_pw_8_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ă
;conv_dw_9/depthwise_kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@conv_dw_9/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
­
9conv_dw_9/depthwise_kernel/Initializer/random_uniform/minConst*
_output_shapes
: *-
_class#
!loc:@conv_dw_9/depthwise_kernel*
valueB
 *U¨˝*
dtype0
­
9conv_dw_9/depthwise_kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
valueB
 *U¨=*
dtype0*
_output_shapes
: 

Cconv_dw_9/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform;conv_dw_9/depthwise_kernel/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
seed2 *
dtype0*'
_output_shapes
:*

seed 

9conv_dw_9/depthwise_kernel/Initializer/random_uniform/subSub9conv_dw_9/depthwise_kernel/Initializer/random_uniform/max9conv_dw_9/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
_output_shapes
: 
Ą
9conv_dw_9/depthwise_kernel/Initializer/random_uniform/mulMulCconv_dw_9/depthwise_kernel/Initializer/random_uniform/RandomUniform9conv_dw_9/depthwise_kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@conv_dw_9/depthwise_kernel*'
_output_shapes
:

5conv_dw_9/depthwise_kernel/Initializer/random_uniformAdd9conv_dw_9/depthwise_kernel/Initializer/random_uniform/mul9conv_dw_9/depthwise_kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@conv_dw_9/depthwise_kernel*'
_output_shapes
:
Ů
conv_dw_9/depthwise_kernelVarHandleOp*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
	container *
shape:*
dtype0*
_output_shapes
: *+
shared_nameconv_dw_9/depthwise_kernel

;conv_dw_9/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_9/depthwise_kernel*
_output_shapes
: 
Ä
!conv_dw_9/depthwise_kernel/AssignAssignVariableOpconv_dw_9/depthwise_kernel5conv_dw_9/depthwise_kernel/Initializer/random_uniform*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
dtype0
Á
.conv_dw_9/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_9/depthwise_kernel*-
_class#
!loc:@conv_dw_9/depthwise_kernel*
dtype0*'
_output_shapes
:

"conv_dw_9/depthwise/ReadVariableOpReadVariableOpconv_dw_9/depthwise_kernel*
dtype0*'
_output_shapes
:
r
conv_dw_9/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
r
!conv_dw_9/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_9/depthwiseDepthwiseConv2dNativeconv_pw_8_relu/Relu6"conv_dw_9/depthwise/ReadVariableOp*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides


#conv_dw_9_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_dw_9_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_dw_9_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_9_bn/gamma*%
_class
loc:@conv_dw_9_bn/gamma*
	container *
shape:
u
3conv_dw_9_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_9_bn/gamma*
_output_shapes
: 

conv_dw_9_bn/gamma/AssignAssignVariableOpconv_dw_9_bn/gamma#conv_dw_9_bn/gamma/Initializer/ones*%
_class
loc:@conv_dw_9_bn/gamma*
dtype0

&conv_dw_9_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_9_bn/gamma*%
_class
loc:@conv_dw_9_bn/gamma*
dtype0*
_output_shapes	
:

#conv_dw_9_bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*$
_class
loc:@conv_dw_9_bn/beta*
valueB*    
˛
conv_dw_9_bn/betaVarHandleOp*"
shared_nameconv_dw_9_bn/beta*$
_class
loc:@conv_dw_9_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_dw_9_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_9_bn/beta*
_output_shapes
: 

conv_dw_9_bn/beta/AssignAssignVariableOpconv_dw_9_bn/beta#conv_dw_9_bn/beta/Initializer/zeros*$
_class
loc:@conv_dw_9_bn/beta*
dtype0

%conv_dw_9_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_9_bn/beta*$
_class
loc:@conv_dw_9_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_dw_9_bn/moving_mean/Initializer/zerosConst*+
_class!
loc:@conv_dw_9_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ç
conv_dw_9_bn/moving_meanVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nameconv_dw_9_bn/moving_mean*+
_class!
loc:@conv_dw_9_bn/moving_mean

9conv_dw_9_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_9_bn/moving_mean*
_output_shapes
: 
ł
conv_dw_9_bn/moving_mean/AssignAssignVariableOpconv_dw_9_bn/moving_mean*conv_dw_9_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_dw_9_bn/moving_mean*
dtype0
Ż
,conv_dw_9_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_9_bn/moving_mean*+
_class!
loc:@conv_dw_9_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_dw_9_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_dw_9_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_dw_9_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *-
shared_nameconv_dw_9_bn/moving_variance*/
_class%
#!loc:@conv_dw_9_bn/moving_variance*
	container *
shape:

=conv_dw_9_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_9_bn/moving_variance*
_output_shapes
: 
Â
#conv_dw_9_bn/moving_variance/AssignAssignVariableOpconv_dw_9_bn/moving_variance-conv_dw_9_bn/moving_variance/Initializer/ones*/
_class%
#!loc:@conv_dw_9_bn/moving_variance*
dtype0
ť
0conv_dw_9_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_9_bn/moving_variance*/
_class%
#!loc:@conv_dw_9_bn/moving_variance*
dtype0*
_output_shapes	
:
k
conv_dw_9_bn/ReadVariableOpReadVariableOpconv_dw_9_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_dw_9_bn/ReadVariableOp_1ReadVariableOpconv_dw_9_bn/beta*
dtype0*
_output_shapes	
:

*conv_dw_9_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_9_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_dw_9_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_9_bn/moving_variance*
dtype0*
_output_shapes	
:
ý
conv_dw_9_bn/FusedBatchNormFusedBatchNormconv_dw_9/depthwiseconv_dw_9_bn/ReadVariableOpconv_dw_9_bn/ReadVariableOp_1*conv_dw_9_bn/FusedBatchNorm/ReadVariableOp,conv_dw_9_bn/FusedBatchNorm/ReadVariableOp_1*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
W
conv_dw_9_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_9_relu/Relu6Relu6conv_dw_9_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ż
1conv_pw_9/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*#
_class
loc:@conv_pw_9/kernel*%
valueB"            *
dtype0

/conv_pw_9/kernel/Initializer/random_uniform/minConst*#
_class
loc:@conv_pw_9/kernel*
valueB
 *qÄ˝*
dtype0*
_output_shapes
: 

/conv_pw_9/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@conv_pw_9/kernel*
valueB
 *qÄ=*
dtype0*
_output_shapes
: 
ű
9conv_pw_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv_pw_9/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*(
_output_shapes
:*

seed *
T0*#
_class
loc:@conv_pw_9/kernel
Ţ
/conv_pw_9/kernel/Initializer/random_uniform/subSub/conv_pw_9/kernel/Initializer/random_uniform/max/conv_pw_9/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv_pw_9/kernel*
_output_shapes
: 
ú
/conv_pw_9/kernel/Initializer/random_uniform/mulMul9conv_pw_9/kernel/Initializer/random_uniform/RandomUniform/conv_pw_9/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv_pw_9/kernel*(
_output_shapes
:
ě
+conv_pw_9/kernel/Initializer/random_uniformAdd/conv_pw_9/kernel/Initializer/random_uniform/mul/conv_pw_9/kernel/Initializer/random_uniform/min*(
_output_shapes
:*
T0*#
_class
loc:@conv_pw_9/kernel
ź
conv_pw_9/kernelVarHandleOp*
_output_shapes
: *!
shared_nameconv_pw_9/kernel*#
_class
loc:@conv_pw_9/kernel*
	container *
shape:*
dtype0
q
1conv_pw_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_9/kernel*
_output_shapes
: 

conv_pw_9/kernel/AssignAssignVariableOpconv_pw_9/kernel+conv_pw_9/kernel/Initializer/random_uniform*#
_class
loc:@conv_pw_9/kernel*
dtype0
¤
$conv_pw_9/kernel/Read/ReadVariableOpReadVariableOpconv_pw_9/kernel*
dtype0*(
_output_shapes
:*#
_class
loc:@conv_pw_9/kernel
h
conv_pw_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
z
conv_pw_9/Conv2D/ReadVariableOpReadVariableOpconv_pw_9/kernel*
dtype0*(
_output_shapes
:

conv_pw_9/Conv2DConv2Dconv_dw_9_relu/Relu6conv_pw_9/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

#conv_pw_9_bn/gamma/Initializer/onesConst*%
_class
loc:@conv_pw_9_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
ľ
conv_pw_9_bn/gammaVarHandleOp*#
shared_nameconv_pw_9_bn/gamma*%
_class
loc:@conv_pw_9_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_pw_9_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_9_bn/gamma*
_output_shapes
: 

conv_pw_9_bn/gamma/AssignAssignVariableOpconv_pw_9_bn/gamma#conv_pw_9_bn/gamma/Initializer/ones*%
_class
loc:@conv_pw_9_bn/gamma*
dtype0

&conv_pw_9_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_9_bn/gamma*%
_class
loc:@conv_pw_9_bn/gamma*
dtype0*
_output_shapes	
:

#conv_pw_9_bn/beta/Initializer/zerosConst*$
_class
loc:@conv_pw_9_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
˛
conv_pw_9_bn/betaVarHandleOp*"
shared_nameconv_pw_9_bn/beta*$
_class
loc:@conv_pw_9_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2conv_pw_9_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_9_bn/beta*
_output_shapes
: 

conv_pw_9_bn/beta/AssignAssignVariableOpconv_pw_9_bn/beta#conv_pw_9_bn/beta/Initializer/zeros*$
_class
loc:@conv_pw_9_bn/beta*
dtype0

%conv_pw_9_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_9_bn/beta*$
_class
loc:@conv_pw_9_bn/beta*
dtype0*
_output_shapes	
:
Ś
*conv_pw_9_bn/moving_mean/Initializer/zerosConst*
_output_shapes	
:*+
_class!
loc:@conv_pw_9_bn/moving_mean*
valueB*    *
dtype0
Ç
conv_pw_9_bn/moving_meanVarHandleOp*)
shared_nameconv_pw_9_bn/moving_mean*+
_class!
loc:@conv_pw_9_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: 

9conv_pw_9_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_9_bn/moving_mean*
_output_shapes
: 
ł
conv_pw_9_bn/moving_mean/AssignAssignVariableOpconv_pw_9_bn/moving_mean*conv_pw_9_bn/moving_mean/Initializer/zeros*+
_class!
loc:@conv_pw_9_bn/moving_mean*
dtype0
Ż
,conv_pw_9_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_9_bn/moving_mean*+
_class!
loc:@conv_pw_9_bn/moving_mean*
dtype0*
_output_shapes	
:
­
-conv_pw_9_bn/moving_variance/Initializer/onesConst*/
_class%
#!loc:@conv_pw_9_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ó
conv_pw_9_bn/moving_varianceVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *-
shared_nameconv_pw_9_bn/moving_variance*/
_class%
#!loc:@conv_pw_9_bn/moving_variance

=conv_pw_9_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_9_bn/moving_variance*
_output_shapes
: 
Â
#conv_pw_9_bn/moving_variance/AssignAssignVariableOpconv_pw_9_bn/moving_variance-conv_pw_9_bn/moving_variance/Initializer/ones*
dtype0*/
_class%
#!loc:@conv_pw_9_bn/moving_variance
ť
0conv_pw_9_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_9_bn/moving_variance*
dtype0*
_output_shapes	
:*/
_class%
#!loc:@conv_pw_9_bn/moving_variance
k
conv_pw_9_bn/ReadVariableOpReadVariableOpconv_pw_9_bn/gamma*
dtype0*
_output_shapes	
:
l
conv_pw_9_bn/ReadVariableOp_1ReadVariableOpconv_pw_9_bn/beta*
dtype0*
_output_shapes	
:

*conv_pw_9_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_9_bn/moving_mean*
dtype0*
_output_shapes	
:

,conv_pw_9_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_9_bn/moving_variance*
dtype0*
_output_shapes	
:
ú
conv_pw_9_bn/FusedBatchNormFusedBatchNormconv_pw_9/Conv2Dconv_pw_9_bn/ReadVariableOpconv_pw_9_bn/ReadVariableOp_1*conv_pw_9_bn/FusedBatchNorm/ReadVariableOp,conv_pw_9_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
W
conv_pw_9_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_9_relu/Relu6Relu6conv_pw_9_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ĺ
<conv_dw_10/depthwise_kernel/Initializer/random_uniform/shapeConst*.
_class$
" loc:@conv_dw_10/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ż
:conv_dw_10/depthwise_kernel/Initializer/random_uniform/minConst*.
_class$
" loc:@conv_dw_10/depthwise_kernel*
valueB
 *U¨˝*
dtype0*
_output_shapes
: 
Ż
:conv_dw_10/depthwise_kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *.
_class$
" loc:@conv_dw_10/depthwise_kernel*
valueB
 *U¨=*
dtype0

Dconv_dw_10/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform<conv_dw_10/depthwise_kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:*

seed *
T0*.
_class$
" loc:@conv_dw_10/depthwise_kernel*
seed2 

:conv_dw_10/depthwise_kernel/Initializer/random_uniform/subSub:conv_dw_10/depthwise_kernel/Initializer/random_uniform/max:conv_dw_10/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_10/depthwise_kernel*
_output_shapes
: 
Ľ
:conv_dw_10/depthwise_kernel/Initializer/random_uniform/mulMulDconv_dw_10/depthwise_kernel/Initializer/random_uniform/RandomUniform:conv_dw_10/depthwise_kernel/Initializer/random_uniform/sub*'
_output_shapes
:*
T0*.
_class$
" loc:@conv_dw_10/depthwise_kernel

6conv_dw_10/depthwise_kernel/Initializer/random_uniformAdd:conv_dw_10/depthwise_kernel/Initializer/random_uniform/mul:conv_dw_10/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_10/depthwise_kernel*'
_output_shapes
:
Ü
conv_dw_10/depthwise_kernelVarHandleOp*,
shared_nameconv_dw_10/depthwise_kernel*.
_class$
" loc:@conv_dw_10/depthwise_kernel*
	container *
shape:*
dtype0*
_output_shapes
: 

<conv_dw_10/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_10/depthwise_kernel*
_output_shapes
: 
Č
"conv_dw_10/depthwise_kernel/AssignAssignVariableOpconv_dw_10/depthwise_kernel6conv_dw_10/depthwise_kernel/Initializer/random_uniform*
dtype0*.
_class$
" loc:@conv_dw_10/depthwise_kernel
Ä
/conv_dw_10/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_10/depthwise_kernel*'
_output_shapes
:*.
_class$
" loc:@conv_dw_10/depthwise_kernel*
dtype0

#conv_dw_10/depthwise/ReadVariableOpReadVariableOpconv_dw_10/depthwise_kernel*
dtype0*'
_output_shapes
:
s
conv_dw_10/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
"conv_dw_10/depthwise/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

conv_dw_10/depthwiseDepthwiseConv2dNativeconv_pw_9_relu/Relu6#conv_dw_10/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

$conv_dw_10_bn/gamma/Initializer/onesConst*
_output_shapes	
:*&
_class
loc:@conv_dw_10_bn/gamma*
valueB*  ?*
dtype0
¸
conv_dw_10_bn/gammaVarHandleOp*$
shared_nameconv_dw_10_bn/gamma*&
_class
loc:@conv_dw_10_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4conv_dw_10_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_10_bn/gamma*
_output_shapes
: 

conv_dw_10_bn/gamma/AssignAssignVariableOpconv_dw_10_bn/gamma$conv_dw_10_bn/gamma/Initializer/ones*&
_class
loc:@conv_dw_10_bn/gamma*
dtype0
 
'conv_dw_10_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_10_bn/gamma*&
_class
loc:@conv_dw_10_bn/gamma*
dtype0*
_output_shapes	
:

$conv_dw_10_bn/beta/Initializer/zerosConst*%
_class
loc:@conv_dw_10_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
ľ
conv_dw_10_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_10_bn/beta*%
_class
loc:@conv_dw_10_bn/beta*
	container *
shape:
u
3conv_dw_10_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_10_bn/beta*
_output_shapes
: 

conv_dw_10_bn/beta/AssignAssignVariableOpconv_dw_10_bn/beta$conv_dw_10_bn/beta/Initializer/zeros*%
_class
loc:@conv_dw_10_bn/beta*
dtype0

&conv_dw_10_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_10_bn/beta*%
_class
loc:@conv_dw_10_bn/beta*
dtype0*
_output_shapes	
:
¨
+conv_dw_10_bn/moving_mean/Initializer/zerosConst*,
_class"
 loc:@conv_dw_10_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ę
conv_dw_10_bn/moving_meanVarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nameconv_dw_10_bn/moving_mean*,
_class"
 loc:@conv_dw_10_bn/moving_mean*
	container 

:conv_dw_10_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_10_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_dw_10_bn/moving_mean/AssignAssignVariableOpconv_dw_10_bn/moving_mean+conv_dw_10_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_dw_10_bn/moving_mean*
dtype0
˛
-conv_dw_10_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_10_bn/moving_mean*,
_class"
 loc:@conv_dw_10_bn/moving_mean*
dtype0*
_output_shapes	
:
Ż
.conv_dw_10_bn/moving_variance/Initializer/onesConst*0
_class&
$"loc:@conv_dw_10_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ö
conv_dw_10_bn/moving_varianceVarHandleOp*0
_class&
$"loc:@conv_dw_10_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: *.
shared_nameconv_dw_10_bn/moving_variance

>conv_dw_10_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_10_bn/moving_variance*
_output_shapes
: 
Ć
$conv_dw_10_bn/moving_variance/AssignAssignVariableOpconv_dw_10_bn/moving_variance.conv_dw_10_bn/moving_variance/Initializer/ones*0
_class&
$"loc:@conv_dw_10_bn/moving_variance*
dtype0
ž
1conv_dw_10_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_10_bn/moving_variance*0
_class&
$"loc:@conv_dw_10_bn/moving_variance*
dtype0*
_output_shapes	
:
m
conv_dw_10_bn/ReadVariableOpReadVariableOpconv_dw_10_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_dw_10_bn/ReadVariableOp_1ReadVariableOpconv_dw_10_bn/beta*
dtype0*
_output_shapes	
:

+conv_dw_10_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_10_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_dw_10_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_10_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_dw_10_bn/FusedBatchNormFusedBatchNormconv_dw_10/depthwiseconv_dw_10_bn/ReadVariableOpconv_dw_10_bn/ReadVariableOp_1+conv_dw_10_bn/FusedBatchNorm/ReadVariableOp-conv_dw_10_bn/FusedBatchNorm/ReadVariableOp_1*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:
X
conv_dw_10_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_10_relu/Relu6Relu6conv_dw_10_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ą
2conv_pw_10/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@conv_pw_10/kernel*%
valueB"            *
dtype0*
_output_shapes
:

0conv_pw_10/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *$
_class
loc:@conv_pw_10/kernel*
valueB
 *qÄ˝*
dtype0

0conv_pw_10/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@conv_pw_10/kernel*
valueB
 *qÄ=*
dtype0*
_output_shapes
: 
ţ
:conv_pw_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform2conv_pw_10/kernel/Initializer/random_uniform/shape*

seed *
T0*$
_class
loc:@conv_pw_10/kernel*
seed2 *
dtype0*(
_output_shapes
:
â
0conv_pw_10/kernel/Initializer/random_uniform/subSub0conv_pw_10/kernel/Initializer/random_uniform/max0conv_pw_10/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_10/kernel*
_output_shapes
: 
ţ
0conv_pw_10/kernel/Initializer/random_uniform/mulMul:conv_pw_10/kernel/Initializer/random_uniform/RandomUniform0conv_pw_10/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*$
_class
loc:@conv_pw_10/kernel
đ
,conv_pw_10/kernel/Initializer/random_uniformAdd0conv_pw_10/kernel/Initializer/random_uniform/mul0conv_pw_10/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_10/kernel*(
_output_shapes
:
ż
conv_pw_10/kernelVarHandleOp*$
_class
loc:@conv_pw_10/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_10/kernel
s
2conv_pw_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_10/kernel*
_output_shapes
: 
 
conv_pw_10/kernel/AssignAssignVariableOpconv_pw_10/kernel,conv_pw_10/kernel/Initializer/random_uniform*$
_class
loc:@conv_pw_10/kernel*
dtype0
§
%conv_pw_10/kernel/Read/ReadVariableOpReadVariableOpconv_pw_10/kernel*$
_class
loc:@conv_pw_10/kernel*
dtype0*(
_output_shapes
:
i
conv_pw_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
 conv_pw_10/Conv2D/ReadVariableOpReadVariableOpconv_pw_10/kernel*
dtype0*(
_output_shapes
:

conv_pw_10/Conv2DConv2Dconv_dw_10_relu/Relu6 conv_pw_10/Conv2D/ReadVariableOp*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

$conv_pw_10_bn/gamma/Initializer/onesConst*&
_class
loc:@conv_pw_10_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
¸
conv_pw_10_bn/gammaVarHandleOp*$
shared_nameconv_pw_10_bn/gamma*&
_class
loc:@conv_pw_10_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4conv_pw_10_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_10_bn/gamma*
_output_shapes
: 

conv_pw_10_bn/gamma/AssignAssignVariableOpconv_pw_10_bn/gamma$conv_pw_10_bn/gamma/Initializer/ones*&
_class
loc:@conv_pw_10_bn/gamma*
dtype0
 
'conv_pw_10_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_10_bn/gamma*&
_class
loc:@conv_pw_10_bn/gamma*
dtype0*
_output_shapes	
:

$conv_pw_10_bn/beta/Initializer/zerosConst*%
_class
loc:@conv_pw_10_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
ľ
conv_pw_10_bn/betaVarHandleOp*%
_class
loc:@conv_pw_10_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_10_bn/beta
u
3conv_pw_10_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_10_bn/beta*
_output_shapes
: 

conv_pw_10_bn/beta/AssignAssignVariableOpconv_pw_10_bn/beta$conv_pw_10_bn/beta/Initializer/zeros*%
_class
loc:@conv_pw_10_bn/beta*
dtype0

&conv_pw_10_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_10_bn/beta*%
_class
loc:@conv_pw_10_bn/beta*
dtype0*
_output_shapes	
:
¨
+conv_pw_10_bn/moving_mean/Initializer/zerosConst*,
_class"
 loc:@conv_pw_10_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ę
conv_pw_10_bn/moving_meanVarHandleOp**
shared_nameconv_pw_10_bn/moving_mean*,
_class"
 loc:@conv_pw_10_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: 

:conv_pw_10_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_10_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_pw_10_bn/moving_mean/AssignAssignVariableOpconv_pw_10_bn/moving_mean+conv_pw_10_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_pw_10_bn/moving_mean*
dtype0
˛
-conv_pw_10_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_10_bn/moving_mean*,
_class"
 loc:@conv_pw_10_bn/moving_mean*
dtype0*
_output_shapes	
:
Ż
.conv_pw_10_bn/moving_variance/Initializer/onesConst*0
_class&
$"loc:@conv_pw_10_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ö
conv_pw_10_bn/moving_varianceVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *.
shared_nameconv_pw_10_bn/moving_variance*0
_class&
$"loc:@conv_pw_10_bn/moving_variance

>conv_pw_10_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_10_bn/moving_variance*
_output_shapes
: 
Ć
$conv_pw_10_bn/moving_variance/AssignAssignVariableOpconv_pw_10_bn/moving_variance.conv_pw_10_bn/moving_variance/Initializer/ones*0
_class&
$"loc:@conv_pw_10_bn/moving_variance*
dtype0
ž
1conv_pw_10_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_10_bn/moving_variance*0
_class&
$"loc:@conv_pw_10_bn/moving_variance*
dtype0*
_output_shapes	
:
m
conv_pw_10_bn/ReadVariableOpReadVariableOpconv_pw_10_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_pw_10_bn/ReadVariableOp_1ReadVariableOpconv_pw_10_bn/beta*
_output_shapes	
:*
dtype0

+conv_pw_10_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_10_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_pw_10_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_10_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_pw_10_bn/FusedBatchNormFusedBatchNormconv_pw_10/Conv2Dconv_pw_10_bn/ReadVariableOpconv_pw_10_bn/ReadVariableOp_1+conv_pw_10_bn/FusedBatchNorm/ReadVariableOp-conv_pw_10_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
X
conv_pw_10_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_10_relu/Relu6Relu6conv_pw_10_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ĺ
<conv_dw_11/depthwise_kernel/Initializer/random_uniform/shapeConst*.
_class$
" loc:@conv_dw_11/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ż
:conv_dw_11/depthwise_kernel/Initializer/random_uniform/minConst*.
_class$
" loc:@conv_dw_11/depthwise_kernel*
valueB
 *U¨˝*
dtype0*
_output_shapes
: 
Ż
:conv_dw_11/depthwise_kernel/Initializer/random_uniform/maxConst*.
_class$
" loc:@conv_dw_11/depthwise_kernel*
valueB
 *U¨=*
dtype0*
_output_shapes
: 

Dconv_dw_11/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform<conv_dw_11/depthwise_kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*'
_output_shapes
:*

seed *
T0*.
_class$
" loc:@conv_dw_11/depthwise_kernel

:conv_dw_11/depthwise_kernel/Initializer/random_uniform/subSub:conv_dw_11/depthwise_kernel/Initializer/random_uniform/max:conv_dw_11/depthwise_kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*.
_class$
" loc:@conv_dw_11/depthwise_kernel
Ľ
:conv_dw_11/depthwise_kernel/Initializer/random_uniform/mulMulDconv_dw_11/depthwise_kernel/Initializer/random_uniform/RandomUniform:conv_dw_11/depthwise_kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@conv_dw_11/depthwise_kernel*'
_output_shapes
:

6conv_dw_11/depthwise_kernel/Initializer/random_uniformAdd:conv_dw_11/depthwise_kernel/Initializer/random_uniform/mul:conv_dw_11/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_11/depthwise_kernel*'
_output_shapes
:
Ü
conv_dw_11/depthwise_kernelVarHandleOp*,
shared_nameconv_dw_11/depthwise_kernel*.
_class$
" loc:@conv_dw_11/depthwise_kernel*
	container *
shape:*
dtype0*
_output_shapes
: 

<conv_dw_11/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_11/depthwise_kernel*
_output_shapes
: 
Č
"conv_dw_11/depthwise_kernel/AssignAssignVariableOpconv_dw_11/depthwise_kernel6conv_dw_11/depthwise_kernel/Initializer/random_uniform*.
_class$
" loc:@conv_dw_11/depthwise_kernel*
dtype0
Ä
/conv_dw_11/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_11/depthwise_kernel*.
_class$
" loc:@conv_dw_11/depthwise_kernel*
dtype0*'
_output_shapes
:

#conv_dw_11/depthwise/ReadVariableOpReadVariableOpconv_dw_11/depthwise_kernel*
dtype0*'
_output_shapes
:
s
conv_dw_11/depthwise/ShapeConst*
_output_shapes
:*%
valueB"            *
dtype0
s
"conv_dw_11/depthwise/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

conv_dw_11/depthwiseDepthwiseConv2dNativeconv_pw_10_relu/Relu6#conv_dw_11/depthwise/ReadVariableOp*
T0*
data_formatNHWC*
strides
*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations


$conv_dw_11_bn/gamma/Initializer/onesConst*
_output_shapes	
:*&
_class
loc:@conv_dw_11_bn/gamma*
valueB*  ?*
dtype0
¸
conv_dw_11_bn/gammaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nameconv_dw_11_bn/gamma*&
_class
loc:@conv_dw_11_bn/gamma
w
4conv_dw_11_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_11_bn/gamma*
_output_shapes
: 

conv_dw_11_bn/gamma/AssignAssignVariableOpconv_dw_11_bn/gamma$conv_dw_11_bn/gamma/Initializer/ones*&
_class
loc:@conv_dw_11_bn/gamma*
dtype0
 
'conv_dw_11_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_11_bn/gamma*&
_class
loc:@conv_dw_11_bn/gamma*
dtype0*
_output_shapes	
:

$conv_dw_11_bn/beta/Initializer/zerosConst*%
_class
loc:@conv_dw_11_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
ľ
conv_dw_11_bn/betaVarHandleOp*#
shared_nameconv_dw_11_bn/beta*%
_class
loc:@conv_dw_11_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_dw_11_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_11_bn/beta*
_output_shapes
: 

conv_dw_11_bn/beta/AssignAssignVariableOpconv_dw_11_bn/beta$conv_dw_11_bn/beta/Initializer/zeros*%
_class
loc:@conv_dw_11_bn/beta*
dtype0

&conv_dw_11_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_11_bn/beta*
_output_shapes	
:*%
_class
loc:@conv_dw_11_bn/beta*
dtype0
¨
+conv_dw_11_bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*,
_class"
 loc:@conv_dw_11_bn/moving_mean*
valueB*    
Ę
conv_dw_11_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: **
shared_nameconv_dw_11_bn/moving_mean*,
_class"
 loc:@conv_dw_11_bn/moving_mean*
	container *
shape:

:conv_dw_11_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_11_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_dw_11_bn/moving_mean/AssignAssignVariableOpconv_dw_11_bn/moving_mean+conv_dw_11_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_dw_11_bn/moving_mean*
dtype0
˛
-conv_dw_11_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_11_bn/moving_mean*
_output_shapes	
:*,
_class"
 loc:@conv_dw_11_bn/moving_mean*
dtype0
Ż
.conv_dw_11_bn/moving_variance/Initializer/onesConst*0
_class&
$"loc:@conv_dw_11_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ö
conv_dw_11_bn/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *.
shared_nameconv_dw_11_bn/moving_variance*0
_class&
$"loc:@conv_dw_11_bn/moving_variance*
	container *
shape:

>conv_dw_11_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_11_bn/moving_variance*
_output_shapes
: 
Ć
$conv_dw_11_bn/moving_variance/AssignAssignVariableOpconv_dw_11_bn/moving_variance.conv_dw_11_bn/moving_variance/Initializer/ones*0
_class&
$"loc:@conv_dw_11_bn/moving_variance*
dtype0
ž
1conv_dw_11_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_11_bn/moving_variance*0
_class&
$"loc:@conv_dw_11_bn/moving_variance*
dtype0*
_output_shapes	
:
m
conv_dw_11_bn/ReadVariableOpReadVariableOpconv_dw_11_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_dw_11_bn/ReadVariableOp_1ReadVariableOpconv_dw_11_bn/beta*
dtype0*
_output_shapes	
:

+conv_dw_11_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_11_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_dw_11_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_11_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_dw_11_bn/FusedBatchNormFusedBatchNormconv_dw_11/depthwiseconv_dw_11_bn/ReadVariableOpconv_dw_11_bn/ReadVariableOp_1+conv_dw_11_bn/FusedBatchNorm/ReadVariableOp-conv_dw_11_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
X
conv_dw_11_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_11_relu/Relu6Relu6conv_dw_11_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ą
2conv_pw_11/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@conv_pw_11/kernel*%
valueB"            *
dtype0*
_output_shapes
:

0conv_pw_11/kernel/Initializer/random_uniform/minConst*$
_class
loc:@conv_pw_11/kernel*
valueB
 *qÄ˝*
dtype0*
_output_shapes
: 

0conv_pw_11/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@conv_pw_11/kernel*
valueB
 *qÄ=*
dtype0*
_output_shapes
: 
ţ
:conv_pw_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform2conv_pw_11/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*$
_class
loc:@conv_pw_11/kernel*
seed2 
â
0conv_pw_11/kernel/Initializer/random_uniform/subSub0conv_pw_11/kernel/Initializer/random_uniform/max0conv_pw_11/kernel/Initializer/random_uniform/min*$
_class
loc:@conv_pw_11/kernel*
_output_shapes
: *
T0
ţ
0conv_pw_11/kernel/Initializer/random_uniform/mulMul:conv_pw_11/kernel/Initializer/random_uniform/RandomUniform0conv_pw_11/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@conv_pw_11/kernel*(
_output_shapes
:
đ
,conv_pw_11/kernel/Initializer/random_uniformAdd0conv_pw_11/kernel/Initializer/random_uniform/mul0conv_pw_11/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_11/kernel*(
_output_shapes
:
ż
conv_pw_11/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_11/kernel*$
_class
loc:@conv_pw_11/kernel
s
2conv_pw_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_11/kernel*
_output_shapes
: 
 
conv_pw_11/kernel/AssignAssignVariableOpconv_pw_11/kernel,conv_pw_11/kernel/Initializer/random_uniform*$
_class
loc:@conv_pw_11/kernel*
dtype0
§
%conv_pw_11/kernel/Read/ReadVariableOpReadVariableOpconv_pw_11/kernel*(
_output_shapes
:*$
_class
loc:@conv_pw_11/kernel*
dtype0
i
conv_pw_11/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
|
 conv_pw_11/Conv2D/ReadVariableOpReadVariableOpconv_pw_11/kernel*
dtype0*(
_output_shapes
:

conv_pw_11/Conv2DConv2Dconv_dw_11_relu/Relu6 conv_pw_11/Conv2D/ReadVariableOp*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

$conv_pw_11_bn/gamma/Initializer/onesConst*&
_class
loc:@conv_pw_11_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
¸
conv_pw_11_bn/gammaVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameconv_pw_11_bn/gamma*&
_class
loc:@conv_pw_11_bn/gamma*
	container *
shape:
w
4conv_pw_11_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_11_bn/gamma*
_output_shapes
: 

conv_pw_11_bn/gamma/AssignAssignVariableOpconv_pw_11_bn/gamma$conv_pw_11_bn/gamma/Initializer/ones*&
_class
loc:@conv_pw_11_bn/gamma*
dtype0
 
'conv_pw_11_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_11_bn/gamma*&
_class
loc:@conv_pw_11_bn/gamma*
dtype0*
_output_shapes	
:

$conv_pw_11_bn/beta/Initializer/zerosConst*
_output_shapes	
:*%
_class
loc:@conv_pw_11_bn/beta*
valueB*    *
dtype0
ľ
conv_pw_11_bn/betaVarHandleOp*#
shared_nameconv_pw_11_bn/beta*%
_class
loc:@conv_pw_11_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_pw_11_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_11_bn/beta*
_output_shapes
: 

conv_pw_11_bn/beta/AssignAssignVariableOpconv_pw_11_bn/beta$conv_pw_11_bn/beta/Initializer/zeros*%
_class
loc:@conv_pw_11_bn/beta*
dtype0

&conv_pw_11_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_11_bn/beta*%
_class
loc:@conv_pw_11_bn/beta*
dtype0*
_output_shapes	
:
¨
+conv_pw_11_bn/moving_mean/Initializer/zerosConst*,
_class"
 loc:@conv_pw_11_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ę
conv_pw_11_bn/moving_meanVarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nameconv_pw_11_bn/moving_mean*,
_class"
 loc:@conv_pw_11_bn/moving_mean*
	container 

:conv_pw_11_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_11_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_pw_11_bn/moving_mean/AssignAssignVariableOpconv_pw_11_bn/moving_mean+conv_pw_11_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_pw_11_bn/moving_mean*
dtype0
˛
-conv_pw_11_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_11_bn/moving_mean*,
_class"
 loc:@conv_pw_11_bn/moving_mean*
dtype0*
_output_shapes	
:
Ż
.conv_pw_11_bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@conv_pw_11_bn/moving_variance*
valueB*  ?
Ö
conv_pw_11_bn/moving_varianceVarHandleOp*.
shared_nameconv_pw_11_bn/moving_variance*0
_class&
$"loc:@conv_pw_11_bn/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
: 

>conv_pw_11_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_11_bn/moving_variance*
_output_shapes
: 
Ć
$conv_pw_11_bn/moving_variance/AssignAssignVariableOpconv_pw_11_bn/moving_variance.conv_pw_11_bn/moving_variance/Initializer/ones*0
_class&
$"loc:@conv_pw_11_bn/moving_variance*
dtype0
ž
1conv_pw_11_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_11_bn/moving_variance*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@conv_pw_11_bn/moving_variance
m
conv_pw_11_bn/ReadVariableOpReadVariableOpconv_pw_11_bn/gamma*
_output_shapes	
:*
dtype0
n
conv_pw_11_bn/ReadVariableOp_1ReadVariableOpconv_pw_11_bn/beta*
_output_shapes	
:*
dtype0

+conv_pw_11_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_11_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_pw_11_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_11_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_pw_11_bn/FusedBatchNormFusedBatchNormconv_pw_11/Conv2Dconv_pw_11_bn/ReadVariableOpconv_pw_11_bn/ReadVariableOp_1+conv_pw_11_bn/FusedBatchNorm/ReadVariableOp-conv_pw_11_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
X
conv_pw_11_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_11_relu/Relu6Relu6conv_pw_11_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

conv_pad_12/Pad/paddingsConst*9
value0B."                               *
dtype0*
_output_shapes

:
Ľ
conv_pad_12/PadPadconv_pw_11_relu/Relu6conv_pad_12/Pad/paddings*
T0*
	Tpaddings0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ĺ
<conv_dw_12/depthwise_kernel/Initializer/random_uniform/shapeConst*.
_class$
" loc:@conv_dw_12/depthwise_kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ż
:conv_dw_12/depthwise_kernel/Initializer/random_uniform/minConst*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
valueB
 *U¨˝*
dtype0*
_output_shapes
: 
Ż
:conv_dw_12/depthwise_kernel/Initializer/random_uniform/maxConst*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
valueB
 *U¨=*
dtype0*
_output_shapes
: 

Dconv_dw_12/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform<conv_dw_12/depthwise_kernel/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
seed2 *
dtype0*'
_output_shapes
:*

seed 

:conv_dw_12/depthwise_kernel/Initializer/random_uniform/subSub:conv_dw_12/depthwise_kernel/Initializer/random_uniform/max:conv_dw_12/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
_output_shapes
: 
Ľ
:conv_dw_12/depthwise_kernel/Initializer/random_uniform/mulMulDconv_dw_12/depthwise_kernel/Initializer/random_uniform/RandomUniform:conv_dw_12/depthwise_kernel/Initializer/random_uniform/sub*'
_output_shapes
:*
T0*.
_class$
" loc:@conv_dw_12/depthwise_kernel

6conv_dw_12/depthwise_kernel/Initializer/random_uniformAdd:conv_dw_12/depthwise_kernel/Initializer/random_uniform/mul:conv_dw_12/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_12/depthwise_kernel*'
_output_shapes
:
Ü
conv_dw_12/depthwise_kernelVarHandleOp*,
shared_nameconv_dw_12/depthwise_kernel*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
	container *
shape:*
dtype0*
_output_shapes
: 

<conv_dw_12/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_12/depthwise_kernel*
_output_shapes
: 
Č
"conv_dw_12/depthwise_kernel/AssignAssignVariableOpconv_dw_12/depthwise_kernel6conv_dw_12/depthwise_kernel/Initializer/random_uniform*.
_class$
" loc:@conv_dw_12/depthwise_kernel*
dtype0
Ä
/conv_dw_12/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_12/depthwise_kernel*
dtype0*'
_output_shapes
:*.
_class$
" loc:@conv_dw_12/depthwise_kernel

#conv_dw_12/depthwise/ReadVariableOpReadVariableOpconv_dw_12/depthwise_kernel*
dtype0*'
_output_shapes
:
s
conv_dw_12/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
"conv_dw_12/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_12/depthwiseDepthwiseConv2dNativeconv_pad_12/Pad#conv_dw_12/depthwise/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

$conv_dw_12_bn/gamma/Initializer/onesConst*&
_class
loc:@conv_dw_12_bn/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
¸
conv_dw_12_bn/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_nameconv_dw_12_bn/gamma*&
_class
loc:@conv_dw_12_bn/gamma*
	container 
w
4conv_dw_12_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_12_bn/gamma*
_output_shapes
: 

conv_dw_12_bn/gamma/AssignAssignVariableOpconv_dw_12_bn/gamma$conv_dw_12_bn/gamma/Initializer/ones*&
_class
loc:@conv_dw_12_bn/gamma*
dtype0
 
'conv_dw_12_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_12_bn/gamma*&
_class
loc:@conv_dw_12_bn/gamma*
dtype0*
_output_shapes	
:

$conv_dw_12_bn/beta/Initializer/zerosConst*%
_class
loc:@conv_dw_12_bn/beta*
valueB*    *
dtype0*
_output_shapes	
:
ľ
conv_dw_12_bn/betaVarHandleOp*#
shared_nameconv_dw_12_bn/beta*%
_class
loc:@conv_dw_12_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3conv_dw_12_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_12_bn/beta*
_output_shapes
: 

conv_dw_12_bn/beta/AssignAssignVariableOpconv_dw_12_bn/beta$conv_dw_12_bn/beta/Initializer/zeros*%
_class
loc:@conv_dw_12_bn/beta*
dtype0

&conv_dw_12_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_12_bn/beta*%
_class
loc:@conv_dw_12_bn/beta*
dtype0*
_output_shapes	
:
¨
+conv_dw_12_bn/moving_mean/Initializer/zerosConst*,
_class"
 loc:@conv_dw_12_bn/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ę
conv_dw_12_bn/moving_meanVarHandleOp**
shared_nameconv_dw_12_bn/moving_mean*,
_class"
 loc:@conv_dw_12_bn/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
: 

:conv_dw_12_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_12_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_dw_12_bn/moving_mean/AssignAssignVariableOpconv_dw_12_bn/moving_mean+conv_dw_12_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_dw_12_bn/moving_mean*
dtype0
˛
-conv_dw_12_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_12_bn/moving_mean*
dtype0*
_output_shapes	
:*,
_class"
 loc:@conv_dw_12_bn/moving_mean
Ż
.conv_dw_12_bn/moving_variance/Initializer/onesConst*0
_class&
$"loc:@conv_dw_12_bn/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Ö
conv_dw_12_bn/moving_varianceVarHandleOp*
_output_shapes
: *.
shared_nameconv_dw_12_bn/moving_variance*0
_class&
$"loc:@conv_dw_12_bn/moving_variance*
	container *
shape:*
dtype0

>conv_dw_12_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_12_bn/moving_variance*
_output_shapes
: 
Ć
$conv_dw_12_bn/moving_variance/AssignAssignVariableOpconv_dw_12_bn/moving_variance.conv_dw_12_bn/moving_variance/Initializer/ones*0
_class&
$"loc:@conv_dw_12_bn/moving_variance*
dtype0
ž
1conv_dw_12_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_12_bn/moving_variance*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@conv_dw_12_bn/moving_variance
m
conv_dw_12_bn/ReadVariableOpReadVariableOpconv_dw_12_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_dw_12_bn/ReadVariableOp_1ReadVariableOpconv_dw_12_bn/beta*
dtype0*
_output_shapes	
:

+conv_dw_12_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_12_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_dw_12_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_12_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_dw_12_bn/FusedBatchNormFusedBatchNormconv_dw_12/depthwiseconv_dw_12_bn/ReadVariableOpconv_dw_12_bn/ReadVariableOp_1+conv_dw_12_bn/FusedBatchNorm/ReadVariableOp-conv_dw_12_bn/FusedBatchNorm/ReadVariableOp_1*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0*
data_formatNHWC
X
conv_dw_12_bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *¤p}?

conv_dw_12_relu/Relu6Relu6conv_dw_12_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ą
2conv_pw_12/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@conv_pw_12/kernel*%
valueB"            *
dtype0*
_output_shapes
:

0conv_pw_12/kernel/Initializer/random_uniform/minConst*$
_class
loc:@conv_pw_12/kernel*
valueB
 *  ˝*
dtype0*
_output_shapes
: 

0conv_pw_12/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@conv_pw_12/kernel*
valueB
 *  =*
dtype0*
_output_shapes
: 
ţ
:conv_pw_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform2conv_pw_12/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@conv_pw_12/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
â
0conv_pw_12/kernel/Initializer/random_uniform/subSub0conv_pw_12/kernel/Initializer/random_uniform/max0conv_pw_12/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_12/kernel*
_output_shapes
: 
ţ
0conv_pw_12/kernel/Initializer/random_uniform/mulMul:conv_pw_12/kernel/Initializer/random_uniform/RandomUniform0conv_pw_12/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@conv_pw_12/kernel*(
_output_shapes
:
đ
,conv_pw_12/kernel/Initializer/random_uniformAdd0conv_pw_12/kernel/Initializer/random_uniform/mul0conv_pw_12/kernel/Initializer/random_uniform/min*$
_class
loc:@conv_pw_12/kernel*(
_output_shapes
:*
T0
ż
conv_pw_12/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_12/kernel*$
_class
loc:@conv_pw_12/kernel*
	container 
s
2conv_pw_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_12/kernel*
_output_shapes
: 
 
conv_pw_12/kernel/AssignAssignVariableOpconv_pw_12/kernel,conv_pw_12/kernel/Initializer/random_uniform*$
_class
loc:@conv_pw_12/kernel*
dtype0
§
%conv_pw_12/kernel/Read/ReadVariableOpReadVariableOpconv_pw_12/kernel*(
_output_shapes
:*$
_class
loc:@conv_pw_12/kernel*
dtype0
i
conv_pw_12/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
 conv_pw_12/Conv2D/ReadVariableOpReadVariableOpconv_pw_12/kernel*
dtype0*(
_output_shapes
:

conv_pw_12/Conv2DConv2Dconv_dw_12_relu/Relu6 conv_pw_12/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
§
4conv_pw_12_bn/gamma/Initializer/ones/shape_as_tensorConst*&
_class
loc:@conv_pw_12_bn/gamma*
valueB:*
dtype0*
_output_shapes
:

*conv_pw_12_bn/gamma/Initializer/ones/ConstConst*&
_class
loc:@conv_pw_12_bn/gamma*
valueB
 *  ?*
dtype0*
_output_shapes
: 
î
$conv_pw_12_bn/gamma/Initializer/onesFill4conv_pw_12_bn/gamma/Initializer/ones/shape_as_tensor*conv_pw_12_bn/gamma/Initializer/ones/Const*
T0*&
_class
loc:@conv_pw_12_bn/gamma*

index_type0*
_output_shapes	
:
¸
conv_pw_12_bn/gammaVarHandleOp*$
shared_nameconv_pw_12_bn/gamma*&
_class
loc:@conv_pw_12_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4conv_pw_12_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_12_bn/gamma*
_output_shapes
: 

conv_pw_12_bn/gamma/AssignAssignVariableOpconv_pw_12_bn/gamma$conv_pw_12_bn/gamma/Initializer/ones*
dtype0*&
_class
loc:@conv_pw_12_bn/gamma
 
'conv_pw_12_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_12_bn/gamma*&
_class
loc:@conv_pw_12_bn/gamma*
dtype0*
_output_shapes	
:
Ś
4conv_pw_12_bn/beta/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@conv_pw_12_bn/beta*
valueB:*
dtype0*
_output_shapes
:

*conv_pw_12_bn/beta/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@conv_pw_12_bn/beta*
valueB
 *    *
dtype0
í
$conv_pw_12_bn/beta/Initializer/zerosFill4conv_pw_12_bn/beta/Initializer/zeros/shape_as_tensor*conv_pw_12_bn/beta/Initializer/zeros/Const*%
_class
loc:@conv_pw_12_bn/beta*

index_type0*
_output_shapes	
:*
T0
ľ
conv_pw_12_bn/betaVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_12_bn/beta*%
_class
loc:@conv_pw_12_bn/beta*
	container *
shape:
u
3conv_pw_12_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_12_bn/beta*
_output_shapes
: 

conv_pw_12_bn/beta/AssignAssignVariableOpconv_pw_12_bn/beta$conv_pw_12_bn/beta/Initializer/zeros*%
_class
loc:@conv_pw_12_bn/beta*
dtype0

&conv_pw_12_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_12_bn/beta*%
_class
loc:@conv_pw_12_bn/beta*
dtype0*
_output_shapes	
:
´
;conv_pw_12_bn/moving_mean/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@conv_pw_12_bn/moving_mean*
valueB:*
dtype0*
_output_shapes
:
¤
1conv_pw_12_bn/moving_mean/Initializer/zeros/ConstConst*,
_class"
 loc:@conv_pw_12_bn/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 

+conv_pw_12_bn/moving_mean/Initializer/zerosFill;conv_pw_12_bn/moving_mean/Initializer/zeros/shape_as_tensor1conv_pw_12_bn/moving_mean/Initializer/zeros/Const*
_output_shapes	
:*
T0*,
_class"
 loc:@conv_pw_12_bn/moving_mean*

index_type0
Ę
conv_pw_12_bn/moving_meanVarHandleOp*
dtype0*
_output_shapes
: **
shared_nameconv_pw_12_bn/moving_mean*,
_class"
 loc:@conv_pw_12_bn/moving_mean*
	container *
shape:

:conv_pw_12_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_12_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_pw_12_bn/moving_mean/AssignAssignVariableOpconv_pw_12_bn/moving_mean+conv_pw_12_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_pw_12_bn/moving_mean*
dtype0
˛
-conv_pw_12_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_12_bn/moving_mean*,
_class"
 loc:@conv_pw_12_bn/moving_mean*
dtype0*
_output_shapes	
:
ť
>conv_pw_12_bn/moving_variance/Initializer/ones/shape_as_tensorConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@conv_pw_12_bn/moving_variance*
valueB:
Ť
4conv_pw_12_bn/moving_variance/Initializer/ones/ConstConst*0
_class&
$"loc:@conv_pw_12_bn/moving_variance*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.conv_pw_12_bn/moving_variance/Initializer/onesFill>conv_pw_12_bn/moving_variance/Initializer/ones/shape_as_tensor4conv_pw_12_bn/moving_variance/Initializer/ones/Const*
T0*0
_class&
$"loc:@conv_pw_12_bn/moving_variance*

index_type0*
_output_shapes	
:
Ö
conv_pw_12_bn/moving_varianceVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *.
shared_nameconv_pw_12_bn/moving_variance*0
_class&
$"loc:@conv_pw_12_bn/moving_variance

>conv_pw_12_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_12_bn/moving_variance*
_output_shapes
: 
Ć
$conv_pw_12_bn/moving_variance/AssignAssignVariableOpconv_pw_12_bn/moving_variance.conv_pw_12_bn/moving_variance/Initializer/ones*
dtype0*0
_class&
$"loc:@conv_pw_12_bn/moving_variance
ž
1conv_pw_12_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_12_bn/moving_variance*
_output_shapes	
:*0
_class&
$"loc:@conv_pw_12_bn/moving_variance*
dtype0
m
conv_pw_12_bn/ReadVariableOpReadVariableOpconv_pw_12_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_pw_12_bn/ReadVariableOp_1ReadVariableOpconv_pw_12_bn/beta*
dtype0*
_output_shapes	
:

+conv_pw_12_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_12_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_pw_12_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_12_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_pw_12_bn/FusedBatchNormFusedBatchNormconv_pw_12/Conv2Dconv_pw_12_bn/ReadVariableOpconv_pw_12_bn/ReadVariableOp_1+conv_pw_12_bn/FusedBatchNorm/ReadVariableOp-conv_pw_12_bn/FusedBatchNorm/ReadVariableOp_1*
epsilon%o:*
T0*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( 
X
conv_pw_12_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_pw_12_relu/Relu6Relu6conv_pw_12_bn/FusedBatchNorm*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ĺ
<conv_dw_13/depthwise_kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*.
_class$
" loc:@conv_dw_13/depthwise_kernel*%
valueB"            *
dtype0
Ż
:conv_dw_13/depthwise_kernel/Initializer/random_uniform/minConst*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
valueB
 *ĐëĐź*
dtype0*
_output_shapes
: 
Ż
:conv_dw_13/depthwise_kernel/Initializer/random_uniform/maxConst*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
valueB
 *ĐëĐ<*
dtype0*
_output_shapes
: 

Dconv_dw_13/depthwise_kernel/Initializer/random_uniform/RandomUniformRandomUniform<conv_dw_13/depthwise_kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*'
_output_shapes
:*

seed *
T0*.
_class$
" loc:@conv_dw_13/depthwise_kernel

:conv_dw_13/depthwise_kernel/Initializer/random_uniform/subSub:conv_dw_13/depthwise_kernel/Initializer/random_uniform/max:conv_dw_13/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
_output_shapes
: 
Ľ
:conv_dw_13/depthwise_kernel/Initializer/random_uniform/mulMulDconv_dw_13/depthwise_kernel/Initializer/random_uniform/RandomUniform:conv_dw_13/depthwise_kernel/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@conv_dw_13/depthwise_kernel*'
_output_shapes
:

6conv_dw_13/depthwise_kernel/Initializer/random_uniformAdd:conv_dw_13/depthwise_kernel/Initializer/random_uniform/mul:conv_dw_13/depthwise_kernel/Initializer/random_uniform/min*
T0*.
_class$
" loc:@conv_dw_13/depthwise_kernel*'
_output_shapes
:
Ü
conv_dw_13/depthwise_kernelVarHandleOp*
_output_shapes
: *,
shared_nameconv_dw_13/depthwise_kernel*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
	container *
shape:*
dtype0

<conv_dw_13/depthwise_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_13/depthwise_kernel*
_output_shapes
: 
Č
"conv_dw_13/depthwise_kernel/AssignAssignVariableOpconv_dw_13/depthwise_kernel6conv_dw_13/depthwise_kernel/Initializer/random_uniform*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
dtype0
Ä
/conv_dw_13/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_13/depthwise_kernel*.
_class$
" loc:@conv_dw_13/depthwise_kernel*
dtype0*'
_output_shapes
:

#conv_dw_13/depthwise/ReadVariableOpReadVariableOpconv_dw_13/depthwise_kernel*
dtype0*'
_output_shapes
:
s
conv_dw_13/depthwise/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
"conv_dw_13/depthwise/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

conv_dw_13/depthwiseDepthwiseConv2dNativeconv_pw_12_relu/Relu6#conv_dw_13/depthwise/ReadVariableOp*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides

§
4conv_dw_13_bn/gamma/Initializer/ones/shape_as_tensorConst*
_output_shapes
:*&
_class
loc:@conv_dw_13_bn/gamma*
valueB:*
dtype0

*conv_dw_13_bn/gamma/Initializer/ones/ConstConst*&
_class
loc:@conv_dw_13_bn/gamma*
valueB
 *  ?*
dtype0*
_output_shapes
: 
î
$conv_dw_13_bn/gamma/Initializer/onesFill4conv_dw_13_bn/gamma/Initializer/ones/shape_as_tensor*conv_dw_13_bn/gamma/Initializer/ones/Const*&
_class
loc:@conv_dw_13_bn/gamma*

index_type0*
_output_shapes	
:*
T0
¸
conv_dw_13_bn/gammaVarHandleOp*$
shared_nameconv_dw_13_bn/gamma*&
_class
loc:@conv_dw_13_bn/gamma*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4conv_dw_13_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_13_bn/gamma*
_output_shapes
: 

conv_dw_13_bn/gamma/AssignAssignVariableOpconv_dw_13_bn/gamma$conv_dw_13_bn/gamma/Initializer/ones*
dtype0*&
_class
loc:@conv_dw_13_bn/gamma
 
'conv_dw_13_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_13_bn/gamma*&
_class
loc:@conv_dw_13_bn/gamma*
dtype0*
_output_shapes	
:
Ś
4conv_dw_13_bn/beta/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@conv_dw_13_bn/beta*
valueB:*
dtype0*
_output_shapes
:

*conv_dw_13_bn/beta/Initializer/zeros/ConstConst*%
_class
loc:@conv_dw_13_bn/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
í
$conv_dw_13_bn/beta/Initializer/zerosFill4conv_dw_13_bn/beta/Initializer/zeros/shape_as_tensor*conv_dw_13_bn/beta/Initializer/zeros/Const*
_output_shapes	
:*
T0*%
_class
loc:@conv_dw_13_bn/beta*

index_type0
ľ
conv_dw_13_bn/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_dw_13_bn/beta*%
_class
loc:@conv_dw_13_bn/beta*
	container 
u
3conv_dw_13_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_13_bn/beta*
_output_shapes
: 

conv_dw_13_bn/beta/AssignAssignVariableOpconv_dw_13_bn/beta$conv_dw_13_bn/beta/Initializer/zeros*%
_class
loc:@conv_dw_13_bn/beta*
dtype0

&conv_dw_13_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_13_bn/beta*%
_class
loc:@conv_dw_13_bn/beta*
dtype0*
_output_shapes	
:
´
;conv_dw_13_bn/moving_mean/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@conv_dw_13_bn/moving_mean*
valueB:*
dtype0*
_output_shapes
:
¤
1conv_dw_13_bn/moving_mean/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@conv_dw_13_bn/moving_mean*
valueB
 *    

+conv_dw_13_bn/moving_mean/Initializer/zerosFill;conv_dw_13_bn/moving_mean/Initializer/zeros/shape_as_tensor1conv_dw_13_bn/moving_mean/Initializer/zeros/Const*
T0*,
_class"
 loc:@conv_dw_13_bn/moving_mean*

index_type0*
_output_shapes	
:
Ę
conv_dw_13_bn/moving_meanVarHandleOp*
_output_shapes
: **
shared_nameconv_dw_13_bn/moving_mean*,
_class"
 loc:@conv_dw_13_bn/moving_mean*
	container *
shape:*
dtype0

:conv_dw_13_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_13_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_dw_13_bn/moving_mean/AssignAssignVariableOpconv_dw_13_bn/moving_mean+conv_dw_13_bn/moving_mean/Initializer/zeros*
dtype0*,
_class"
 loc:@conv_dw_13_bn/moving_mean
˛
-conv_dw_13_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_13_bn/moving_mean*,
_class"
 loc:@conv_dw_13_bn/moving_mean*
dtype0*
_output_shapes	
:
ť
>conv_dw_13_bn/moving_variance/Initializer/ones/shape_as_tensorConst*0
_class&
$"loc:@conv_dw_13_bn/moving_variance*
valueB:*
dtype0*
_output_shapes
:
Ť
4conv_dw_13_bn/moving_variance/Initializer/ones/ConstConst*
_output_shapes
: *0
_class&
$"loc:@conv_dw_13_bn/moving_variance*
valueB
 *  ?*
dtype0

.conv_dw_13_bn/moving_variance/Initializer/onesFill>conv_dw_13_bn/moving_variance/Initializer/ones/shape_as_tensor4conv_dw_13_bn/moving_variance/Initializer/ones/Const*
T0*0
_class&
$"loc:@conv_dw_13_bn/moving_variance*

index_type0*
_output_shapes	
:
Ö
conv_dw_13_bn/moving_varianceVarHandleOp*
_output_shapes
: *.
shared_nameconv_dw_13_bn/moving_variance*0
_class&
$"loc:@conv_dw_13_bn/moving_variance*
	container *
shape:*
dtype0

>conv_dw_13_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_dw_13_bn/moving_variance*
_output_shapes
: 
Ć
$conv_dw_13_bn/moving_variance/AssignAssignVariableOpconv_dw_13_bn/moving_variance.conv_dw_13_bn/moving_variance/Initializer/ones*
dtype0*0
_class&
$"loc:@conv_dw_13_bn/moving_variance
ž
1conv_dw_13_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_13_bn/moving_variance*
dtype0*
_output_shapes	
:*0
_class&
$"loc:@conv_dw_13_bn/moving_variance
m
conv_dw_13_bn/ReadVariableOpReadVariableOpconv_dw_13_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_dw_13_bn/ReadVariableOp_1ReadVariableOpconv_dw_13_bn/beta*
dtype0*
_output_shapes	
:

+conv_dw_13_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_dw_13_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_dw_13_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_dw_13_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_dw_13_bn/FusedBatchNormFusedBatchNormconv_dw_13/depthwiseconv_dw_13_bn/ReadVariableOpconv_dw_13_bn/ReadVariableOp_1+conv_dw_13_bn/FusedBatchNorm/ReadVariableOp-conv_dw_13_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
X
conv_dw_13_bn/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 

conv_dw_13_relu/Relu6Relu6conv_dw_13_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ą
2conv_pw_13/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*$
_class
loc:@conv_pw_13/kernel*%
valueB"            *
dtype0

0conv_pw_13/kernel/Initializer/random_uniform/minConst*$
_class
loc:@conv_pw_13/kernel*
valueB
 *×ł]˝*
dtype0*
_output_shapes
: 

0conv_pw_13/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *$
_class
loc:@conv_pw_13/kernel*
valueB
 *×ł]=*
dtype0
ţ
:conv_pw_13/kernel/Initializer/random_uniform/RandomUniformRandomUniform2conv_pw_13/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*(
_output_shapes
:*

seed *
T0*$
_class
loc:@conv_pw_13/kernel
â
0conv_pw_13/kernel/Initializer/random_uniform/subSub0conv_pw_13/kernel/Initializer/random_uniform/max0conv_pw_13/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_13/kernel*
_output_shapes
: 
ţ
0conv_pw_13/kernel/Initializer/random_uniform/mulMul:conv_pw_13/kernel/Initializer/random_uniform/RandomUniform0conv_pw_13/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@conv_pw_13/kernel*(
_output_shapes
:
đ
,conv_pw_13/kernel/Initializer/random_uniformAdd0conv_pw_13/kernel/Initializer/random_uniform/mul0conv_pw_13/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@conv_pw_13/kernel*(
_output_shapes
:
ż
conv_pw_13/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_nameconv_pw_13/kernel*$
_class
loc:@conv_pw_13/kernel*
	container *
shape:
s
2conv_pw_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_13/kernel*
_output_shapes
: 
 
conv_pw_13/kernel/AssignAssignVariableOpconv_pw_13/kernel,conv_pw_13/kernel/Initializer/random_uniform*$
_class
loc:@conv_pw_13/kernel*
dtype0
§
%conv_pw_13/kernel/Read/ReadVariableOpReadVariableOpconv_pw_13/kernel*$
_class
loc:@conv_pw_13/kernel*
dtype0*(
_output_shapes
:
i
conv_pw_13/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
|
 conv_pw_13/Conv2D/ReadVariableOpReadVariableOpconv_pw_13/kernel*
dtype0*(
_output_shapes
:

conv_pw_13/Conv2DConv2Dconv_dw_13_relu/Relu6 conv_pw_13/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
§
4conv_pw_13_bn/gamma/Initializer/ones/shape_as_tensorConst*&
_class
loc:@conv_pw_13_bn/gamma*
valueB:*
dtype0*
_output_shapes
:

*conv_pw_13_bn/gamma/Initializer/ones/ConstConst*&
_class
loc:@conv_pw_13_bn/gamma*
valueB
 *  ?*
dtype0*
_output_shapes
: 
î
$conv_pw_13_bn/gamma/Initializer/onesFill4conv_pw_13_bn/gamma/Initializer/ones/shape_as_tensor*conv_pw_13_bn/gamma/Initializer/ones/Const*
_output_shapes	
:*
T0*&
_class
loc:@conv_pw_13_bn/gamma*

index_type0
¸
conv_pw_13_bn/gammaVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nameconv_pw_13_bn/gamma*&
_class
loc:@conv_pw_13_bn/gamma
w
4conv_pw_13_bn/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_13_bn/gamma*
_output_shapes
: 

conv_pw_13_bn/gamma/AssignAssignVariableOpconv_pw_13_bn/gamma$conv_pw_13_bn/gamma/Initializer/ones*
dtype0*&
_class
loc:@conv_pw_13_bn/gamma
 
'conv_pw_13_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_13_bn/gamma*&
_class
loc:@conv_pw_13_bn/gamma*
dtype0*
_output_shapes	
:
Ś
4conv_pw_13_bn/beta/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@conv_pw_13_bn/beta*
valueB:*
dtype0*
_output_shapes
:

*conv_pw_13_bn/beta/Initializer/zeros/ConstConst*%
_class
loc:@conv_pw_13_bn/beta*
valueB
 *    *
dtype0*
_output_shapes
: 
í
$conv_pw_13_bn/beta/Initializer/zerosFill4conv_pw_13_bn/beta/Initializer/zeros/shape_as_tensor*conv_pw_13_bn/beta/Initializer/zeros/Const*
T0*%
_class
loc:@conv_pw_13_bn/beta*

index_type0*
_output_shapes	
:
ľ
conv_pw_13_bn/betaVarHandleOp*%
_class
loc:@conv_pw_13_bn/beta*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_nameconv_pw_13_bn/beta
u
3conv_pw_13_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_13_bn/beta*
_output_shapes
: 

conv_pw_13_bn/beta/AssignAssignVariableOpconv_pw_13_bn/beta$conv_pw_13_bn/beta/Initializer/zeros*%
_class
loc:@conv_pw_13_bn/beta*
dtype0

&conv_pw_13_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_13_bn/beta*
_output_shapes	
:*%
_class
loc:@conv_pw_13_bn/beta*
dtype0
´
;conv_pw_13_bn/moving_mean/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@conv_pw_13_bn/moving_mean*
valueB:*
dtype0*
_output_shapes
:
¤
1conv_pw_13_bn/moving_mean/Initializer/zeros/ConstConst*,
_class"
 loc:@conv_pw_13_bn/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 

+conv_pw_13_bn/moving_mean/Initializer/zerosFill;conv_pw_13_bn/moving_mean/Initializer/zeros/shape_as_tensor1conv_pw_13_bn/moving_mean/Initializer/zeros/Const*
T0*,
_class"
 loc:@conv_pw_13_bn/moving_mean*

index_type0*
_output_shapes	
:
Ę
conv_pw_13_bn/moving_meanVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nameconv_pw_13_bn/moving_mean*,
_class"
 loc:@conv_pw_13_bn/moving_mean

:conv_pw_13_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_13_bn/moving_mean*
_output_shapes
: 
ˇ
 conv_pw_13_bn/moving_mean/AssignAssignVariableOpconv_pw_13_bn/moving_mean+conv_pw_13_bn/moving_mean/Initializer/zeros*,
_class"
 loc:@conv_pw_13_bn/moving_mean*
dtype0
˛
-conv_pw_13_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_13_bn/moving_mean*
_output_shapes	
:*,
_class"
 loc:@conv_pw_13_bn/moving_mean*
dtype0
ť
>conv_pw_13_bn/moving_variance/Initializer/ones/shape_as_tensorConst*0
_class&
$"loc:@conv_pw_13_bn/moving_variance*
valueB:*
dtype0*
_output_shapes
:
Ť
4conv_pw_13_bn/moving_variance/Initializer/ones/ConstConst*0
_class&
$"loc:@conv_pw_13_bn/moving_variance*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.conv_pw_13_bn/moving_variance/Initializer/onesFill>conv_pw_13_bn/moving_variance/Initializer/ones/shape_as_tensor4conv_pw_13_bn/moving_variance/Initializer/ones/Const*
T0*0
_class&
$"loc:@conv_pw_13_bn/moving_variance*

index_type0*
_output_shapes	
:
Ö
conv_pw_13_bn/moving_varianceVarHandleOp*
shape:*
dtype0*
_output_shapes
: *.
shared_nameconv_pw_13_bn/moving_variance*0
_class&
$"loc:@conv_pw_13_bn/moving_variance*
	container 

>conv_pw_13_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv_pw_13_bn/moving_variance*
_output_shapes
: 
Ć
$conv_pw_13_bn/moving_variance/AssignAssignVariableOpconv_pw_13_bn/moving_variance.conv_pw_13_bn/moving_variance/Initializer/ones*
dtype0*0
_class&
$"loc:@conv_pw_13_bn/moving_variance
ž
1conv_pw_13_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_13_bn/moving_variance*0
_class&
$"loc:@conv_pw_13_bn/moving_variance*
dtype0*
_output_shapes	
:
m
conv_pw_13_bn/ReadVariableOpReadVariableOpconv_pw_13_bn/gamma*
dtype0*
_output_shapes	
:
n
conv_pw_13_bn/ReadVariableOp_1ReadVariableOpconv_pw_13_bn/beta*
dtype0*
_output_shapes	
:

+conv_pw_13_bn/FusedBatchNorm/ReadVariableOpReadVariableOpconv_pw_13_bn/moving_mean*
dtype0*
_output_shapes	
:

-conv_pw_13_bn/FusedBatchNorm/ReadVariableOp_1ReadVariableOpconv_pw_13_bn/moving_variance*
dtype0*
_output_shapes	
:

conv_pw_13_bn/FusedBatchNormFusedBatchNormconv_pw_13/Conv2Dconv_pw_13_bn/ReadVariableOpconv_pw_13_bn/ReadVariableOp_1+conv_pw_13_bn/FusedBatchNorm/ReadVariableOp-conv_pw_13_bn/FusedBatchNorm/ReadVariableOp_1*
data_formatNHWC*^
_output_shapesL
J:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
X
conv_pw_13_bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *¤p}?

conv_pw_13_relu/Relu6Relu6conv_pw_13_bn/FusedBatchNorm*
T0*B
_output_shapes0
.:,˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

/global_average_pooling2d/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"      
˝
global_average_pooling2d/MeanMeanconv_pw_13_relu/Relu6/global_average_pooling2d/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *×ł]˝*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *×ł]=*
dtype0*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*
_class
loc:@dense/kernel
¨
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
_class
loc:@dense/kernel*
dtype0

,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0*
_output_shapes
:

"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Í
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
_class
loc:@dense/bias*

index_type0*
_output_shapes	
:*
T0


dense/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
	container 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:*
_class
loc:@dense/bias
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0* 
_output_shapes
:

Ť
dense/MatMulMatMulglobal_average_pooling2d/Meandense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T

dense/ReluReludense/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *×ł]˝*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *×ł]=*
dtype0*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ž
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0* 
_output_shapes
:
*!
_class
loc:@dense_1/kernel

.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0*
_output_shapes
:

$dense_1/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ő
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0*
_output_shapes	
:
Ł
dense_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:
n
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0* 
_output_shapes
:


dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
h
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *  ˝*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *  =*
dtype0*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
ę
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*!
_class
loc:@dense_2/kernel
Ž
dense_2/kernelVarHandleOp*
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
_class
loc:@dense_2/bias*
valueB*    
Ł
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes	
:
n
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0* 
_output_shapes
:


dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
h
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes	
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *!
_class
loc:@dense_3/kernel*
valueB
 *PEÝ˝*
dtype0

-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *PEÝ=*
dtype0*
_output_shapes
: 
ě
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*!
_class
loc:@dense_3/kernel*
seed2 
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
é
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes
:	*
T0
Ű
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*!
_class
loc:@dense_3/kernel
­
dense_3/kernelVarHandleOp*!
_class
loc:@dense_3/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *
shared_namedense_3/kernel
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 

dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0

"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:	

dense_3/bias/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
˘
dense_3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_3/bias*
_class
loc:@dense_3/bias*
	container 
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 

dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0

 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
m
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes
:	

dense_3/MatMulMatMuldense_2/Reludense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dense_3/SoftmaxSoftmaxdense_3/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
$

group_depsNoOp^dense_3/Softmax
U
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
W
Const_4Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
W
Const_5Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_6Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_12Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_13Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_14Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_15Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_16Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_17Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_18Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_19Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_20Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_21Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_22Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_23Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_24Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_25Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_26Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_27Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_28Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_29Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_30Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_31Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_32Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_33Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_34Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_35Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_36Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_37Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_38Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_39Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_40Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_41Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_42Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_43Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_44Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_45Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_46Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_47Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_48Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_49Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_50Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_51Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_52Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_53Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_54Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_55Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_56Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_57Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_58Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_59Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_60Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_61Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_62Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_63Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_64Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_65Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_66Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_67Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_68Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_69Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_70Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_71Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_72Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_73Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_74Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_75Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_76Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_77Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_78Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_79Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_80Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_81Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_82Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_83Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_84Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_85Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_86Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_87Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_88Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_89Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_90Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_91Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_92Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
]
Const_93Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bmodel
X
Const_94Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_95Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_96Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_97Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
X
Const_98Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
X
Const_99Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_100Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_101Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_102Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_103Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_104Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_105Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_106Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_107Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_108Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_109Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_110Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_111Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_112Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_113Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_114Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_115Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_116Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_117Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_118Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_119Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_120Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_121Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_122Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_123Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_124Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_125Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_126Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_127Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_128Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_129Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_130Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_131Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_132Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_133Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_134Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_135Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_136Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_137Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_138Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_139Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_140Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_141Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_142Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_143Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_144Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_145Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_146Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_147Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_148Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_149Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_150Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_151Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_152Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_153Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_154Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_155Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_156Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_157Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_158Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_159Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_160Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_161Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_162Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_163Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_164Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_165Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_166Const"/device:CPU:0*
_output_shapes
: *
valueB B *
dtype0
Y
	Const_167Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_168Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_169Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_170Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_171Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_172Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_173Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_174Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_175Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_176Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_177Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_178Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_179Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_180Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_181Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_182Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_183Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_184Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 
Y
	Const_185Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
Y
	Const_186Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
¤
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

	RestoreV2	RestoreV2Const_93RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
I
AssignVariableOpAssignVariableOpconv1/kernelIdentity*
dtype0
Ľ
RestoreV2_1/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_1	RestoreV2Const_93RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
O
AssignVariableOp_1AssignVariableOpconv1_bn/gamma
Identity_1*
dtype0
¤
RestoreV2_2/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_2	RestoreV2Const_93RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
N
AssignVariableOp_2AssignVariableOpconv1_bn/beta
Identity_2*
dtype0
Ť
RestoreV2_3/tensor_namesConst"/device:CPU:0*P
valueGBEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2Const_93RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
_output_shapes
:*
T0
U
AssignVariableOp_3AssignVariableOpconv1_bn/moving_mean
Identity_3*
dtype0
Ż
RestoreV2_4/tensor_namesConst"/device:CPU:0*T
valueKBIB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_4	RestoreV2Const_93RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
Y
AssignVariableOp_4AssignVariableOpconv1_bn/moving_variance
Identity_4*
dtype0
°
RestoreV2_5/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_5	RestoreV2Const_93RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
[
AssignVariableOp_5AssignVariableOpconv_dw_1/depthwise_kernel
Identity_5*
dtype0
Ľ
RestoreV2_6/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_6	RestoreV2Const_93RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
S
AssignVariableOp_6AssignVariableOpconv_dw_1_bn/gamma
Identity_6*
dtype0
¤
RestoreV2_7/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_7	RestoreV2Const_93RestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
R
AssignVariableOp_7AssignVariableOpconv_dw_1_bn/beta
Identity_7*
dtype0
Ť
RestoreV2_8/tensor_namesConst"/device:CPU:0*P
valueGBEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_8	RestoreV2Const_93RestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
Y
AssignVariableOp_8AssignVariableOpconv_dw_1_bn/moving_mean
Identity_8*
dtype0
Ż
RestoreV2_9/tensor_namesConst"/device:CPU:0*T
valueKBIB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_9	RestoreV2Const_93RestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
_output_shapes
:*
T0
]
AssignVariableOp_9AssignVariableOpconv_dw_1_bn/moving_variance
Identity_9*
dtype0
§
RestoreV2_10/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_10	RestoreV2Const_93RestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
S
AssignVariableOp_10AssignVariableOpconv_pw_1/kernelIdentity_10*
dtype0
Ś
RestoreV2_11/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_11	RestoreV2Const_93RestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
U
AssignVariableOp_11AssignVariableOpconv_pw_1_bn/gammaIdentity_11*
dtype0
Ľ
RestoreV2_12/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_12	RestoreV2Const_93RestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
T
AssignVariableOp_12AssignVariableOpconv_pw_1_bn/betaIdentity_12*
dtype0
Ź
RestoreV2_13/tensor_namesConst"/device:CPU:0*
_output_shapes
:*P
valueGBEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_13	RestoreV2Const_93RestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
T0*
_output_shapes
:
[
AssignVariableOp_13AssignVariableOpconv_pw_1_bn/moving_meanIdentity_13*
dtype0
°
RestoreV2_14/tensor_namesConst"/device:CPU:0*T
valueKBIB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_14	RestoreV2Const_93RestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_14IdentityRestoreV2_14*
_output_shapes
:*
T0
_
AssignVariableOp_14AssignVariableOpconv_pw_1_bn/moving_varianceIdentity_14*
dtype0
ą
RestoreV2_15/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*U
valueLBJB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_15	RestoreV2Const_93RestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_15IdentityRestoreV2_15*
T0*
_output_shapes
:
]
AssignVariableOp_15AssignVariableOpconv_dw_2/depthwise_kernelIdentity_15*
dtype0
Ś
RestoreV2_16/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_16	RestoreV2Const_93RestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_16IdentityRestoreV2_16*
_output_shapes
:*
T0
U
AssignVariableOp_16AssignVariableOpconv_dw_2_bn/gammaIdentity_16*
dtype0
Ľ
RestoreV2_17/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_17/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_17	RestoreV2Const_93RestoreV2_17/tensor_namesRestoreV2_17/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_17IdentityRestoreV2_17*
_output_shapes
:*
T0
T
AssignVariableOp_17AssignVariableOpconv_dw_2_bn/betaIdentity_17*
dtype0
Ź
RestoreV2_18/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*P
valueGBEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_18/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_18	RestoreV2Const_93RestoreV2_18/tensor_namesRestoreV2_18/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_18IdentityRestoreV2_18*
T0*
_output_shapes
:
[
AssignVariableOp_18AssignVariableOpconv_dw_2_bn/moving_meanIdentity_18*
dtype0
°
RestoreV2_19/tensor_namesConst"/device:CPU:0*T
valueKBIB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_19/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_19	RestoreV2Const_93RestoreV2_19/tensor_namesRestoreV2_19/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_19IdentityRestoreV2_19*
T0*
_output_shapes
:
_
AssignVariableOp_19AssignVariableOpconv_dw_2_bn/moving_varianceIdentity_19*
dtype0
§
RestoreV2_20/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_20/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_20	RestoreV2Const_93RestoreV2_20/tensor_namesRestoreV2_20/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_20IdentityRestoreV2_20*
T0*
_output_shapes
:
S
AssignVariableOp_20AssignVariableOpconv_pw_2/kernelIdentity_20*
dtype0
Ś
RestoreV2_21/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_21/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_21	RestoreV2Const_93RestoreV2_21/tensor_namesRestoreV2_21/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_21IdentityRestoreV2_21*
T0*
_output_shapes
:
U
AssignVariableOp_21AssignVariableOpconv_pw_2_bn/gammaIdentity_21*
dtype0
Ľ
RestoreV2_22/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_22/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_22	RestoreV2Const_93RestoreV2_22/tensor_namesRestoreV2_22/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_22IdentityRestoreV2_22*
T0*
_output_shapes
:
T
AssignVariableOp_22AssignVariableOpconv_pw_2_bn/betaIdentity_22*
dtype0
Ź
RestoreV2_23/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*P
valueGBEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_23/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_23	RestoreV2Const_93RestoreV2_23/tensor_namesRestoreV2_23/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_23IdentityRestoreV2_23*
T0*
_output_shapes
:
[
AssignVariableOp_23AssignVariableOpconv_pw_2_bn/moving_meanIdentity_23*
dtype0
°
RestoreV2_24/tensor_namesConst"/device:CPU:0*T
valueKBIB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_24/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_24	RestoreV2Const_93RestoreV2_24/tensor_namesRestoreV2_24/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_24IdentityRestoreV2_24*
_output_shapes
:*
T0
_
AssignVariableOp_24AssignVariableOpconv_pw_2_bn/moving_varianceIdentity_24*
dtype0
˛
RestoreV2_25/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_25/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_25	RestoreV2Const_93RestoreV2_25/tensor_namesRestoreV2_25/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_25IdentityRestoreV2_25*
T0*
_output_shapes
:
]
AssignVariableOp_25AssignVariableOpconv_dw_3/depthwise_kernelIdentity_25*
dtype0
§
RestoreV2_26/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_26/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_26	RestoreV2Const_93RestoreV2_26/tensor_namesRestoreV2_26/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_26IdentityRestoreV2_26*
_output_shapes
:*
T0
U
AssignVariableOp_26AssignVariableOpconv_dw_3_bn/gammaIdentity_26*
dtype0
Ś
RestoreV2_27/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_27/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_27	RestoreV2Const_93RestoreV2_27/tensor_namesRestoreV2_27/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_27IdentityRestoreV2_27*
_output_shapes
:*
T0
T
AssignVariableOp_27AssignVariableOpconv_dw_3_bn/betaIdentity_27*
dtype0
­
RestoreV2_28/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_28/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_28	RestoreV2Const_93RestoreV2_28/tensor_namesRestoreV2_28/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_28IdentityRestoreV2_28*
_output_shapes
:*
T0
[
AssignVariableOp_28AssignVariableOpconv_dw_3_bn/moving_meanIdentity_28*
dtype0
ą
RestoreV2_29/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_29/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_29	RestoreV2Const_93RestoreV2_29/tensor_namesRestoreV2_29/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_29IdentityRestoreV2_29*
_output_shapes
:*
T0
_
AssignVariableOp_29AssignVariableOpconv_dw_3_bn/moving_varianceIdentity_29*
dtype0
¨
RestoreV2_30/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_30/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_30	RestoreV2Const_93RestoreV2_30/tensor_namesRestoreV2_30/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_30IdentityRestoreV2_30*
T0*
_output_shapes
:
S
AssignVariableOp_30AssignVariableOpconv_pw_3/kernelIdentity_30*
dtype0
§
RestoreV2_31/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_31/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_31	RestoreV2Const_93RestoreV2_31/tensor_namesRestoreV2_31/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_31IdentityRestoreV2_31*
T0*
_output_shapes
:
U
AssignVariableOp_31AssignVariableOpconv_pw_3_bn/gammaIdentity_31*
dtype0
Ś
RestoreV2_32/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_32/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_32	RestoreV2Const_93RestoreV2_32/tensor_namesRestoreV2_32/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_32IdentityRestoreV2_32*
T0*
_output_shapes
:
T
AssignVariableOp_32AssignVariableOpconv_pw_3_bn/betaIdentity_32*
dtype0
­
RestoreV2_33/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_33/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_33	RestoreV2Const_93RestoreV2_33/tensor_namesRestoreV2_33/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_33IdentityRestoreV2_33*
T0*
_output_shapes
:
[
AssignVariableOp_33AssignVariableOpconv_pw_3_bn/moving_meanIdentity_33*
dtype0
ą
RestoreV2_34/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_34/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_34	RestoreV2Const_93RestoreV2_34/tensor_namesRestoreV2_34/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_34IdentityRestoreV2_34*
_output_shapes
:*
T0
_
AssignVariableOp_34AssignVariableOpconv_pw_3_bn/moving_varianceIdentity_34*
dtype0
˛
RestoreV2_35/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_35/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_35	RestoreV2Const_93RestoreV2_35/tensor_namesRestoreV2_35/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_35IdentityRestoreV2_35*
_output_shapes
:*
T0
]
AssignVariableOp_35AssignVariableOpconv_dw_4/depthwise_kernelIdentity_35*
dtype0
§
RestoreV2_36/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_36/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_36	RestoreV2Const_93RestoreV2_36/tensor_namesRestoreV2_36/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_36IdentityRestoreV2_36*
T0*
_output_shapes
:
U
AssignVariableOp_36AssignVariableOpconv_dw_4_bn/gammaIdentity_36*
dtype0
Ś
RestoreV2_37/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_37/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_37	RestoreV2Const_93RestoreV2_37/tensor_namesRestoreV2_37/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_37IdentityRestoreV2_37*
_output_shapes
:*
T0
T
AssignVariableOp_37AssignVariableOpconv_dw_4_bn/betaIdentity_37*
dtype0
­
RestoreV2_38/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_38/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_38	RestoreV2Const_93RestoreV2_38/tensor_namesRestoreV2_38/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_38IdentityRestoreV2_38*
_output_shapes
:*
T0
[
AssignVariableOp_38AssignVariableOpconv_dw_4_bn/moving_meanIdentity_38*
dtype0
ą
RestoreV2_39/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_39/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_39	RestoreV2Const_93RestoreV2_39/tensor_namesRestoreV2_39/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_39IdentityRestoreV2_39*
_output_shapes
:*
T0
_
AssignVariableOp_39AssignVariableOpconv_dw_4_bn/moving_varianceIdentity_39*
dtype0
¨
RestoreV2_40/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_40/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_40	RestoreV2Const_93RestoreV2_40/tensor_namesRestoreV2_40/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_40IdentityRestoreV2_40*
T0*
_output_shapes
:
S
AssignVariableOp_40AssignVariableOpconv_pw_4/kernelIdentity_40*
dtype0
§
RestoreV2_41/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_41/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_41	RestoreV2Const_93RestoreV2_41/tensor_namesRestoreV2_41/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_41IdentityRestoreV2_41*
T0*
_output_shapes
:
U
AssignVariableOp_41AssignVariableOpconv_pw_4_bn/gammaIdentity_41*
dtype0
Ś
RestoreV2_42/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_42/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_42	RestoreV2Const_93RestoreV2_42/tensor_namesRestoreV2_42/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_42IdentityRestoreV2_42*
T0*
_output_shapes
:
T
AssignVariableOp_42AssignVariableOpconv_pw_4_bn/betaIdentity_42*
dtype0
­
RestoreV2_43/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_43/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_43	RestoreV2Const_93RestoreV2_43/tensor_namesRestoreV2_43/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_43IdentityRestoreV2_43*
T0*
_output_shapes
:
[
AssignVariableOp_43AssignVariableOpconv_pw_4_bn/moving_meanIdentity_43*
dtype0
ą
RestoreV2_44/tensor_namesConst"/device:CPU:0*
_output_shapes
:*U
valueLBJB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_44/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_44	RestoreV2Const_93RestoreV2_44/tensor_namesRestoreV2_44/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_44IdentityRestoreV2_44*
_output_shapes
:*
T0
_
AssignVariableOp_44AssignVariableOpconv_pw_4_bn/moving_varianceIdentity_44*
dtype0
˛
RestoreV2_45/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_45/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_45	RestoreV2Const_93RestoreV2_45/tensor_namesRestoreV2_45/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_45IdentityRestoreV2_45*
_output_shapes
:*
T0
]
AssignVariableOp_45AssignVariableOpconv_dw_5/depthwise_kernelIdentity_45*
dtype0
§
RestoreV2_46/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_46/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_46	RestoreV2Const_93RestoreV2_46/tensor_namesRestoreV2_46/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_46IdentityRestoreV2_46*
T0*
_output_shapes
:
U
AssignVariableOp_46AssignVariableOpconv_dw_5_bn/gammaIdentity_46*
dtype0
Ś
RestoreV2_47/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_47/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_47	RestoreV2Const_93RestoreV2_47/tensor_namesRestoreV2_47/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_47IdentityRestoreV2_47*
T0*
_output_shapes
:
T
AssignVariableOp_47AssignVariableOpconv_dw_5_bn/betaIdentity_47*
dtype0
­
RestoreV2_48/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_48/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_48	RestoreV2Const_93RestoreV2_48/tensor_namesRestoreV2_48/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_48IdentityRestoreV2_48*
T0*
_output_shapes
:
[
AssignVariableOp_48AssignVariableOpconv_dw_5_bn/moving_meanIdentity_48*
dtype0
ą
RestoreV2_49/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_49/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_49	RestoreV2Const_93RestoreV2_49/tensor_namesRestoreV2_49/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_49IdentityRestoreV2_49*
_output_shapes
:*
T0
_
AssignVariableOp_49AssignVariableOpconv_dw_5_bn/moving_varianceIdentity_49*
dtype0
¨
RestoreV2_50/tensor_namesConst"/device:CPU:0*
_output_shapes
:*L
valueCBAB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_50/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_50	RestoreV2Const_93RestoreV2_50/tensor_namesRestoreV2_50/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_50IdentityRestoreV2_50*
T0*
_output_shapes
:
S
AssignVariableOp_50AssignVariableOpconv_pw_5/kernelIdentity_50*
dtype0
§
RestoreV2_51/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-21/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_51/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_51	RestoreV2Const_93RestoreV2_51/tensor_namesRestoreV2_51/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_51IdentityRestoreV2_51*
T0*
_output_shapes
:
U
AssignVariableOp_51AssignVariableOpconv_pw_5_bn/gammaIdentity_51*
dtype0
Ś
RestoreV2_52/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_52/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_52	RestoreV2Const_93RestoreV2_52/tensor_namesRestoreV2_52/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_52IdentityRestoreV2_52*
_output_shapes
:*
T0
T
AssignVariableOp_52AssignVariableOpconv_pw_5_bn/betaIdentity_52*
dtype0
­
RestoreV2_53/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_53/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_53	RestoreV2Const_93RestoreV2_53/tensor_namesRestoreV2_53/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_53IdentityRestoreV2_53*
_output_shapes
:*
T0
[
AssignVariableOp_53AssignVariableOpconv_pw_5_bn/moving_meanIdentity_53*
dtype0
ą
RestoreV2_54/tensor_namesConst"/device:CPU:0*
_output_shapes
:*U
valueLBJB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_54/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_54	RestoreV2Const_93RestoreV2_54/tensor_namesRestoreV2_54/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_54IdentityRestoreV2_54*
_output_shapes
:*
T0
_
AssignVariableOp_54AssignVariableOpconv_pw_5_bn/moving_varianceIdentity_54*
dtype0
˛
RestoreV2_55/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-22/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_55/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_55	RestoreV2Const_93RestoreV2_55/tensor_namesRestoreV2_55/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_55IdentityRestoreV2_55*
T0*
_output_shapes
:
]
AssignVariableOp_55AssignVariableOpconv_dw_6/depthwise_kernelIdentity_55*
dtype0
§
RestoreV2_56/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-23/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_56/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_56	RestoreV2Const_93RestoreV2_56/tensor_namesRestoreV2_56/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_56IdentityRestoreV2_56*
_output_shapes
:*
T0
U
AssignVariableOp_56AssignVariableOpconv_dw_6_bn/gammaIdentity_56*
dtype0
Ś
RestoreV2_57/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_57/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_57	RestoreV2Const_93RestoreV2_57/tensor_namesRestoreV2_57/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_57IdentityRestoreV2_57*
_output_shapes
:*
T0
T
AssignVariableOp_57AssignVariableOpconv_dw_6_bn/betaIdentity_57*
dtype0
­
RestoreV2_58/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_58/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_58	RestoreV2Const_93RestoreV2_58/tensor_namesRestoreV2_58/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_58IdentityRestoreV2_58*
T0*
_output_shapes
:
[
AssignVariableOp_58AssignVariableOpconv_dw_6_bn/moving_meanIdentity_58*
dtype0
ą
RestoreV2_59/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_59/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_59	RestoreV2Const_93RestoreV2_59/tensor_namesRestoreV2_59/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_59IdentityRestoreV2_59*
_output_shapes
:*
T0
_
AssignVariableOp_59AssignVariableOpconv_dw_6_bn/moving_varianceIdentity_59*
dtype0
¨
RestoreV2_60/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_60/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_60	RestoreV2Const_93RestoreV2_60/tensor_namesRestoreV2_60/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_60IdentityRestoreV2_60*
_output_shapes
:*
T0
S
AssignVariableOp_60AssignVariableOpconv_pw_6/kernelIdentity_60*
dtype0
§
RestoreV2_61/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_61/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_61	RestoreV2Const_93RestoreV2_61/tensor_namesRestoreV2_61/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_61IdentityRestoreV2_61*
T0*
_output_shapes
:
U
AssignVariableOp_61AssignVariableOpconv_pw_6_bn/gammaIdentity_61*
dtype0
Ś
RestoreV2_62/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_62/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_62	RestoreV2Const_93RestoreV2_62/tensor_namesRestoreV2_62/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_62IdentityRestoreV2_62*
_output_shapes
:*
T0
T
AssignVariableOp_62AssignVariableOpconv_pw_6_bn/betaIdentity_62*
dtype0
­
RestoreV2_63/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_63/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_63	RestoreV2Const_93RestoreV2_63/tensor_namesRestoreV2_63/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_63IdentityRestoreV2_63*
T0*
_output_shapes
:
[
AssignVariableOp_63AssignVariableOpconv_pw_6_bn/moving_meanIdentity_63*
dtype0
ą
RestoreV2_64/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_64/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_64	RestoreV2Const_93RestoreV2_64/tensor_namesRestoreV2_64/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_64IdentityRestoreV2_64*
T0*
_output_shapes
:
_
AssignVariableOp_64AssignVariableOpconv_pw_6_bn/moving_varianceIdentity_64*
dtype0
˛
RestoreV2_65/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-26/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_65/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_65	RestoreV2Const_93RestoreV2_65/tensor_namesRestoreV2_65/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_65IdentityRestoreV2_65*
_output_shapes
:*
T0
]
AssignVariableOp_65AssignVariableOpconv_dw_7/depthwise_kernelIdentity_65*
dtype0
§
RestoreV2_66/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-27/gamma/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_66/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_66	RestoreV2Const_93RestoreV2_66/tensor_namesRestoreV2_66/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_66IdentityRestoreV2_66*
T0*
_output_shapes
:
U
AssignVariableOp_66AssignVariableOpconv_dw_7_bn/gammaIdentity_66*
dtype0
Ś
RestoreV2_67/tensor_namesConst"/device:CPU:0*
_output_shapes
:*J
valueAB?B5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_67/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_67	RestoreV2Const_93RestoreV2_67/tensor_namesRestoreV2_67/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_67IdentityRestoreV2_67*
T0*
_output_shapes
:
T
AssignVariableOp_67AssignVariableOpconv_dw_7_bn/betaIdentity_67*
dtype0
­
RestoreV2_68/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_68/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_68	RestoreV2Const_93RestoreV2_68/tensor_namesRestoreV2_68/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_68IdentityRestoreV2_68*
_output_shapes
:*
T0
[
AssignVariableOp_68AssignVariableOpconv_dw_7_bn/moving_meanIdentity_68*
dtype0
ą
RestoreV2_69/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_69/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_69	RestoreV2Const_93RestoreV2_69/tensor_namesRestoreV2_69/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_69IdentityRestoreV2_69*
T0*
_output_shapes
:
_
AssignVariableOp_69AssignVariableOpconv_dw_7_bn/moving_varianceIdentity_69*
dtype0
¨
RestoreV2_70/tensor_namesConst"/device:CPU:0*
_output_shapes
:*L
valueCBAB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_70/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_70	RestoreV2Const_93RestoreV2_70/tensor_namesRestoreV2_70/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_70IdentityRestoreV2_70*
T0*
_output_shapes
:
S
AssignVariableOp_70AssignVariableOpconv_pw_7/kernelIdentity_70*
dtype0
§
RestoreV2_71/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-29/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_71/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_71	RestoreV2Const_93RestoreV2_71/tensor_namesRestoreV2_71/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_71IdentityRestoreV2_71*
T0*
_output_shapes
:
U
AssignVariableOp_71AssignVariableOpconv_pw_7_bn/gammaIdentity_71*
dtype0
Ś
RestoreV2_72/tensor_namesConst"/device:CPU:0*
_output_shapes
:*J
valueAB?B5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_72/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_72	RestoreV2Const_93RestoreV2_72/tensor_namesRestoreV2_72/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_72IdentityRestoreV2_72*
T0*
_output_shapes
:
T
AssignVariableOp_72AssignVariableOpconv_pw_7_bn/betaIdentity_72*
dtype0
­
RestoreV2_73/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_73/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_73	RestoreV2Const_93RestoreV2_73/tensor_namesRestoreV2_73/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_73IdentityRestoreV2_73*
_output_shapes
:*
T0
[
AssignVariableOp_73AssignVariableOpconv_pw_7_bn/moving_meanIdentity_73*
dtype0
ą
RestoreV2_74/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_74/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_74	RestoreV2Const_93RestoreV2_74/tensor_namesRestoreV2_74/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_74IdentityRestoreV2_74*
_output_shapes
:*
T0
_
AssignVariableOp_74AssignVariableOpconv_pw_7_bn/moving_varianceIdentity_74*
dtype0
˛
RestoreV2_75/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*V
valueMBKBAlayer_with_weights-30/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_75/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_75	RestoreV2Const_93RestoreV2_75/tensor_namesRestoreV2_75/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_75IdentityRestoreV2_75*
T0*
_output_shapes
:
]
AssignVariableOp_75AssignVariableOpconv_dw_8/depthwise_kernelIdentity_75*
dtype0
§
RestoreV2_76/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-31/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_76/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_76	RestoreV2Const_93RestoreV2_76/tensor_namesRestoreV2_76/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_76IdentityRestoreV2_76*
T0*
_output_shapes
:
U
AssignVariableOp_76AssignVariableOpconv_dw_8_bn/gammaIdentity_76*
dtype0
Ś
RestoreV2_77/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-31/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_77/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_77	RestoreV2Const_93RestoreV2_77/tensor_namesRestoreV2_77/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_77IdentityRestoreV2_77*
_output_shapes
:*
T0
T
AssignVariableOp_77AssignVariableOpconv_dw_8_bn/betaIdentity_77*
dtype0
­
RestoreV2_78/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-31/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_78/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_78	RestoreV2Const_93RestoreV2_78/tensor_namesRestoreV2_78/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_78IdentityRestoreV2_78*
_output_shapes
:*
T0
[
AssignVariableOp_78AssignVariableOpconv_dw_8_bn/moving_meanIdentity_78*
dtype0
ą
RestoreV2_79/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-31/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_79/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_79	RestoreV2Const_93RestoreV2_79/tensor_namesRestoreV2_79/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_79IdentityRestoreV2_79*
_output_shapes
:*
T0
_
AssignVariableOp_79AssignVariableOpconv_dw_8_bn/moving_varianceIdentity_79*
dtype0
¨
RestoreV2_80/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*L
valueCBAB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_80/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_80	RestoreV2Const_93RestoreV2_80/tensor_namesRestoreV2_80/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_80IdentityRestoreV2_80*
_output_shapes
:*
T0
S
AssignVariableOp_80AssignVariableOpconv_pw_8/kernelIdentity_80*
dtype0
§
RestoreV2_81/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-33/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_81/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_81	RestoreV2Const_93RestoreV2_81/tensor_namesRestoreV2_81/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_81IdentityRestoreV2_81*
T0*
_output_shapes
:
U
AssignVariableOp_81AssignVariableOpconv_pw_8_bn/gammaIdentity_81*
dtype0
Ś
RestoreV2_82/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5layer_with_weights-33/beta/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_82/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_82	RestoreV2Const_93RestoreV2_82/tensor_namesRestoreV2_82/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_82IdentityRestoreV2_82*
T0*
_output_shapes
:
T
AssignVariableOp_82AssignVariableOpconv_pw_8_bn/betaIdentity_82*
dtype0
­
RestoreV2_83/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-33/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_83/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_83	RestoreV2Const_93RestoreV2_83/tensor_namesRestoreV2_83/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_83IdentityRestoreV2_83*
T0*
_output_shapes
:
[
AssignVariableOp_83AssignVariableOpconv_pw_8_bn/moving_meanIdentity_83*
dtype0
ą
RestoreV2_84/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-33/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_84/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_84	RestoreV2Const_93RestoreV2_84/tensor_namesRestoreV2_84/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_84IdentityRestoreV2_84*
_output_shapes
:*
T0
_
AssignVariableOp_84AssignVariableOpconv_pw_8_bn/moving_varianceIdentity_84*
dtype0
˛
RestoreV2_85/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-34/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_85/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_85	RestoreV2Const_93RestoreV2_85/tensor_namesRestoreV2_85/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_85IdentityRestoreV2_85*
T0*
_output_shapes
:
]
AssignVariableOp_85AssignVariableOpconv_dw_9/depthwise_kernelIdentity_85*
dtype0
§
RestoreV2_86/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_86/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_86	RestoreV2Const_93RestoreV2_86/tensor_namesRestoreV2_86/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_86IdentityRestoreV2_86*
_output_shapes
:*
T0
U
AssignVariableOp_86AssignVariableOpconv_dw_9_bn/gammaIdentity_86*
dtype0
Ś
RestoreV2_87/tensor_namesConst"/device:CPU:0*
_output_shapes
:*J
valueAB?B5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_87/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_87	RestoreV2Const_93RestoreV2_87/tensor_namesRestoreV2_87/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_87IdentityRestoreV2_87*
T0*
_output_shapes
:
T
AssignVariableOp_87AssignVariableOpconv_dw_9_bn/betaIdentity_87*
dtype0
­
RestoreV2_88/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_88/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_88	RestoreV2Const_93RestoreV2_88/tensor_namesRestoreV2_88/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_88IdentityRestoreV2_88*
_output_shapes
:*
T0
[
AssignVariableOp_88AssignVariableOpconv_dw_9_bn/moving_meanIdentity_88*
dtype0
ą
RestoreV2_89/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_89/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_89	RestoreV2Const_93RestoreV2_89/tensor_namesRestoreV2_89/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_89IdentityRestoreV2_89*
T0*
_output_shapes
:
_
AssignVariableOp_89AssignVariableOpconv_dw_9_bn/moving_varianceIdentity_89*
dtype0
¨
RestoreV2_90/tensor_namesConst"/device:CPU:0*
_output_shapes
:*L
valueCBAB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_90/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_90	RestoreV2Const_93RestoreV2_90/tensor_namesRestoreV2_90/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_90IdentityRestoreV2_90*
T0*
_output_shapes
:
S
AssignVariableOp_90AssignVariableOpconv_pw_9/kernelIdentity_90*
dtype0
§
RestoreV2_91/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-37/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_91/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_91	RestoreV2Const_93RestoreV2_91/tensor_namesRestoreV2_91/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_91IdentityRestoreV2_91*
T0*
_output_shapes
:
U
AssignVariableOp_91AssignVariableOpconv_pw_9_bn/gammaIdentity_91*
dtype0
Ś
RestoreV2_92/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-37/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_92/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_92	RestoreV2Const_93RestoreV2_92/tensor_namesRestoreV2_92/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_92IdentityRestoreV2_92*
T0*
_output_shapes
:
T
AssignVariableOp_92AssignVariableOpconv_pw_9_bn/betaIdentity_92*
dtype0
­
RestoreV2_93/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-37/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_93/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_93	RestoreV2Const_93RestoreV2_93/tensor_namesRestoreV2_93/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_93IdentityRestoreV2_93*
_output_shapes
:*
T0
[
AssignVariableOp_93AssignVariableOpconv_pw_9_bn/moving_meanIdentity_93*
dtype0
ą
RestoreV2_94/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-37/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_94/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_94	RestoreV2Const_93RestoreV2_94/tensor_namesRestoreV2_94/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_94IdentityRestoreV2_94*
T0*
_output_shapes
:
_
AssignVariableOp_94AssignVariableOpconv_pw_9_bn/moving_varianceIdentity_94*
dtype0
˛
RestoreV2_95/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-38/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_95/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_95	RestoreV2Const_93RestoreV2_95/tensor_namesRestoreV2_95/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_95IdentityRestoreV2_95*
T0*
_output_shapes
:
^
AssignVariableOp_95AssignVariableOpconv_dw_10/depthwise_kernelIdentity_95*
dtype0
§
RestoreV2_96/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-39/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_96/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_96	RestoreV2Const_93RestoreV2_96/tensor_namesRestoreV2_96/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_96IdentityRestoreV2_96*
_output_shapes
:*
T0
V
AssignVariableOp_96AssignVariableOpconv_dw_10_bn/gammaIdentity_96*
dtype0
Ś
RestoreV2_97/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-39/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_97/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_97	RestoreV2Const_93RestoreV2_97/tensor_namesRestoreV2_97/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_97IdentityRestoreV2_97*
_output_shapes
:*
T0
U
AssignVariableOp_97AssignVariableOpconv_dw_10_bn/betaIdentity_97*
dtype0
­
RestoreV2_98/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-39/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_98/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_98	RestoreV2Const_93RestoreV2_98/tensor_namesRestoreV2_98/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_98IdentityRestoreV2_98*
T0*
_output_shapes
:
\
AssignVariableOp_98AssignVariableOpconv_dw_10_bn/moving_meanIdentity_98*
dtype0
ą
RestoreV2_99/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-39/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_99/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_99	RestoreV2Const_93RestoreV2_99/tensor_namesRestoreV2_99/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_99IdentityRestoreV2_99*
T0*
_output_shapes
:
`
AssignVariableOp_99AssignVariableOpconv_dw_10_bn/moving_varianceIdentity_99*
dtype0
Š
RestoreV2_100/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-40/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_100/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_100	RestoreV2Const_93RestoreV2_100/tensor_namesRestoreV2_100/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_100IdentityRestoreV2_100*
T0*
_output_shapes
:
V
AssignVariableOp_100AssignVariableOpconv_pw_10/kernelIdentity_100*
dtype0
¨
RestoreV2_101/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-41/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_101/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_101	RestoreV2Const_93RestoreV2_101/tensor_namesRestoreV2_101/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_101IdentityRestoreV2_101*
T0*
_output_shapes
:
X
AssignVariableOp_101AssignVariableOpconv_pw_10_bn/gammaIdentity_101*
dtype0
§
RestoreV2_102/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-41/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_102/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_102	RestoreV2Const_93RestoreV2_102/tensor_namesRestoreV2_102/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_102IdentityRestoreV2_102*
T0*
_output_shapes
:
W
AssignVariableOp_102AssignVariableOpconv_pw_10_bn/betaIdentity_102*
dtype0
Ž
RestoreV2_103/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-41/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
v
RestoreV2_103/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_103	RestoreV2Const_93RestoreV2_103/tensor_namesRestoreV2_103/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_103IdentityRestoreV2_103*
T0*
_output_shapes
:
^
AssignVariableOp_103AssignVariableOpconv_pw_10_bn/moving_meanIdentity_103*
dtype0
˛
RestoreV2_104/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-41/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_104/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_104	RestoreV2Const_93RestoreV2_104/tensor_namesRestoreV2_104/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_104IdentityRestoreV2_104*
_output_shapes
:*
T0
b
AssignVariableOp_104AssignVariableOpconv_pw_10_bn/moving_varianceIdentity_104*
dtype0
ł
RestoreV2_105/tensor_namesConst"/device:CPU:0*
_output_shapes
:*V
valueMBKBAlayer_with_weights-42/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_105/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_105	RestoreV2Const_93RestoreV2_105/tensor_namesRestoreV2_105/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_105IdentityRestoreV2_105*
_output_shapes
:*
T0
`
AssignVariableOp_105AssignVariableOpconv_dw_11/depthwise_kernelIdentity_105*
dtype0
¨
RestoreV2_106/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-43/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_106/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_106	RestoreV2Const_93RestoreV2_106/tensor_namesRestoreV2_106/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_106IdentityRestoreV2_106*
_output_shapes
:*
T0
X
AssignVariableOp_106AssignVariableOpconv_dw_11_bn/gammaIdentity_106*
dtype0
§
RestoreV2_107/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-43/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_107/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_107	RestoreV2Const_93RestoreV2_107/tensor_namesRestoreV2_107/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_107IdentityRestoreV2_107*
T0*
_output_shapes
:
W
AssignVariableOp_107AssignVariableOpconv_dw_11_bn/betaIdentity_107*
dtype0
Ž
RestoreV2_108/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-43/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_108/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_108	RestoreV2Const_93RestoreV2_108/tensor_namesRestoreV2_108/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_108IdentityRestoreV2_108*
_output_shapes
:*
T0
^
AssignVariableOp_108AssignVariableOpconv_dw_11_bn/moving_meanIdentity_108*
dtype0
˛
RestoreV2_109/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-43/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_109/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_109	RestoreV2Const_93RestoreV2_109/tensor_namesRestoreV2_109/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_109IdentityRestoreV2_109*
_output_shapes
:*
T0
b
AssignVariableOp_109AssignVariableOpconv_dw_11_bn/moving_varianceIdentity_109*
dtype0
Š
RestoreV2_110/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-44/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_110/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_110	RestoreV2Const_93RestoreV2_110/tensor_namesRestoreV2_110/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_110IdentityRestoreV2_110*
_output_shapes
:*
T0
V
AssignVariableOp_110AssignVariableOpconv_pw_11/kernelIdentity_110*
dtype0
¨
RestoreV2_111/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-45/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_111/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_111	RestoreV2Const_93RestoreV2_111/tensor_namesRestoreV2_111/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_111IdentityRestoreV2_111*
_output_shapes
:*
T0
X
AssignVariableOp_111AssignVariableOpconv_pw_11_bn/gammaIdentity_111*
dtype0
§
RestoreV2_112/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-45/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_112/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_112	RestoreV2Const_93RestoreV2_112/tensor_namesRestoreV2_112/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_112IdentityRestoreV2_112*
T0*
_output_shapes
:
W
AssignVariableOp_112AssignVariableOpconv_pw_11_bn/betaIdentity_112*
dtype0
Ž
RestoreV2_113/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-45/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_113/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_113	RestoreV2Const_93RestoreV2_113/tensor_namesRestoreV2_113/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_113IdentityRestoreV2_113*
T0*
_output_shapes
:
^
AssignVariableOp_113AssignVariableOpconv_pw_11_bn/moving_meanIdentity_113*
dtype0
˛
RestoreV2_114/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-45/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_114/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_114	RestoreV2Const_93RestoreV2_114/tensor_namesRestoreV2_114/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_114IdentityRestoreV2_114*
_output_shapes
:*
T0
b
AssignVariableOp_114AssignVariableOpconv_pw_11_bn/moving_varianceIdentity_114*
dtype0
ł
RestoreV2_115/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-46/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_115/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_115	RestoreV2Const_93RestoreV2_115/tensor_namesRestoreV2_115/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_115IdentityRestoreV2_115*
_output_shapes
:*
T0
`
AssignVariableOp_115AssignVariableOpconv_dw_12/depthwise_kernelIdentity_115*
dtype0
¨
RestoreV2_116/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-47/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_116/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_116	RestoreV2Const_93RestoreV2_116/tensor_namesRestoreV2_116/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_116IdentityRestoreV2_116*
T0*
_output_shapes
:
X
AssignVariableOp_116AssignVariableOpconv_dw_12_bn/gammaIdentity_116*
dtype0
§
RestoreV2_117/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-47/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_117/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_117	RestoreV2Const_93RestoreV2_117/tensor_namesRestoreV2_117/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_117IdentityRestoreV2_117*
_output_shapes
:*
T0
W
AssignVariableOp_117AssignVariableOpconv_dw_12_bn/betaIdentity_117*
dtype0
Ž
RestoreV2_118/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-47/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_118/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_118	RestoreV2Const_93RestoreV2_118/tensor_namesRestoreV2_118/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_118IdentityRestoreV2_118*
T0*
_output_shapes
:
^
AssignVariableOp_118AssignVariableOpconv_dw_12_bn/moving_meanIdentity_118*
dtype0
˛
RestoreV2_119/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-47/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_119/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_119	RestoreV2Const_93RestoreV2_119/tensor_namesRestoreV2_119/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_119IdentityRestoreV2_119*
_output_shapes
:*
T0
b
AssignVariableOp_119AssignVariableOpconv_dw_12_bn/moving_varianceIdentity_119*
dtype0
Š
RestoreV2_120/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-48/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_120/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_120	RestoreV2Const_93RestoreV2_120/tensor_namesRestoreV2_120/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_120IdentityRestoreV2_120*
_output_shapes
:*
T0
V
AssignVariableOp_120AssignVariableOpconv_pw_12/kernelIdentity_120*
dtype0
¨
RestoreV2_121/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-49/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_121/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_121	RestoreV2Const_93RestoreV2_121/tensor_namesRestoreV2_121/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_121IdentityRestoreV2_121*
_output_shapes
:*
T0
X
AssignVariableOp_121AssignVariableOpconv_pw_12_bn/gammaIdentity_121*
dtype0
§
RestoreV2_122/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5layer_with_weights-49/beta/.ATTRIBUTES/VARIABLE_VALUE
v
RestoreV2_122/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_122	RestoreV2Const_93RestoreV2_122/tensor_namesRestoreV2_122/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_122IdentityRestoreV2_122*
T0*
_output_shapes
:
W
AssignVariableOp_122AssignVariableOpconv_pw_12_bn/betaIdentity_122*
dtype0
Ž
RestoreV2_123/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-49/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_123/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_123	RestoreV2Const_93RestoreV2_123/tensor_namesRestoreV2_123/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_123IdentityRestoreV2_123*
_output_shapes
:*
T0
^
AssignVariableOp_123AssignVariableOpconv_pw_12_bn/moving_meanIdentity_123*
dtype0
˛
RestoreV2_124/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-49/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_124/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_124	RestoreV2Const_93RestoreV2_124/tensor_namesRestoreV2_124/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_124IdentityRestoreV2_124*
T0*
_output_shapes
:
b
AssignVariableOp_124AssignVariableOpconv_pw_12_bn/moving_varianceIdentity_124*
dtype0
ł
RestoreV2_125/tensor_namesConst"/device:CPU:0*V
valueMBKBAlayer_with_weights-50/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_125/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_125	RestoreV2Const_93RestoreV2_125/tensor_namesRestoreV2_125/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_125IdentityRestoreV2_125*
T0*
_output_shapes
:
`
AssignVariableOp_125AssignVariableOpconv_dw_13/depthwise_kernelIdentity_125*
dtype0
¨
RestoreV2_126/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-51/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_126/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_126	RestoreV2Const_93RestoreV2_126/tensor_namesRestoreV2_126/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_126IdentityRestoreV2_126*
T0*
_output_shapes
:
X
AssignVariableOp_126AssignVariableOpconv_dw_13_bn/gammaIdentity_126*
dtype0
§
RestoreV2_127/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-51/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_127/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_127	RestoreV2Const_93RestoreV2_127/tensor_namesRestoreV2_127/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_127IdentityRestoreV2_127*
T0*
_output_shapes
:
W
AssignVariableOp_127AssignVariableOpconv_dw_13_bn/betaIdentity_127*
dtype0
Ž
RestoreV2_128/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-51/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_128/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_128	RestoreV2Const_93RestoreV2_128/tensor_namesRestoreV2_128/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_128IdentityRestoreV2_128*
T0*
_output_shapes
:
^
AssignVariableOp_128AssignVariableOpconv_dw_13_bn/moving_meanIdentity_128*
dtype0
˛
RestoreV2_129/tensor_namesConst"/device:CPU:0*U
valueLBJB@layer_with_weights-51/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_129/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_129	RestoreV2Const_93RestoreV2_129/tensor_namesRestoreV2_129/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_129IdentityRestoreV2_129*
T0*
_output_shapes
:
b
AssignVariableOp_129AssignVariableOpconv_dw_13_bn/moving_varianceIdentity_129*
dtype0
Š
RestoreV2_130/tensor_namesConst"/device:CPU:0*
_output_shapes
:*L
valueCBAB7layer_with_weights-52/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_130/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_130	RestoreV2Const_93RestoreV2_130/tensor_namesRestoreV2_130/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_130IdentityRestoreV2_130*
T0*
_output_shapes
:
V
AssignVariableOp_130AssignVariableOpconv_pw_13/kernelIdentity_130*
dtype0
¨
RestoreV2_131/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-53/gamma/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_131/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_131	RestoreV2Const_93RestoreV2_131/tensor_namesRestoreV2_131/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_131IdentityRestoreV2_131*
T0*
_output_shapes
:
X
AssignVariableOp_131AssignVariableOpconv_pw_13_bn/gammaIdentity_131*
dtype0
§
RestoreV2_132/tensor_namesConst"/device:CPU:0*
_output_shapes
:*J
valueAB?B5layer_with_weights-53/beta/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
v
RestoreV2_132/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_132	RestoreV2Const_93RestoreV2_132/tensor_namesRestoreV2_132/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_132IdentityRestoreV2_132*
_output_shapes
:*
T0
W
AssignVariableOp_132AssignVariableOpconv_pw_13_bn/betaIdentity_132*
dtype0
Ž
RestoreV2_133/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-53/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_133/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_133	RestoreV2Const_93RestoreV2_133/tensor_namesRestoreV2_133/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_133IdentityRestoreV2_133*
T0*
_output_shapes
:
^
AssignVariableOp_133AssignVariableOpconv_pw_13_bn/moving_meanIdentity_133*
dtype0
˛
RestoreV2_134/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*U
valueLBJB@layer_with_weights-53/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
v
RestoreV2_134/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_134	RestoreV2Const_93RestoreV2_134/tensor_namesRestoreV2_134/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_134IdentityRestoreV2_134*
_output_shapes
:*
T0
b
AssignVariableOp_134AssignVariableOpconv_pw_13_bn/moving_varianceIdentity_134*
dtype0
Š
RestoreV2_135/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-54/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_135/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_135	RestoreV2Const_93RestoreV2_135/tensor_namesRestoreV2_135/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_135IdentityRestoreV2_135*
T0*
_output_shapes
:
Q
AssignVariableOp_135AssignVariableOpdense/kernelIdentity_135*
dtype0
§
RestoreV2_136/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*J
valueAB?B5layer_with_weights-54/bias/.ATTRIBUTES/VARIABLE_VALUE
v
RestoreV2_136/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_136	RestoreV2Const_93RestoreV2_136/tensor_namesRestoreV2_136/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
J
Identity_136IdentityRestoreV2_136*
_output_shapes
:*
T0
O
AssignVariableOp_136AssignVariableOp
dense/biasIdentity_136*
dtype0
Š
RestoreV2_137/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-55/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_137/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_137	RestoreV2Const_93RestoreV2_137/tensor_namesRestoreV2_137/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_137IdentityRestoreV2_137*
_output_shapes
:*
T0
S
AssignVariableOp_137AssignVariableOpdense_1/kernelIdentity_137*
dtype0
§
RestoreV2_138/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-55/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_138/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_138	RestoreV2Const_93RestoreV2_138/tensor_namesRestoreV2_138/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_138IdentityRestoreV2_138*
_output_shapes
:*
T0
Q
AssignVariableOp_138AssignVariableOpdense_1/biasIdentity_138*
dtype0
Š
RestoreV2_139/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*L
valueCBAB7layer_with_weights-56/kernel/.ATTRIBUTES/VARIABLE_VALUE
v
RestoreV2_139/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_139	RestoreV2Const_93RestoreV2_139/tensor_namesRestoreV2_139/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_139IdentityRestoreV2_139*
_output_shapes
:*
T0
S
AssignVariableOp_139AssignVariableOpdense_2/kernelIdentity_139*
dtype0
§
RestoreV2_140/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-56/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_140/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_140	RestoreV2Const_93RestoreV2_140/tensor_namesRestoreV2_140/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_140IdentityRestoreV2_140*
T0*
_output_shapes
:
Q
AssignVariableOp_140AssignVariableOpdense_2/biasIdentity_140*
dtype0
Š
RestoreV2_141/tensor_namesConst"/device:CPU:0*L
valueCBAB7layer_with_weights-57/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_141/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_141	RestoreV2Const_93RestoreV2_141/tensor_namesRestoreV2_141/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_141IdentityRestoreV2_141*
T0*
_output_shapes
:
S
AssignVariableOp_141AssignVariableOpdense_3/kernelIdentity_141*
dtype0
§
RestoreV2_142/tensor_namesConst"/device:CPU:0*J
valueAB?B5layer_with_weights-57/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
v
RestoreV2_142/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_142	RestoreV2Const_93RestoreV2_142/tensor_namesRestoreV2_142/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
J
Identity_142IdentityRestoreV2_142*
T0*
_output_shapes
:
Q
AssignVariableOp_142AssignVariableOpdense_3/biasIdentity_142*
dtype0
T
VarIsInitializedOpVarIsInitializedOpconv_pw_1_bn/gamma*
_output_shapes
: 
U
VarIsInitializedOp_1VarIsInitializedOpconv_pw_1_bn/beta*
_output_shapes
: 
`
VarIsInitializedOp_2VarIsInitializedOpconv_dw_1_bn/moving_variance*
_output_shapes
: 
W
VarIsInitializedOp_3VarIsInitializedOpconv_pw_11_bn/gamma*
_output_shapes
: 
U
VarIsInitializedOp_4VarIsInitializedOpconv_pw_13/kernel*
_output_shapes
: 
V
VarIsInitializedOp_5VarIsInitializedOpconv_dw_1_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_6VarIsInitializedOpconv_pw_11_bn/moving_variance*
_output_shapes
: 
W
VarIsInitializedOp_7VarIsInitializedOpconv_pw_12_bn/gamma*
_output_shapes
: 
V
VarIsInitializedOp_8VarIsInitializedOpconv_dw_4_bn/gamma*
_output_shapes
: 
`
VarIsInitializedOp_9VarIsInitializedOpconv_dw_2_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_10VarIsInitializedOpconv_dw_3_bn/moving_variance*
_output_shapes
: 
W
VarIsInitializedOp_11VarIsInitializedOpconv_dw_8_bn/gamma*
_output_shapes
: 
X
VarIsInitializedOp_12VarIsInitializedOpconv_pw_13_bn/gamma*
_output_shapes
: 
V
VarIsInitializedOp_13VarIsInitializedOpconv_dw_8_bn/beta*
_output_shapes
: 
V
VarIsInitializedOp_14VarIsInitializedOpconv_dw_2_bn/beta*
_output_shapes
: 
V
VarIsInitializedOp_15VarIsInitializedOpconv_dw_3_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_16VarIsInitializedOpconv_dw_8_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_17VarIsInitializedOpconv_dw_9_bn/gamma*
_output_shapes
: 
V
VarIsInitializedOp_18VarIsInitializedOpconv_pw_2_bn/beta*
_output_shapes
: 
V
VarIsInitializedOp_19VarIsInitializedOpconv_dw_9_bn/beta*
_output_shapes
: 
W
VarIsInitializedOp_20VarIsInitializedOpconv_dw_2_bn/gamma*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOpconv_dw_9_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_22VarIsInitializedOpconv_dw_3_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_23VarIsInitializedOpconv_dw_8_bn/moving_variance*
_output_shapes
: 
Y
VarIsInitializedOp_24VarIsInitializedOpconv1_bn/moving_mean*
_output_shapes
: 
S
VarIsInitializedOp_25VarIsInitializedOpconv1_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_26VarIsInitializedOpconv_dw_9_bn/moving_variance*
_output_shapes
: 
R
VarIsInitializedOp_27VarIsInitializedOpconv1_bn/beta*
_output_shapes
: 
V
VarIsInitializedOp_28VarIsInitializedOpconv_dw_1_bn/beta*
_output_shapes
: 
U
VarIsInitializedOp_29VarIsInitializedOpconv_pw_6/kernel*
_output_shapes
: 
a
VarIsInitializedOp_30VarIsInitializedOpconv_pw_9_bn/moving_variance*
_output_shapes
: 
U
VarIsInitializedOp_31VarIsInitializedOpconv_pw_7/kernel*
_output_shapes
: 
W
VarIsInitializedOp_32VarIsInitializedOpconv_pw_6_bn/gamma*
_output_shapes
: 
W
VarIsInitializedOp_33VarIsInitializedOpconv_pw_11_bn/beta*
_output_shapes
: 
U
VarIsInitializedOp_34VarIsInitializedOpconv_pw_8/kernel*
_output_shapes
: 
`
VarIsInitializedOp_35VarIsInitializedOpconv_dw_13/depthwise_kernel*
_output_shapes
: 
_
VarIsInitializedOp_36VarIsInitializedOpconv_dw_9/depthwise_kernel*
_output_shapes
: 
W
VarIsInitializedOp_37VarIsInitializedOpconv_pw_13_bn/beta*
_output_shapes
: 
W
VarIsInitializedOp_38VarIsInitializedOpconv_pw_7_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_39VarIsInitializedOpconv_pw_7_bn/moving_variance*
_output_shapes
: 
_
VarIsInitializedOp_40VarIsInitializedOpconv_dw_1/depthwise_kernel*
_output_shapes
: 
W
VarIsInitializedOp_41VarIsInitializedOpconv_pw_8_bn/gamma*
_output_shapes
: 
`
VarIsInitializedOp_42VarIsInitializedOpconv_dw_10/depthwise_kernel*
_output_shapes
: 
]
VarIsInitializedOp_43VarIsInitializedOpconv_pw_9_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_44VarIsInitializedOpconv_pw_2_bn/gamma*
_output_shapes
: 
V
VarIsInitializedOp_45VarIsInitializedOpconv_pw_9_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_46VarIsInitializedOpconv_pw_12_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_47VarIsInitializedOpconv1_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_48VarIsInitializedOpconv_pw_1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_49VarIsInitializedOpconv_pw_11_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_50VarIsInitializedOpconv_pw_12_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_51VarIsInitializedOpconv_pw_1_bn/moving_mean*
_output_shapes
: 
V
VarIsInitializedOp_52VarIsInitializedOpconv_pw_6_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_53VarIsInitializedOpconv_dw_1_bn/moving_mean*
_output_shapes
: 
U
VarIsInitializedOp_54VarIsInitializedOpconv_pw_2/kernel*
_output_shapes
: 
]
VarIsInitializedOp_55VarIsInitializedOpconv_pw_6_bn/moving_mean*
_output_shapes
: 
U
VarIsInitializedOp_56VarIsInitializedOpconv_pw_3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_57VarIsInitializedOpdense/kernel*
_output_shapes
: 
V
VarIsInitializedOp_58VarIsInitializedOpconv_pw_7_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_59VarIsInitializedOpconv_pw_13_bn/moving_mean*
_output_shapes
: 
O
VarIsInitializedOp_60VarIsInitializedOp
dense/bias*
_output_shapes
: 
V
VarIsInitializedOp_61VarIsInitializedOpconv_pw_8_bn/beta*
_output_shapes
: 
`
VarIsInitializedOp_62VarIsInitializedOpconv_dw_12/depthwise_kernel*
_output_shapes
: 
b
VarIsInitializedOp_63VarIsInitializedOpconv_pw_13_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_64VarIsInitializedOpconv_pw_2_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_65VarIsInitializedOpconv_pw_7_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_66VarIsInitializedOpconv_pw_2_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_67VarIsInitializedOpconv_pw_8_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_68VarIsInitializedOpconv_dw_3_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_69VarIsInitializedOpconv_dw_2_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_70VarIsInitializedOpconv_pw_12_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_71VarIsInitializedOpconv_dw_6_bn/moving_variance*
_output_shapes
: 
X
VarIsInitializedOp_72VarIsInitializedOpconv_dw_11_bn/gamma*
_output_shapes
: 
_
VarIsInitializedOp_73VarIsInitializedOpconv_dw_4/depthwise_kernel*
_output_shapes
: 
U
VarIsInitializedOp_74VarIsInitializedOpconv_pw_4/kernel*
_output_shapes
: 
W
VarIsInitializedOp_75VarIsInitializedOpconv_dw_6_bn/gamma*
_output_shapes
: 
_
VarIsInitializedOp_76VarIsInitializedOpconv_dw_5/depthwise_kernel*
_output_shapes
: 
V
VarIsInitializedOp_77VarIsInitializedOpconv_dw_6_bn/beta*
_output_shapes
: 
W
VarIsInitializedOp_78VarIsInitializedOpconv_dw_10_bn/beta*
_output_shapes
: 
X
VarIsInitializedOp_79VarIsInitializedOpconv_pw_10_bn/gamma*
_output_shapes
: 
W
VarIsInitializedOp_80VarIsInitializedOpconv_dw_11_bn/beta*
_output_shapes
: 
U
VarIsInitializedOp_81VarIsInitializedOpconv_pw_5/kernel*
_output_shapes
: 
W
VarIsInitializedOp_82VarIsInitializedOpconv_dw_7_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_83VarIsInitializedOpconv_dw_5_bn/moving_variance*
_output_shapes
: 
V
VarIsInitializedOp_84VarIsInitializedOpconv_dw_7_bn/beta*
_output_shapes
: 
S
VarIsInitializedOp_85VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
]
VarIsInitializedOp_86VarIsInitializedOpconv_dw_6_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_87VarIsInitializedOpconv_dw_7_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_88VarIsInitializedOpconv_pw_4_bn/gamma*
_output_shapes
: 
]
VarIsInitializedOp_89VarIsInitializedOpconv_dw_5_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_90VarIsInitializedOpconv_pw_5_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_91VarIsInitializedOpconv_dw_7_bn/moving_variance*
_output_shapes
: 
X
VarIsInitializedOp_92VarIsInitializedOpconv_dw_13_bn/gamma*
_output_shapes
: 
W
VarIsInitializedOp_93VarIsInitializedOpconv_dw_13_bn/beta*
_output_shapes
: 
V
VarIsInitializedOp_94VarIsInitializedOpconv_pw_3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_95VarIsInitializedOpconv_dw_10_bn/moving_variance*
_output_shapes
: 
W
VarIsInitializedOp_96VarIsInitializedOpconv_dw_12_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_97VarIsInitializedOpconv_dw_13_bn/moving_mean*
_output_shapes
: 
Q
VarIsInitializedOp_98VarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
VarIsInitializedOp_99VarIsInitializedOpconv_dw_12_bn/moving_variance*
_output_shapes
: 
T
VarIsInitializedOp_100VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
c
VarIsInitializedOp_101VarIsInitializedOpconv_dw_13_bn/moving_variance*
_output_shapes
: 
Y
VarIsInitializedOp_102VarIsInitializedOpconv_dw_12_bn/gamma*
_output_shapes
: 
W
VarIsInitializedOp_103VarIsInitializedOpconv_dw_4_bn/beta*
_output_shapes
: 
`
VarIsInitializedOp_104VarIsInitializedOpconv_dw_6/depthwise_kernel*
_output_shapes
: 
`
VarIsInitializedOp_105VarIsInitializedOpconv_dw_7/depthwise_kernel*
_output_shapes
: 
c
VarIsInitializedOp_106VarIsInitializedOpconv_dw_11_bn/moving_variance*
_output_shapes
: 
X
VarIsInitializedOp_107VarIsInitializedOpconv_pw_10_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_108VarIsInitializedOpconv_dw_4_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_109VarIsInitializedOpconv_pw_6_bn/moving_variance*
_output_shapes
: 
`
VarIsInitializedOp_110VarIsInitializedOpconv_dw_8/depthwise_kernel*
_output_shapes
: 
^
VarIsInitializedOp_111VarIsInitializedOpconv_pw_4_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_112VarIsInitializedOpconv_pw_4_bn/moving_variance*
_output_shapes
: 
X
VarIsInitializedOp_113VarIsInitializedOpconv_dw_5_bn/gamma*
_output_shapes
: 
V
VarIsInitializedOp_114VarIsInitializedOpconv_pw_9/kernel*
_output_shapes
: 
W
VarIsInitializedOp_115VarIsInitializedOpconv_dw_5_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_116VarIsInitializedOpconv_dw_4_bn/moving_variance*
_output_shapes
: 
T
VarIsInitializedOp_117VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
W
VarIsInitializedOp_118VarIsInitializedOpconv_pw_5_bn/beta*
_output_shapes
: 
W
VarIsInitializedOp_119VarIsInitializedOpconv_pw_10/kernel*
_output_shapes
: 
V
VarIsInitializedOp_120VarIsInitializedOpconv_pw_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_121VarIsInitializedOpconv1/kernel*
_output_shapes
: 
b
VarIsInitializedOp_122VarIsInitializedOpconv_pw_8_bn/moving_variance*
_output_shapes
: 
Y
VarIsInitializedOp_123VarIsInitializedOpconv_dw_10_bn/gamma*
_output_shapes
: 
a
VarIsInitializedOp_124VarIsInitializedOpconv_dw_11/depthwise_kernel*
_output_shapes
: 
W
VarIsInitializedOp_125VarIsInitializedOpconv_pw_11/kernel*
_output_shapes
: 
X
VarIsInitializedOp_126VarIsInitializedOpconv_pw_3_bn/gamma*
_output_shapes
: 
R
VarIsInitializedOp_127VarIsInitializedOpdense_2/bias*
_output_shapes
: 
c
VarIsInitializedOp_128VarIsInitializedOpconv_pw_10_bn/moving_variance*
_output_shapes
: 
_
VarIsInitializedOp_129VarIsInitializedOpconv_pw_10_bn/moving_mean*
_output_shapes
: 
_
VarIsInitializedOp_130VarIsInitializedOpconv_dw_10_bn/moving_mean*
_output_shapes
: 
`
VarIsInitializedOp_131VarIsInitializedOpconv_dw_3/depthwise_kernel*
_output_shapes
: 
`
VarIsInitializedOp_132VarIsInitializedOpconv_dw_2/depthwise_kernel*
_output_shapes
: 
_
VarIsInitializedOp_133VarIsInitializedOpconv_dw_11_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_134VarIsInitializedOpconv_pw_5_bn/moving_mean*
_output_shapes
: 
W
VarIsInitializedOp_135VarIsInitializedOpconv_pw_4_bn/beta*
_output_shapes
: 
W
VarIsInitializedOp_136VarIsInitializedOpconv_pw_12/kernel*
_output_shapes
: 
b
VarIsInitializedOp_137VarIsInitializedOpconv_pw_5_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_138VarIsInitializedOpconv_pw_3_bn/moving_variance*
_output_shapes
: 
X
VarIsInitializedOp_139VarIsInitializedOpconv_pw_9_bn/gamma*
_output_shapes
: 
^
VarIsInitializedOp_140VarIsInitializedOpconv_pw_3_bn/moving_mean*
_output_shapes
: 
_
VarIsInitializedOp_141VarIsInitializedOpconv_dw_12_bn/moving_mean*
_output_shapes
: 
R
VarIsInitializedOp_142VarIsInitializedOpdense_3/bias*
_output_shapes
: 
ů"
initNoOp^conv1/kernel/Assign^conv1_bn/beta/Assign^conv1_bn/gamma/Assign^conv1_bn/moving_mean/Assign ^conv1_bn/moving_variance/Assign"^conv_dw_1/depthwise_kernel/Assign#^conv_dw_10/depthwise_kernel/Assign^conv_dw_10_bn/beta/Assign^conv_dw_10_bn/gamma/Assign!^conv_dw_10_bn/moving_mean/Assign%^conv_dw_10_bn/moving_variance/Assign#^conv_dw_11/depthwise_kernel/Assign^conv_dw_11_bn/beta/Assign^conv_dw_11_bn/gamma/Assign!^conv_dw_11_bn/moving_mean/Assign%^conv_dw_11_bn/moving_variance/Assign#^conv_dw_12/depthwise_kernel/Assign^conv_dw_12_bn/beta/Assign^conv_dw_12_bn/gamma/Assign!^conv_dw_12_bn/moving_mean/Assign%^conv_dw_12_bn/moving_variance/Assign#^conv_dw_13/depthwise_kernel/Assign^conv_dw_13_bn/beta/Assign^conv_dw_13_bn/gamma/Assign!^conv_dw_13_bn/moving_mean/Assign%^conv_dw_13_bn/moving_variance/Assign^conv_dw_1_bn/beta/Assign^conv_dw_1_bn/gamma/Assign ^conv_dw_1_bn/moving_mean/Assign$^conv_dw_1_bn/moving_variance/Assign"^conv_dw_2/depthwise_kernel/Assign^conv_dw_2_bn/beta/Assign^conv_dw_2_bn/gamma/Assign ^conv_dw_2_bn/moving_mean/Assign$^conv_dw_2_bn/moving_variance/Assign"^conv_dw_3/depthwise_kernel/Assign^conv_dw_3_bn/beta/Assign^conv_dw_3_bn/gamma/Assign ^conv_dw_3_bn/moving_mean/Assign$^conv_dw_3_bn/moving_variance/Assign"^conv_dw_4/depthwise_kernel/Assign^conv_dw_4_bn/beta/Assign^conv_dw_4_bn/gamma/Assign ^conv_dw_4_bn/moving_mean/Assign$^conv_dw_4_bn/moving_variance/Assign"^conv_dw_5/depthwise_kernel/Assign^conv_dw_5_bn/beta/Assign^conv_dw_5_bn/gamma/Assign ^conv_dw_5_bn/moving_mean/Assign$^conv_dw_5_bn/moving_variance/Assign"^conv_dw_6/depthwise_kernel/Assign^conv_dw_6_bn/beta/Assign^conv_dw_6_bn/gamma/Assign ^conv_dw_6_bn/moving_mean/Assign$^conv_dw_6_bn/moving_variance/Assign"^conv_dw_7/depthwise_kernel/Assign^conv_dw_7_bn/beta/Assign^conv_dw_7_bn/gamma/Assign ^conv_dw_7_bn/moving_mean/Assign$^conv_dw_7_bn/moving_variance/Assign"^conv_dw_8/depthwise_kernel/Assign^conv_dw_8_bn/beta/Assign^conv_dw_8_bn/gamma/Assign ^conv_dw_8_bn/moving_mean/Assign$^conv_dw_8_bn/moving_variance/Assign"^conv_dw_9/depthwise_kernel/Assign^conv_dw_9_bn/beta/Assign^conv_dw_9_bn/gamma/Assign ^conv_dw_9_bn/moving_mean/Assign$^conv_dw_9_bn/moving_variance/Assign^conv_pw_1/kernel/Assign^conv_pw_10/kernel/Assign^conv_pw_10_bn/beta/Assign^conv_pw_10_bn/gamma/Assign!^conv_pw_10_bn/moving_mean/Assign%^conv_pw_10_bn/moving_variance/Assign^conv_pw_11/kernel/Assign^conv_pw_11_bn/beta/Assign^conv_pw_11_bn/gamma/Assign!^conv_pw_11_bn/moving_mean/Assign%^conv_pw_11_bn/moving_variance/Assign^conv_pw_12/kernel/Assign^conv_pw_12_bn/beta/Assign^conv_pw_12_bn/gamma/Assign!^conv_pw_12_bn/moving_mean/Assign%^conv_pw_12_bn/moving_variance/Assign^conv_pw_13/kernel/Assign^conv_pw_13_bn/beta/Assign^conv_pw_13_bn/gamma/Assign!^conv_pw_13_bn/moving_mean/Assign%^conv_pw_13_bn/moving_variance/Assign^conv_pw_1_bn/beta/Assign^conv_pw_1_bn/gamma/Assign ^conv_pw_1_bn/moving_mean/Assign$^conv_pw_1_bn/moving_variance/Assign^conv_pw_2/kernel/Assign^conv_pw_2_bn/beta/Assign^conv_pw_2_bn/gamma/Assign ^conv_pw_2_bn/moving_mean/Assign$^conv_pw_2_bn/moving_variance/Assign^conv_pw_3/kernel/Assign^conv_pw_3_bn/beta/Assign^conv_pw_3_bn/gamma/Assign ^conv_pw_3_bn/moving_mean/Assign$^conv_pw_3_bn/moving_variance/Assign^conv_pw_4/kernel/Assign^conv_pw_4_bn/beta/Assign^conv_pw_4_bn/gamma/Assign ^conv_pw_4_bn/moving_mean/Assign$^conv_pw_4_bn/moving_variance/Assign^conv_pw_5/kernel/Assign^conv_pw_5_bn/beta/Assign^conv_pw_5_bn/gamma/Assign ^conv_pw_5_bn/moving_mean/Assign$^conv_pw_5_bn/moving_variance/Assign^conv_pw_6/kernel/Assign^conv_pw_6_bn/beta/Assign^conv_pw_6_bn/gamma/Assign ^conv_pw_6_bn/moving_mean/Assign$^conv_pw_6_bn/moving_variance/Assign^conv_pw_7/kernel/Assign^conv_pw_7_bn/beta/Assign^conv_pw_7_bn/gamma/Assign ^conv_pw_7_bn/moving_mean/Assign$^conv_pw_7_bn/moving_variance/Assign^conv_pw_8/kernel/Assign^conv_pw_8_bn/beta/Assign^conv_pw_8_bn/gamma/Assign ^conv_pw_8_bn/moving_mean/Assign$^conv_pw_8_bn/moving_variance/Assign^conv_pw_9/kernel/Assign^conv_pw_9_bn/beta/Assign^conv_pw_9_bn/gamma/Assign ^conv_pw_9_bn/moving_mean/Assign$^conv_pw_9_bn/moving_variance/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign
Y
	Const_187Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
¤g
save/SaveV2/tensor_namesConst*Öf
valueĚfBÉfíB/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-10/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-14/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-30/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-46/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-58/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-61/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-64/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-67/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-70/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-73/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-74/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-77/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-80/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-83/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-86/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-87/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-10/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-12/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-13/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-14/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-15/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-16/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-18/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-19/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-21/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-21/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-22/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-22/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-23/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-25/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-26/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-26/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-27/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-28/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-29/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-29/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-30/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-30/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-31/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-31/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-31/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-31/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-31/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-32/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-33/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-33/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-33/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-33/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-34/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-34/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-35/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-37/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-37/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-37/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-37/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-38/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-38/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-39/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-39/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-39/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-39/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-39/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-40/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-41/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-41/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-41/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-41/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-41/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-42/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-42/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-43/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-43/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-43/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-43/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-44/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-44/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-45/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-45/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-45/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-45/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-45/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-46/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-46/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-47/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-47/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-47/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-47/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-47/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-48/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-48/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-49/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-49/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-49/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-49/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-5/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-50/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-50/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-51/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-51/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-51/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-51/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-51/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-52/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-53/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-53/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-53/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-53/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-53/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-54/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-54/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-54/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-55/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-55/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-56/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-56/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-56/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-57/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-57/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-57/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-6/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-8/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-9/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes	
:í
Â
save/SaveV2/shape_and_slicesConst*đ
valuećBăíB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:í
˙:
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConst_94	Const_187Const_95Const_96	Const_105	Const_106	Const_109	Const_112	Const_115	Const_118	Const_119	Const_122	Const_125	Const_128	Const_131	Const_132Const_99	Const_135	Const_138	Const_141	Const_144	Const_147	Const_150	Const_153	Const_156	Const_159	Const_162	Const_102	Const_165	Const_168	Const_169	Const_172	Const_175	Const_178	Const_181	Const_182Const_97 conv1/kernel/Read/ReadVariableOpConst_98!conv1_bn/beta/Read/ReadVariableOp"conv1_bn/gamma/Read/ReadVariableOp(conv1_bn/moving_mean/Read/ReadVariableOp,conv1_bn/moving_variance/Read/ReadVariableOp	Const_113.conv_dw_3/depthwise_kernel/Read/ReadVariableOp	Const_114%conv_dw_3_bn/beta/Read/ReadVariableOp&conv_dw_3_bn/gamma/Read/ReadVariableOp,conv_dw_3_bn/moving_mean/Read/ReadVariableOp0conv_dw_3_bn/moving_variance/Read/ReadVariableOp	Const_116$conv_pw_3/kernel/Read/ReadVariableOp	Const_117%conv_pw_3_bn/beta/Read/ReadVariableOp&conv_pw_3_bn/gamma/Read/ReadVariableOp,conv_pw_3_bn/moving_mean/Read/ReadVariableOp0conv_pw_3_bn/moving_variance/Read/ReadVariableOp	Const_120.conv_dw_4/depthwise_kernel/Read/ReadVariableOp	Const_121%conv_dw_4_bn/beta/Read/ReadVariableOp&conv_dw_4_bn/gamma/Read/ReadVariableOp,conv_dw_4_bn/moving_mean/Read/ReadVariableOp0conv_dw_4_bn/moving_variance/Read/ReadVariableOp	Const_123$conv_pw_4/kernel/Read/ReadVariableOp	Const_124%conv_pw_4_bn/beta/Read/ReadVariableOp&conv_pw_4_bn/gamma/Read/ReadVariableOp,conv_pw_4_bn/moving_mean/Read/ReadVariableOp0conv_pw_4_bn/moving_variance/Read/ReadVariableOp	Const_126.conv_dw_5/depthwise_kernel/Read/ReadVariableOp	Const_127%conv_dw_5_bn/beta/Read/ReadVariableOp&conv_dw_5_bn/gamma/Read/ReadVariableOp,conv_dw_5_bn/moving_mean/Read/ReadVariableOp0conv_dw_5_bn/moving_variance/Read/ReadVariableOp	Const_100.conv_dw_1/depthwise_kernel/Read/ReadVariableOp	Const_129$conv_pw_5/kernel/Read/ReadVariableOp	Const_130%conv_pw_5_bn/beta/Read/ReadVariableOp&conv_pw_5_bn/gamma/Read/ReadVariableOp,conv_pw_5_bn/moving_mean/Read/ReadVariableOp0conv_pw_5_bn/moving_variance/Read/ReadVariableOp	Const_133.conv_dw_6/depthwise_kernel/Read/ReadVariableOp	Const_134%conv_dw_6_bn/beta/Read/ReadVariableOp&conv_dw_6_bn/gamma/Read/ReadVariableOp,conv_dw_6_bn/moving_mean/Read/ReadVariableOp0conv_dw_6_bn/moving_variance/Read/ReadVariableOp	Const_136$conv_pw_6/kernel/Read/ReadVariableOp	Const_137%conv_pw_6_bn/beta/Read/ReadVariableOp&conv_pw_6_bn/gamma/Read/ReadVariableOp,conv_pw_6_bn/moving_mean/Read/ReadVariableOp0conv_pw_6_bn/moving_variance/Read/ReadVariableOp	Const_139.conv_dw_7/depthwise_kernel/Read/ReadVariableOp	Const_140%conv_dw_7_bn/beta/Read/ReadVariableOp&conv_dw_7_bn/gamma/Read/ReadVariableOp,conv_dw_7_bn/moving_mean/Read/ReadVariableOp0conv_dw_7_bn/moving_variance/Read/ReadVariableOp	Const_142$conv_pw_7/kernel/Read/ReadVariableOp	Const_143%conv_pw_7_bn/beta/Read/ReadVariableOp&conv_pw_7_bn/gamma/Read/ReadVariableOp,conv_pw_7_bn/moving_mean/Read/ReadVariableOp0conv_pw_7_bn/moving_variance/Read/ReadVariableOp	Const_101%conv_dw_1_bn/beta/Read/ReadVariableOp&conv_dw_1_bn/gamma/Read/ReadVariableOp,conv_dw_1_bn/moving_mean/Read/ReadVariableOp0conv_dw_1_bn/moving_variance/Read/ReadVariableOp	Const_145.conv_dw_8/depthwise_kernel/Read/ReadVariableOp	Const_146%conv_dw_8_bn/beta/Read/ReadVariableOp&conv_dw_8_bn/gamma/Read/ReadVariableOp,conv_dw_8_bn/moving_mean/Read/ReadVariableOp0conv_dw_8_bn/moving_variance/Read/ReadVariableOp	Const_148$conv_pw_8/kernel/Read/ReadVariableOp	Const_149%conv_pw_8_bn/beta/Read/ReadVariableOp&conv_pw_8_bn/gamma/Read/ReadVariableOp,conv_pw_8_bn/moving_mean/Read/ReadVariableOp0conv_pw_8_bn/moving_variance/Read/ReadVariableOp	Const_151.conv_dw_9/depthwise_kernel/Read/ReadVariableOp	Const_152%conv_dw_9_bn/beta/Read/ReadVariableOp&conv_dw_9_bn/gamma/Read/ReadVariableOp,conv_dw_9_bn/moving_mean/Read/ReadVariableOp0conv_dw_9_bn/moving_variance/Read/ReadVariableOp	Const_154$conv_pw_9/kernel/Read/ReadVariableOp	Const_155%conv_pw_9_bn/beta/Read/ReadVariableOp&conv_pw_9_bn/gamma/Read/ReadVariableOp,conv_pw_9_bn/moving_mean/Read/ReadVariableOp0conv_pw_9_bn/moving_variance/Read/ReadVariableOp	Const_157/conv_dw_10/depthwise_kernel/Read/ReadVariableOp	Const_158&conv_dw_10_bn/beta/Read/ReadVariableOp'conv_dw_10_bn/gamma/Read/ReadVariableOp-conv_dw_10_bn/moving_mean/Read/ReadVariableOp1conv_dw_10_bn/moving_variance/Read/ReadVariableOp	Const_103$conv_pw_1/kernel/Read/ReadVariableOp	Const_160%conv_pw_10/kernel/Read/ReadVariableOp	Const_161&conv_pw_10_bn/beta/Read/ReadVariableOp'conv_pw_10_bn/gamma/Read/ReadVariableOp-conv_pw_10_bn/moving_mean/Read/ReadVariableOp1conv_pw_10_bn/moving_variance/Read/ReadVariableOp	Const_163/conv_dw_11/depthwise_kernel/Read/ReadVariableOp	Const_164&conv_dw_11_bn/beta/Read/ReadVariableOp'conv_dw_11_bn/gamma/Read/ReadVariableOp-conv_dw_11_bn/moving_mean/Read/ReadVariableOp1conv_dw_11_bn/moving_variance/Read/ReadVariableOp	Const_166%conv_pw_11/kernel/Read/ReadVariableOp	Const_167&conv_pw_11_bn/beta/Read/ReadVariableOp'conv_pw_11_bn/gamma/Read/ReadVariableOp-conv_pw_11_bn/moving_mean/Read/ReadVariableOp1conv_pw_11_bn/moving_variance/Read/ReadVariableOp	Const_170/conv_dw_12/depthwise_kernel/Read/ReadVariableOp	Const_171&conv_dw_12_bn/beta/Read/ReadVariableOp'conv_dw_12_bn/gamma/Read/ReadVariableOp-conv_dw_12_bn/moving_mean/Read/ReadVariableOp1conv_dw_12_bn/moving_variance/Read/ReadVariableOp	Const_173%conv_pw_12/kernel/Read/ReadVariableOp	Const_174&conv_pw_12_bn/beta/Read/ReadVariableOp'conv_pw_12_bn/gamma/Read/ReadVariableOp-conv_pw_12_bn/moving_mean/Read/ReadVariableOp1conv_pw_12_bn/moving_variance/Read/ReadVariableOp	Const_104%conv_pw_1_bn/beta/Read/ReadVariableOp&conv_pw_1_bn/gamma/Read/ReadVariableOp,conv_pw_1_bn/moving_mean/Read/ReadVariableOp0conv_pw_1_bn/moving_variance/Read/ReadVariableOp	Const_176/conv_dw_13/depthwise_kernel/Read/ReadVariableOp	Const_177&conv_dw_13_bn/beta/Read/ReadVariableOp'conv_dw_13_bn/gamma/Read/ReadVariableOp-conv_dw_13_bn/moving_mean/Read/ReadVariableOp1conv_dw_13_bn/moving_variance/Read/ReadVariableOp	Const_179%conv_pw_13/kernel/Read/ReadVariableOp	Const_180&conv_pw_13_bn/beta/Read/ReadVariableOp'conv_pw_13_bn/gamma/Read/ReadVariableOp-conv_pw_13_bn/moving_mean/Read/ReadVariableOp1conv_pw_13_bn/moving_variance/Read/ReadVariableOp	Const_183dense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp	Const_184 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp	Const_185 dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp	Const_186 dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp	Const_107.conv_dw_2/depthwise_kernel/Read/ReadVariableOp	Const_108%conv_dw_2_bn/beta/Read/ReadVariableOp&conv_dw_2_bn/gamma/Read/ReadVariableOp,conv_dw_2_bn/moving_mean/Read/ReadVariableOp0conv_dw_2_bn/moving_variance/Read/ReadVariableOp	Const_110$conv_pw_2/kernel/Read/ReadVariableOp	Const_111%conv_pw_2_bn/beta/Read/ReadVariableOp&conv_pw_2_bn/gamma/Read/ReadVariableOp,conv_pw_2_bn/moving_mean/Read/ReadVariableOp0conv_pw_2_bn/moving_variance/Read/ReadVariableOp*ţ
dtypesó
đ2í
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
śg
save/RestoreV2/tensor_namesConst"/device:CPU:0*Öf
valueĚfBÉfíB/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-10/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-14/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-30/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-46/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-58/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-61/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-64/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-67/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-70/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-73/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-74/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-77/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-80/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-83/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-86/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-87/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-10/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-12/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-13/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-14/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-15/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-16/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-18/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-19/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-21/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-21/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-22/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-22/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-23/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-25/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-26/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-26/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-27/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-28/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-29/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-29/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-30/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-30/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-31/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-31/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-31/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-31/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-31/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-32/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-33/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-33/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-33/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-33/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-34/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-34/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-35/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-37/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-37/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-37/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-37/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-38/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-38/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-39/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-39/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-39/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-39/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-39/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-40/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-41/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-41/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-41/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-41/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-41/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-42/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-42/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-43/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-43/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-43/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-43/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-44/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-44/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-45/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-45/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-45/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-45/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-45/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-46/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-46/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-47/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-47/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-47/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-47/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-47/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-48/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-48/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-49/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-49/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-49/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-49/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-5/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-50/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-50/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-51/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-51/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-51/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-51/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-51/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-52/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-53/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-53/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-53/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-53/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-53/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-54/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-54/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-54/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-55/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-55/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-56/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-56/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-56/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-57/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-57/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-57/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-6/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-8/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-9/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes	
:í
Ô
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*đ
valuećBăíB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:í
Â

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ę
_output_shapesˇ
´:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*ţ
dtypesó
đ2í

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp

save/NoOp_4NoOp

save/NoOp_5NoOp

save/NoOp_6NoOp

save/NoOp_7NoOp

save/NoOp_8NoOp

save/NoOp_9NoOp

save/NoOp_10NoOp

save/NoOp_11NoOp

save/NoOp_12NoOp

save/NoOp_13NoOp

save/NoOp_14NoOp

save/NoOp_15NoOp

save/NoOp_16NoOp

save/NoOp_17NoOp

save/NoOp_18NoOp

save/NoOp_19NoOp

save/NoOp_20NoOp

save/NoOp_21NoOp

save/NoOp_22NoOp

save/NoOp_23NoOp

save/NoOp_24NoOp

save/NoOp_25NoOp

save/NoOp_26NoOp

save/NoOp_27NoOp

save/NoOp_28NoOp

save/NoOp_29NoOp

save/NoOp_30NoOp

save/NoOp_31NoOp

save/NoOp_32NoOp

save/NoOp_33NoOp

save/NoOp_34NoOp

save/NoOp_35NoOp

save/NoOp_36NoOp
O
save/IdentityIdentitysave/RestoreV2:37*
_output_shapes
:*
T0
S
save/AssignVariableOpAssignVariableOpconv1/kernelsave/Identity*
dtype0

save/NoOp_37NoOp
Q
save/Identity_1Identitysave/RestoreV2:39*
_output_shapes
:*
T0
X
save/AssignVariableOp_1AssignVariableOpconv1_bn/betasave/Identity_1*
dtype0
Q
save/Identity_2Identitysave/RestoreV2:40*
_output_shapes
:*
T0
Y
save/AssignVariableOp_2AssignVariableOpconv1_bn/gammasave/Identity_2*
dtype0
Q
save/Identity_3Identitysave/RestoreV2:41*
_output_shapes
:*
T0
_
save/AssignVariableOp_3AssignVariableOpconv1_bn/moving_meansave/Identity_3*
dtype0
Q
save/Identity_4Identitysave/RestoreV2:42*
_output_shapes
:*
T0
c
save/AssignVariableOp_4AssignVariableOpconv1_bn/moving_variancesave/Identity_4*
dtype0

save/NoOp_38NoOp
Q
save/Identity_5Identitysave/RestoreV2:44*
T0*
_output_shapes
:
e
save/AssignVariableOp_5AssignVariableOpconv_dw_3/depthwise_kernelsave/Identity_5*
dtype0

save/NoOp_39NoOp
Q
save/Identity_6Identitysave/RestoreV2:46*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpconv_dw_3_bn/betasave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:47*
_output_shapes
:*
T0
]
save/AssignVariableOp_7AssignVariableOpconv_dw_3_bn/gammasave/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:48*
T0*
_output_shapes
:
c
save/AssignVariableOp_8AssignVariableOpconv_dw_3_bn/moving_meansave/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:49*
T0*
_output_shapes
:
g
save/AssignVariableOp_9AssignVariableOpconv_dw_3_bn/moving_variancesave/Identity_9*
dtype0

save/NoOp_40NoOp
R
save/Identity_10Identitysave/RestoreV2:51*
T0*
_output_shapes
:
]
save/AssignVariableOp_10AssignVariableOpconv_pw_3/kernelsave/Identity_10*
dtype0

save/NoOp_41NoOp
R
save/Identity_11Identitysave/RestoreV2:53*
_output_shapes
:*
T0
^
save/AssignVariableOp_11AssignVariableOpconv_pw_3_bn/betasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:54*
_output_shapes
:*
T0
_
save/AssignVariableOp_12AssignVariableOpconv_pw_3_bn/gammasave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:55*
T0*
_output_shapes
:
e
save/AssignVariableOp_13AssignVariableOpconv_pw_3_bn/moving_meansave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:56*
_output_shapes
:*
T0
i
save/AssignVariableOp_14AssignVariableOpconv_pw_3_bn/moving_variancesave/Identity_14*
dtype0

save/NoOp_42NoOp
R
save/Identity_15Identitysave/RestoreV2:58*
T0*
_output_shapes
:
g
save/AssignVariableOp_15AssignVariableOpconv_dw_4/depthwise_kernelsave/Identity_15*
dtype0

save/NoOp_43NoOp
R
save/Identity_16Identitysave/RestoreV2:60*
_output_shapes
:*
T0
^
save/AssignVariableOp_16AssignVariableOpconv_dw_4_bn/betasave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:61*
T0*
_output_shapes
:
_
save/AssignVariableOp_17AssignVariableOpconv_dw_4_bn/gammasave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:62*
_output_shapes
:*
T0
e
save/AssignVariableOp_18AssignVariableOpconv_dw_4_bn/moving_meansave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:63*
_output_shapes
:*
T0
i
save/AssignVariableOp_19AssignVariableOpconv_dw_4_bn/moving_variancesave/Identity_19*
dtype0

save/NoOp_44NoOp
R
save/Identity_20Identitysave/RestoreV2:65*
_output_shapes
:*
T0
]
save/AssignVariableOp_20AssignVariableOpconv_pw_4/kernelsave/Identity_20*
dtype0

save/NoOp_45NoOp
R
save/Identity_21Identitysave/RestoreV2:67*
_output_shapes
:*
T0
^
save/AssignVariableOp_21AssignVariableOpconv_pw_4_bn/betasave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:68*
T0*
_output_shapes
:
_
save/AssignVariableOp_22AssignVariableOpconv_pw_4_bn/gammasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:69*
_output_shapes
:*
T0
e
save/AssignVariableOp_23AssignVariableOpconv_pw_4_bn/moving_meansave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:70*
_output_shapes
:*
T0
i
save/AssignVariableOp_24AssignVariableOpconv_pw_4_bn/moving_variancesave/Identity_24*
dtype0

save/NoOp_46NoOp
R
save/Identity_25Identitysave/RestoreV2:72*
T0*
_output_shapes
:
g
save/AssignVariableOp_25AssignVariableOpconv_dw_5/depthwise_kernelsave/Identity_25*
dtype0

save/NoOp_47NoOp
R
save/Identity_26Identitysave/RestoreV2:74*
T0*
_output_shapes
:
^
save/AssignVariableOp_26AssignVariableOpconv_dw_5_bn/betasave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:75*
T0*
_output_shapes
:
_
save/AssignVariableOp_27AssignVariableOpconv_dw_5_bn/gammasave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:76*
T0*
_output_shapes
:
e
save/AssignVariableOp_28AssignVariableOpconv_dw_5_bn/moving_meansave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:77*
T0*
_output_shapes
:
i
save/AssignVariableOp_29AssignVariableOpconv_dw_5_bn/moving_variancesave/Identity_29*
dtype0

save/NoOp_48NoOp
R
save/Identity_30Identitysave/RestoreV2:79*
_output_shapes
:*
T0
g
save/AssignVariableOp_30AssignVariableOpconv_dw_1/depthwise_kernelsave/Identity_30*
dtype0

save/NoOp_49NoOp
R
save/Identity_31Identitysave/RestoreV2:81*
T0*
_output_shapes
:
]
save/AssignVariableOp_31AssignVariableOpconv_pw_5/kernelsave/Identity_31*
dtype0

save/NoOp_50NoOp
R
save/Identity_32Identitysave/RestoreV2:83*
_output_shapes
:*
T0
^
save/AssignVariableOp_32AssignVariableOpconv_pw_5_bn/betasave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:84*
T0*
_output_shapes
:
_
save/AssignVariableOp_33AssignVariableOpconv_pw_5_bn/gammasave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:85*
T0*
_output_shapes
:
e
save/AssignVariableOp_34AssignVariableOpconv_pw_5_bn/moving_meansave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:86*
_output_shapes
:*
T0
i
save/AssignVariableOp_35AssignVariableOpconv_pw_5_bn/moving_variancesave/Identity_35*
dtype0

save/NoOp_51NoOp
R
save/Identity_36Identitysave/RestoreV2:88*
T0*
_output_shapes
:
g
save/AssignVariableOp_36AssignVariableOpconv_dw_6/depthwise_kernelsave/Identity_36*
dtype0

save/NoOp_52NoOp
R
save/Identity_37Identitysave/RestoreV2:90*
_output_shapes
:*
T0
^
save/AssignVariableOp_37AssignVariableOpconv_dw_6_bn/betasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:91*
T0*
_output_shapes
:
_
save/AssignVariableOp_38AssignVariableOpconv_dw_6_bn/gammasave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:92*
T0*
_output_shapes
:
e
save/AssignVariableOp_39AssignVariableOpconv_dw_6_bn/moving_meansave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:93*
T0*
_output_shapes
:
i
save/AssignVariableOp_40AssignVariableOpconv_dw_6_bn/moving_variancesave/Identity_40*
dtype0

save/NoOp_53NoOp
R
save/Identity_41Identitysave/RestoreV2:95*
T0*
_output_shapes
:
]
save/AssignVariableOp_41AssignVariableOpconv_pw_6/kernelsave/Identity_41*
dtype0

save/NoOp_54NoOp
R
save/Identity_42Identitysave/RestoreV2:97*
T0*
_output_shapes
:
^
save/AssignVariableOp_42AssignVariableOpconv_pw_6_bn/betasave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:98*
_output_shapes
:*
T0
_
save/AssignVariableOp_43AssignVariableOpconv_pw_6_bn/gammasave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:99*
T0*
_output_shapes
:
e
save/AssignVariableOp_44AssignVariableOpconv_pw_6_bn/moving_meansave/Identity_44*
dtype0
S
save/Identity_45Identitysave/RestoreV2:100*
_output_shapes
:*
T0
i
save/AssignVariableOp_45AssignVariableOpconv_pw_6_bn/moving_variancesave/Identity_45*
dtype0

save/NoOp_55NoOp
S
save/Identity_46Identitysave/RestoreV2:102*
T0*
_output_shapes
:
g
save/AssignVariableOp_46AssignVariableOpconv_dw_7/depthwise_kernelsave/Identity_46*
dtype0

save/NoOp_56NoOp
S
save/Identity_47Identitysave/RestoreV2:104*
_output_shapes
:*
T0
^
save/AssignVariableOp_47AssignVariableOpconv_dw_7_bn/betasave/Identity_47*
dtype0
S
save/Identity_48Identitysave/RestoreV2:105*
T0*
_output_shapes
:
_
save/AssignVariableOp_48AssignVariableOpconv_dw_7_bn/gammasave/Identity_48*
dtype0
S
save/Identity_49Identitysave/RestoreV2:106*
T0*
_output_shapes
:
e
save/AssignVariableOp_49AssignVariableOpconv_dw_7_bn/moving_meansave/Identity_49*
dtype0
S
save/Identity_50Identitysave/RestoreV2:107*
T0*
_output_shapes
:
i
save/AssignVariableOp_50AssignVariableOpconv_dw_7_bn/moving_variancesave/Identity_50*
dtype0

save/NoOp_57NoOp
S
save/Identity_51Identitysave/RestoreV2:109*
_output_shapes
:*
T0
]
save/AssignVariableOp_51AssignVariableOpconv_pw_7/kernelsave/Identity_51*
dtype0

save/NoOp_58NoOp
S
save/Identity_52Identitysave/RestoreV2:111*
_output_shapes
:*
T0
^
save/AssignVariableOp_52AssignVariableOpconv_pw_7_bn/betasave/Identity_52*
dtype0
S
save/Identity_53Identitysave/RestoreV2:112*
T0*
_output_shapes
:
_
save/AssignVariableOp_53AssignVariableOpconv_pw_7_bn/gammasave/Identity_53*
dtype0
S
save/Identity_54Identitysave/RestoreV2:113*
T0*
_output_shapes
:
e
save/AssignVariableOp_54AssignVariableOpconv_pw_7_bn/moving_meansave/Identity_54*
dtype0
S
save/Identity_55Identitysave/RestoreV2:114*
_output_shapes
:*
T0
i
save/AssignVariableOp_55AssignVariableOpconv_pw_7_bn/moving_variancesave/Identity_55*
dtype0

save/NoOp_59NoOp
S
save/Identity_56Identitysave/RestoreV2:116*
_output_shapes
:*
T0
^
save/AssignVariableOp_56AssignVariableOpconv_dw_1_bn/betasave/Identity_56*
dtype0
S
save/Identity_57Identitysave/RestoreV2:117*
T0*
_output_shapes
:
_
save/AssignVariableOp_57AssignVariableOpconv_dw_1_bn/gammasave/Identity_57*
dtype0
S
save/Identity_58Identitysave/RestoreV2:118*
_output_shapes
:*
T0
e
save/AssignVariableOp_58AssignVariableOpconv_dw_1_bn/moving_meansave/Identity_58*
dtype0
S
save/Identity_59Identitysave/RestoreV2:119*
_output_shapes
:*
T0
i
save/AssignVariableOp_59AssignVariableOpconv_dw_1_bn/moving_variancesave/Identity_59*
dtype0

save/NoOp_60NoOp
S
save/Identity_60Identitysave/RestoreV2:121*
_output_shapes
:*
T0
g
save/AssignVariableOp_60AssignVariableOpconv_dw_8/depthwise_kernelsave/Identity_60*
dtype0

save/NoOp_61NoOp
S
save/Identity_61Identitysave/RestoreV2:123*
_output_shapes
:*
T0
^
save/AssignVariableOp_61AssignVariableOpconv_dw_8_bn/betasave/Identity_61*
dtype0
S
save/Identity_62Identitysave/RestoreV2:124*
_output_shapes
:*
T0
_
save/AssignVariableOp_62AssignVariableOpconv_dw_8_bn/gammasave/Identity_62*
dtype0
S
save/Identity_63Identitysave/RestoreV2:125*
_output_shapes
:*
T0
e
save/AssignVariableOp_63AssignVariableOpconv_dw_8_bn/moving_meansave/Identity_63*
dtype0
S
save/Identity_64Identitysave/RestoreV2:126*
T0*
_output_shapes
:
i
save/AssignVariableOp_64AssignVariableOpconv_dw_8_bn/moving_variancesave/Identity_64*
dtype0

save/NoOp_62NoOp
S
save/Identity_65Identitysave/RestoreV2:128*
_output_shapes
:*
T0
]
save/AssignVariableOp_65AssignVariableOpconv_pw_8/kernelsave/Identity_65*
dtype0

save/NoOp_63NoOp
S
save/Identity_66Identitysave/RestoreV2:130*
_output_shapes
:*
T0
^
save/AssignVariableOp_66AssignVariableOpconv_pw_8_bn/betasave/Identity_66*
dtype0
S
save/Identity_67Identitysave/RestoreV2:131*
T0*
_output_shapes
:
_
save/AssignVariableOp_67AssignVariableOpconv_pw_8_bn/gammasave/Identity_67*
dtype0
S
save/Identity_68Identitysave/RestoreV2:132*
_output_shapes
:*
T0
e
save/AssignVariableOp_68AssignVariableOpconv_pw_8_bn/moving_meansave/Identity_68*
dtype0
S
save/Identity_69Identitysave/RestoreV2:133*
_output_shapes
:*
T0
i
save/AssignVariableOp_69AssignVariableOpconv_pw_8_bn/moving_variancesave/Identity_69*
dtype0

save/NoOp_64NoOp
S
save/Identity_70Identitysave/RestoreV2:135*
_output_shapes
:*
T0
g
save/AssignVariableOp_70AssignVariableOpconv_dw_9/depthwise_kernelsave/Identity_70*
dtype0

save/NoOp_65NoOp
S
save/Identity_71Identitysave/RestoreV2:137*
_output_shapes
:*
T0
^
save/AssignVariableOp_71AssignVariableOpconv_dw_9_bn/betasave/Identity_71*
dtype0
S
save/Identity_72Identitysave/RestoreV2:138*
_output_shapes
:*
T0
_
save/AssignVariableOp_72AssignVariableOpconv_dw_9_bn/gammasave/Identity_72*
dtype0
S
save/Identity_73Identitysave/RestoreV2:139*
T0*
_output_shapes
:
e
save/AssignVariableOp_73AssignVariableOpconv_dw_9_bn/moving_meansave/Identity_73*
dtype0
S
save/Identity_74Identitysave/RestoreV2:140*
_output_shapes
:*
T0
i
save/AssignVariableOp_74AssignVariableOpconv_dw_9_bn/moving_variancesave/Identity_74*
dtype0

save/NoOp_66NoOp
S
save/Identity_75Identitysave/RestoreV2:142*
T0*
_output_shapes
:
]
save/AssignVariableOp_75AssignVariableOpconv_pw_9/kernelsave/Identity_75*
dtype0

save/NoOp_67NoOp
S
save/Identity_76Identitysave/RestoreV2:144*
T0*
_output_shapes
:
^
save/AssignVariableOp_76AssignVariableOpconv_pw_9_bn/betasave/Identity_76*
dtype0
S
save/Identity_77Identitysave/RestoreV2:145*
T0*
_output_shapes
:
_
save/AssignVariableOp_77AssignVariableOpconv_pw_9_bn/gammasave/Identity_77*
dtype0
S
save/Identity_78Identitysave/RestoreV2:146*
T0*
_output_shapes
:
e
save/AssignVariableOp_78AssignVariableOpconv_pw_9_bn/moving_meansave/Identity_78*
dtype0
S
save/Identity_79Identitysave/RestoreV2:147*
T0*
_output_shapes
:
i
save/AssignVariableOp_79AssignVariableOpconv_pw_9_bn/moving_variancesave/Identity_79*
dtype0

save/NoOp_68NoOp
S
save/Identity_80Identitysave/RestoreV2:149*
T0*
_output_shapes
:
h
save/AssignVariableOp_80AssignVariableOpconv_dw_10/depthwise_kernelsave/Identity_80*
dtype0

save/NoOp_69NoOp
S
save/Identity_81Identitysave/RestoreV2:151*
T0*
_output_shapes
:
_
save/AssignVariableOp_81AssignVariableOpconv_dw_10_bn/betasave/Identity_81*
dtype0
S
save/Identity_82Identitysave/RestoreV2:152*
T0*
_output_shapes
:
`
save/AssignVariableOp_82AssignVariableOpconv_dw_10_bn/gammasave/Identity_82*
dtype0
S
save/Identity_83Identitysave/RestoreV2:153*
_output_shapes
:*
T0
f
save/AssignVariableOp_83AssignVariableOpconv_dw_10_bn/moving_meansave/Identity_83*
dtype0
S
save/Identity_84Identitysave/RestoreV2:154*
_output_shapes
:*
T0
j
save/AssignVariableOp_84AssignVariableOpconv_dw_10_bn/moving_variancesave/Identity_84*
dtype0

save/NoOp_70NoOp
S
save/Identity_85Identitysave/RestoreV2:156*
_output_shapes
:*
T0
]
save/AssignVariableOp_85AssignVariableOpconv_pw_1/kernelsave/Identity_85*
dtype0

save/NoOp_71NoOp
S
save/Identity_86Identitysave/RestoreV2:158*
_output_shapes
:*
T0
^
save/AssignVariableOp_86AssignVariableOpconv_pw_10/kernelsave/Identity_86*
dtype0

save/NoOp_72NoOp
S
save/Identity_87Identitysave/RestoreV2:160*
T0*
_output_shapes
:
_
save/AssignVariableOp_87AssignVariableOpconv_pw_10_bn/betasave/Identity_87*
dtype0
S
save/Identity_88Identitysave/RestoreV2:161*
T0*
_output_shapes
:
`
save/AssignVariableOp_88AssignVariableOpconv_pw_10_bn/gammasave/Identity_88*
dtype0
S
save/Identity_89Identitysave/RestoreV2:162*
T0*
_output_shapes
:
f
save/AssignVariableOp_89AssignVariableOpconv_pw_10_bn/moving_meansave/Identity_89*
dtype0
S
save/Identity_90Identitysave/RestoreV2:163*
T0*
_output_shapes
:
j
save/AssignVariableOp_90AssignVariableOpconv_pw_10_bn/moving_variancesave/Identity_90*
dtype0

save/NoOp_73NoOp
S
save/Identity_91Identitysave/RestoreV2:165*
_output_shapes
:*
T0
h
save/AssignVariableOp_91AssignVariableOpconv_dw_11/depthwise_kernelsave/Identity_91*
dtype0

save/NoOp_74NoOp
S
save/Identity_92Identitysave/RestoreV2:167*
T0*
_output_shapes
:
_
save/AssignVariableOp_92AssignVariableOpconv_dw_11_bn/betasave/Identity_92*
dtype0
S
save/Identity_93Identitysave/RestoreV2:168*
T0*
_output_shapes
:
`
save/AssignVariableOp_93AssignVariableOpconv_dw_11_bn/gammasave/Identity_93*
dtype0
S
save/Identity_94Identitysave/RestoreV2:169*
_output_shapes
:*
T0
f
save/AssignVariableOp_94AssignVariableOpconv_dw_11_bn/moving_meansave/Identity_94*
dtype0
S
save/Identity_95Identitysave/RestoreV2:170*
T0*
_output_shapes
:
j
save/AssignVariableOp_95AssignVariableOpconv_dw_11_bn/moving_variancesave/Identity_95*
dtype0

save/NoOp_75NoOp
S
save/Identity_96Identitysave/RestoreV2:172*
_output_shapes
:*
T0
^
save/AssignVariableOp_96AssignVariableOpconv_pw_11/kernelsave/Identity_96*
dtype0

save/NoOp_76NoOp
S
save/Identity_97Identitysave/RestoreV2:174*
T0*
_output_shapes
:
_
save/AssignVariableOp_97AssignVariableOpconv_pw_11_bn/betasave/Identity_97*
dtype0
S
save/Identity_98Identitysave/RestoreV2:175*
T0*
_output_shapes
:
`
save/AssignVariableOp_98AssignVariableOpconv_pw_11_bn/gammasave/Identity_98*
dtype0
S
save/Identity_99Identitysave/RestoreV2:176*
T0*
_output_shapes
:
f
save/AssignVariableOp_99AssignVariableOpconv_pw_11_bn/moving_meansave/Identity_99*
dtype0
T
save/Identity_100Identitysave/RestoreV2:177*
T0*
_output_shapes
:
l
save/AssignVariableOp_100AssignVariableOpconv_pw_11_bn/moving_variancesave/Identity_100*
dtype0

save/NoOp_77NoOp
T
save/Identity_101Identitysave/RestoreV2:179*
_output_shapes
:*
T0
j
save/AssignVariableOp_101AssignVariableOpconv_dw_12/depthwise_kernelsave/Identity_101*
dtype0

save/NoOp_78NoOp
T
save/Identity_102Identitysave/RestoreV2:181*
_output_shapes
:*
T0
a
save/AssignVariableOp_102AssignVariableOpconv_dw_12_bn/betasave/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:182*
_output_shapes
:*
T0
b
save/AssignVariableOp_103AssignVariableOpconv_dw_12_bn/gammasave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:183*
T0*
_output_shapes
:
h
save/AssignVariableOp_104AssignVariableOpconv_dw_12_bn/moving_meansave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:184*
_output_shapes
:*
T0
l
save/AssignVariableOp_105AssignVariableOpconv_dw_12_bn/moving_variancesave/Identity_105*
dtype0

save/NoOp_79NoOp
T
save/Identity_106Identitysave/RestoreV2:186*
T0*
_output_shapes
:
`
save/AssignVariableOp_106AssignVariableOpconv_pw_12/kernelsave/Identity_106*
dtype0

save/NoOp_80NoOp
T
save/Identity_107Identitysave/RestoreV2:188*
T0*
_output_shapes
:
a
save/AssignVariableOp_107AssignVariableOpconv_pw_12_bn/betasave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:189*
T0*
_output_shapes
:
b
save/AssignVariableOp_108AssignVariableOpconv_pw_12_bn/gammasave/Identity_108*
dtype0
T
save/Identity_109Identitysave/RestoreV2:190*
_output_shapes
:*
T0
h
save/AssignVariableOp_109AssignVariableOpconv_pw_12_bn/moving_meansave/Identity_109*
dtype0
T
save/Identity_110Identitysave/RestoreV2:191*
_output_shapes
:*
T0
l
save/AssignVariableOp_110AssignVariableOpconv_pw_12_bn/moving_variancesave/Identity_110*
dtype0

save/NoOp_81NoOp
T
save/Identity_111Identitysave/RestoreV2:193*
T0*
_output_shapes
:
`
save/AssignVariableOp_111AssignVariableOpconv_pw_1_bn/betasave/Identity_111*
dtype0
T
save/Identity_112Identitysave/RestoreV2:194*
T0*
_output_shapes
:
a
save/AssignVariableOp_112AssignVariableOpconv_pw_1_bn/gammasave/Identity_112*
dtype0
T
save/Identity_113Identitysave/RestoreV2:195*
T0*
_output_shapes
:
g
save/AssignVariableOp_113AssignVariableOpconv_pw_1_bn/moving_meansave/Identity_113*
dtype0
T
save/Identity_114Identitysave/RestoreV2:196*
_output_shapes
:*
T0
k
save/AssignVariableOp_114AssignVariableOpconv_pw_1_bn/moving_variancesave/Identity_114*
dtype0

save/NoOp_82NoOp
T
save/Identity_115Identitysave/RestoreV2:198*
T0*
_output_shapes
:
j
save/AssignVariableOp_115AssignVariableOpconv_dw_13/depthwise_kernelsave/Identity_115*
dtype0

save/NoOp_83NoOp
T
save/Identity_116Identitysave/RestoreV2:200*
T0*
_output_shapes
:
a
save/AssignVariableOp_116AssignVariableOpconv_dw_13_bn/betasave/Identity_116*
dtype0
T
save/Identity_117Identitysave/RestoreV2:201*
_output_shapes
:*
T0
b
save/AssignVariableOp_117AssignVariableOpconv_dw_13_bn/gammasave/Identity_117*
dtype0
T
save/Identity_118Identitysave/RestoreV2:202*
T0*
_output_shapes
:
h
save/AssignVariableOp_118AssignVariableOpconv_dw_13_bn/moving_meansave/Identity_118*
dtype0
T
save/Identity_119Identitysave/RestoreV2:203*
_output_shapes
:*
T0
l
save/AssignVariableOp_119AssignVariableOpconv_dw_13_bn/moving_variancesave/Identity_119*
dtype0

save/NoOp_84NoOp
T
save/Identity_120Identitysave/RestoreV2:205*
T0*
_output_shapes
:
`
save/AssignVariableOp_120AssignVariableOpconv_pw_13/kernelsave/Identity_120*
dtype0

save/NoOp_85NoOp
T
save/Identity_121Identitysave/RestoreV2:207*
T0*
_output_shapes
:
a
save/AssignVariableOp_121AssignVariableOpconv_pw_13_bn/betasave/Identity_121*
dtype0
T
save/Identity_122Identitysave/RestoreV2:208*
_output_shapes
:*
T0
b
save/AssignVariableOp_122AssignVariableOpconv_pw_13_bn/gammasave/Identity_122*
dtype0
T
save/Identity_123Identitysave/RestoreV2:209*
_output_shapes
:*
T0
h
save/AssignVariableOp_123AssignVariableOpconv_pw_13_bn/moving_meansave/Identity_123*
dtype0
T
save/Identity_124Identitysave/RestoreV2:210*
T0*
_output_shapes
:
l
save/AssignVariableOp_124AssignVariableOpconv_pw_13_bn/moving_variancesave/Identity_124*
dtype0

save/NoOp_86NoOp
T
save/Identity_125Identitysave/RestoreV2:212*
T0*
_output_shapes
:
Y
save/AssignVariableOp_125AssignVariableOp
dense/biassave/Identity_125*
dtype0
T
save/Identity_126Identitysave/RestoreV2:213*
_output_shapes
:*
T0
[
save/AssignVariableOp_126AssignVariableOpdense/kernelsave/Identity_126*
dtype0

save/NoOp_87NoOp
T
save/Identity_127Identitysave/RestoreV2:215*
T0*
_output_shapes
:
[
save/AssignVariableOp_127AssignVariableOpdense_1/biassave/Identity_127*
dtype0
T
save/Identity_128Identitysave/RestoreV2:216*
T0*
_output_shapes
:
]
save/AssignVariableOp_128AssignVariableOpdense_1/kernelsave/Identity_128*
dtype0

save/NoOp_88NoOp
T
save/Identity_129Identitysave/RestoreV2:218*
T0*
_output_shapes
:
[
save/AssignVariableOp_129AssignVariableOpdense_2/biassave/Identity_129*
dtype0
T
save/Identity_130Identitysave/RestoreV2:219*
T0*
_output_shapes
:
]
save/AssignVariableOp_130AssignVariableOpdense_2/kernelsave/Identity_130*
dtype0

save/NoOp_89NoOp
T
save/Identity_131Identitysave/RestoreV2:221*
T0*
_output_shapes
:
[
save/AssignVariableOp_131AssignVariableOpdense_3/biassave/Identity_131*
dtype0
T
save/Identity_132Identitysave/RestoreV2:222*
_output_shapes
:*
T0
]
save/AssignVariableOp_132AssignVariableOpdense_3/kernelsave/Identity_132*
dtype0

save/NoOp_90NoOp
T
save/Identity_133Identitysave/RestoreV2:224*
_output_shapes
:*
T0
i
save/AssignVariableOp_133AssignVariableOpconv_dw_2/depthwise_kernelsave/Identity_133*
dtype0

save/NoOp_91NoOp
T
save/Identity_134Identitysave/RestoreV2:226*
T0*
_output_shapes
:
`
save/AssignVariableOp_134AssignVariableOpconv_dw_2_bn/betasave/Identity_134*
dtype0
T
save/Identity_135Identitysave/RestoreV2:227*
T0*
_output_shapes
:
a
save/AssignVariableOp_135AssignVariableOpconv_dw_2_bn/gammasave/Identity_135*
dtype0
T
save/Identity_136Identitysave/RestoreV2:228*
T0*
_output_shapes
:
g
save/AssignVariableOp_136AssignVariableOpconv_dw_2_bn/moving_meansave/Identity_136*
dtype0
T
save/Identity_137Identitysave/RestoreV2:229*
T0*
_output_shapes
:
k
save/AssignVariableOp_137AssignVariableOpconv_dw_2_bn/moving_variancesave/Identity_137*
dtype0

save/NoOp_92NoOp
T
save/Identity_138Identitysave/RestoreV2:231*
T0*
_output_shapes
:
_
save/AssignVariableOp_138AssignVariableOpconv_pw_2/kernelsave/Identity_138*
dtype0

save/NoOp_93NoOp
T
save/Identity_139Identitysave/RestoreV2:233*
_output_shapes
:*
T0
`
save/AssignVariableOp_139AssignVariableOpconv_pw_2_bn/betasave/Identity_139*
dtype0
T
save/Identity_140Identitysave/RestoreV2:234*
T0*
_output_shapes
:
a
save/AssignVariableOp_140AssignVariableOpconv_pw_2_bn/gammasave/Identity_140*
dtype0
T
save/Identity_141Identitysave/RestoreV2:235*
T0*
_output_shapes
:
g
save/AssignVariableOp_141AssignVariableOpconv_pw_2_bn/moving_meansave/Identity_141*
dtype0
T
save/Identity_142Identitysave/RestoreV2:236*
T0*
_output_shapes
:
k
save/AssignVariableOp_142AssignVariableOpconv_pw_2_bn/moving_variancesave/Identity_142*
dtype0
Â)
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_11^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_112^save/AssignVariableOp_113^save/AssignVariableOp_114^save/AssignVariableOp_115^save/AssignVariableOp_116^save/AssignVariableOp_117^save/AssignVariableOp_118^save/AssignVariableOp_119^save/AssignVariableOp_12^save/AssignVariableOp_120^save/AssignVariableOp_121^save/AssignVariableOp_122^save/AssignVariableOp_123^save/AssignVariableOp_124^save/AssignVariableOp_125^save/AssignVariableOp_126^save/AssignVariableOp_127^save/AssignVariableOp_128^save/AssignVariableOp_129^save/AssignVariableOp_13^save/AssignVariableOp_130^save/AssignVariableOp_131^save/AssignVariableOp_132^save/AssignVariableOp_133^save/AssignVariableOp_134^save/AssignVariableOp_135^save/AssignVariableOp_136^save/AssignVariableOp_137^save/AssignVariableOp_138^save/AssignVariableOp_139^save/AssignVariableOp_14^save/AssignVariableOp_140^save/AssignVariableOp_141^save/AssignVariableOp_142^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
^save/NoOp^save/NoOp_1^save/NoOp_10^save/NoOp_11^save/NoOp_12^save/NoOp_13^save/NoOp_14^save/NoOp_15^save/NoOp_16^save/NoOp_17^save/NoOp_18^save/NoOp_19^save/NoOp_2^save/NoOp_20^save/NoOp_21^save/NoOp_22^save/NoOp_23^save/NoOp_24^save/NoOp_25^save/NoOp_26^save/NoOp_27^save/NoOp_28^save/NoOp_29^save/NoOp_3^save/NoOp_30^save/NoOp_31^save/NoOp_32^save/NoOp_33^save/NoOp_34^save/NoOp_35^save/NoOp_36^save/NoOp_37^save/NoOp_38^save/NoOp_39^save/NoOp_4^save/NoOp_40^save/NoOp_41^save/NoOp_42^save/NoOp_43^save/NoOp_44^save/NoOp_45^save/NoOp_46^save/NoOp_47^save/NoOp_48^save/NoOp_49^save/NoOp_5^save/NoOp_50^save/NoOp_51^save/NoOp_52^save/NoOp_53^save/NoOp_54^save/NoOp_55^save/NoOp_56^save/NoOp_57^save/NoOp_58^save/NoOp_59^save/NoOp_6^save/NoOp_60^save/NoOp_61^save/NoOp_62^save/NoOp_63^save/NoOp_64^save/NoOp_65^save/NoOp_66^save/NoOp_67^save/NoOp_68^save/NoOp_69^save/NoOp_7^save/NoOp_70^save/NoOp_71^save/NoOp_72^save/NoOp_73^save/NoOp_74^save/NoOp_75^save/NoOp_76^save/NoOp_77^save/NoOp_78^save/NoOp_79^save/NoOp_8^save/NoOp_80^save/NoOp_81^save/NoOp_82^save/NoOp_83^save/NoOp_84^save/NoOp_85^save/NoOp_86^save/NoOp_87^save/NoOp_88^save/NoOp_89^save/NoOp_9^save/NoOp_90^save/NoOp_91^save/NoOp_92^save/NoOp_93
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
g
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes	
:ě*¸f
valueŽfBŤfěB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-10/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-14/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-30/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-46/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-58/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-61/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-64/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-67/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-70/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-73/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-74/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-77/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-80/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-83/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-86/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-87/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-10/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-12/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-13/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-14/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-15/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-16/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-18/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-19/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-21/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-21/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-22/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-22/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-23/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-25/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-26/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-26/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-27/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-28/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-29/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-29/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-30/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-30/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-31/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-31/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-31/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-31/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-31/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-32/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-33/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-33/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-33/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-33/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-34/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-34/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-35/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-37/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-37/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-37/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-37/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-38/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-38/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-39/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-39/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-39/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-39/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-39/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-40/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-41/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-41/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-41/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-41/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-41/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-42/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-42/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-43/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-43/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-43/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-43/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-44/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-44/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-45/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-45/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-45/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-45/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-45/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-46/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-46/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-47/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-47/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-47/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-47/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-47/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-48/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-48/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-49/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-49/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-49/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-49/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-5/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-50/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-50/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-51/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-51/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-51/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-51/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-51/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-52/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-53/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-53/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-53/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-53/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-53/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-54/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-54/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-54/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-55/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-55/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-56/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-56/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-56/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-57/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-57/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-57/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-6/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-8/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-9/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
Â
save_1/SaveV2/shape_and_slicesConst*
_output_shapes	
:ě*î
valueäBáěB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ď
save_1/SaveV2/tensors_0Const*Ś
valueB B{"class_name": "Model", "config": {"input_layers": [["input_1", 0, 0]], "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, null, null, 3], "dtype": "float32", "name": "input_1", "sparse": false}, "inbound_nodes": [], "name": "input_1"}, {"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv1_pad", "padding": [[0, 1], [0, 1]], "trainable": false}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "name": "conv1_pad"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 32, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [3, 3], "name": "conv1", "padding": "valid", "strides": [2, 2], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv1_pad", 0, 0, {}]]], "name": "conv1"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv1_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv1", 0, 0, {}]]], "name": "conv1_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}, "inbound_nodes": [[["conv1_bn", 0, 0, {}]]], "name": "conv1_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_1", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv1_relu", 0, 0, {}]]], "name": "conv_dw_1"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_1_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv_dw_1", 0, 0, {}]]], "name": "conv_dw_1_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}, "inbound_nodes": [[["conv_dw_1_bn", 0, 0, {}]]], "name": "conv_dw_1_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 64, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_1", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv_dw_1_relu", 0, 0, {}]]], "name": "conv_pw_1"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_1_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv_pw_1", 0, 0, {}]]], "name": "conv_pw_1_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}, "inbound_nodes": [[["conv_pw_1_bn", 0, 0, {}]]], "name": "conv_pw_1_relu"}, {"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_2", "padding": [[0, 1], [0, 1]], "trainable": false}, "inbound_nodes": [[["conv_pw_1_relu", 0, 0, {}]]], "name": "conv_pad_2"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_2", "padding": "valid", "strides": [2, 2], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv_pad_2", 0, 0, {}]]], "name": "conv_dw_2"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_2_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv_dw_2", 0, 0, {}]]], "name": "conv_dw_2_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_2_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}, "inbound_nodes": [[["conv_dw_2_bn", 0, 0, {}]]], "name": "conv_dw_2_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 128, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_2", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv_dw_2_relu", 0, 0, {}]]], "name": "conv_pw_2"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_2_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv_pw_2", 0, 0, {}]]], "name": "conv_pw_2_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_2_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}, "inbound_nodes": [[["conv_pw_2_bn", 0, 0, {}]]], "name": "conv_pw_2_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_3", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}, "inbound_nodes": [[["conv_pw_2_relu", 0, 0, {}]]], "name": "conv_dw_3"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_3_bn", "scale": true, "trainable": false}, "inbound_nodes": [[["conv_dw_3", 0, 0, {}]]], "name": "conv_dw_3_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_3_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_3_bn", 0, 0, {}]]], "name": "conv_dw_3_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 128, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_3", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_3_relu", 0, 0, {}]]], "name": "conv_pw_3"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_3_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_3", 0, 0, {}]]], "name": "conv_pw_3_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_3_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_3_bn", 0, 0, {}]]], "name": "conv_pw_3_relu"}, {"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_4", "padding": [[0, 1], [0, 1]], "trainable": true}, "inbound_nodes": [[["conv_pw_3_relu", 0, 0, {}]]], "name": "conv_pad_4"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_4", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pad_4", 0, 0, {}]]], "name": "conv_dw_4"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_4_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_4", 0, 0, {}]]], "name": "conv_dw_4_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_4_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_4_bn", 0, 0, {}]]], "name": "conv_dw_4_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 256, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_4", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_4_relu", 0, 0, {}]]], "name": "conv_pw_4"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_4_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_4", 0, 0, {}]]], "name": "conv_pw_4_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_4_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_4_bn", 0, 0, {}]]], "name": "conv_pw_4_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_5", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_4_relu", 0, 0, {}]]], "name": "conv_dw_5"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_5_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_5", 0, 0, {}]]], "name": "conv_dw_5_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_5_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_5_bn", 0, 0, {}]]], "name": "conv_dw_5_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 256, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_5", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_5_relu", 0, 0, {}]]], "name": "conv_pw_5"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_5_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_5", 0, 0, {}]]], "name": "conv_pw_5_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_5_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_5_bn", 0, 0, {}]]], "name": "conv_pw_5_relu"}, {"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_6", "padding": [[0, 1], [0, 1]], "trainable": true}, "inbound_nodes": [[["conv_pw_5_relu", 0, 0, {}]]], "name": "conv_pad_6"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_6", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pad_6", 0, 0, {}]]], "name": "conv_dw_6"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_6_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_6", 0, 0, {}]]], "name": "conv_dw_6_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_6_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_6_bn", 0, 0, {}]]], "name": "conv_dw_6_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_6", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_6_relu", 0, 0, {}]]], "name": "conv_pw_6"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_6_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_6", 0, 0, {}]]], "name": "conv_pw_6_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_6_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_6_bn", 0, 0, {}]]], "name": "conv_pw_6_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_7", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_6_relu", 0, 0, {}]]], "name": "conv_dw_7"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_7_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_7", 0, 0, {}]]], "name": "conv_dw_7_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_7_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_7_bn", 0, 0, {}]]], "name": "conv_dw_7_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_7", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_7_relu", 0, 0, {}]]], "name": "conv_pw_7"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_7_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_7", 0, 0, {}]]], "name": "conv_pw_7_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_7_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_7_bn", 0, 0, {}]]], "name": "conv_pw_7_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_8", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_7_relu", 0, 0, {}]]], "name": "conv_dw_8"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_8_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_8", 0, 0, {}]]], "name": "conv_dw_8_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_8_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_8_bn", 0, 0, {}]]], "name": "conv_dw_8_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_8", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_8_relu", 0, 0, {}]]], "name": "conv_pw_8"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_8_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_8", 0, 0, {}]]], "name": "conv_pw_8_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_8_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_8_bn", 0, 0, {}]]], "name": "conv_pw_8_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_9", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_8_relu", 0, 0, {}]]], "name": "conv_dw_9"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_9_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_9", 0, 0, {}]]], "name": "conv_dw_9_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_9_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_9_bn", 0, 0, {}]]], "name": "conv_dw_9_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_9", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_9_relu", 0, 0, {}]]], "name": "conv_pw_9"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_9_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_9", 0, 0, {}]]], "name": "conv_pw_9_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_9_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_9_bn", 0, 0, {}]]], "name": "conv_pw_9_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_10", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_9_relu", 0, 0, {}]]], "name": "conv_dw_10"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_10_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_10", 0, 0, {}]]], "name": "conv_dw_10_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_10_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_10_bn", 0, 0, {}]]], "name": "conv_dw_10_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_10", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_10_relu", 0, 0, {}]]], "name": "conv_pw_10"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_10_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_10", 0, 0, {}]]], "name": "conv_pw_10_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_10_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_10_bn", 0, 0, {}]]], "name": "conv_pw_10_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_11", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_10_relu", 0, 0, {}]]], "name": "conv_dw_11"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_11_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_11", 0, 0, {}]]], "name": "conv_dw_11_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_11_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_11_bn", 0, 0, {}]]], "name": "conv_dw_11_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_11", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_11_relu", 0, 0, {}]]], "name": "conv_pw_11"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_11_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_11", 0, 0, {}]]], "name": "conv_pw_11_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_11_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_11_bn", 0, 0, {}]]], "name": "conv_pw_11_relu"}, {"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_12", "padding": [[0, 1], [0, 1]], "trainable": true}, "inbound_nodes": [[["conv_pw_11_relu", 0, 0, {}]]], "name": "conv_pad_12"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_12", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pad_12", 0, 0, {}]]], "name": "conv_dw_12"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_12_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_12", 0, 0, {}]]], "name": "conv_dw_12_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_12_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_12_bn", 0, 0, {}]]], "name": "conv_dw_12_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 1024, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_12", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_12_relu", 0, 0, {}]]], "name": "conv_pw_12"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_12_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_12", 0, 0, {}]]], "name": "conv_pw_12_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_12_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_12_bn", 0, 0, {}]]], "name": "conv_pw_12_relu"}, {"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_13", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_pw_12_relu", 0, 0, {}]]], "name": "conv_dw_13"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_13_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_dw_13", 0, 0, {}]]], "name": "conv_dw_13_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_13_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_dw_13_bn", 0, 0, {}]]], "name": "conv_dw_13_relu"}, {"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 1024, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_13", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}, "inbound_nodes": [[["conv_dw_13_relu", 0, 0, {}]]], "name": "conv_pw_13"}, {"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_13_bn", "scale": true, "trainable": true}, "inbound_nodes": [[["conv_pw_13", 0, 0, {}]]], "name": "conv_pw_13_bn"}, {"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_13_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}, "inbound_nodes": [[["conv_pw_13_bn", 0, 0, {}]]], "name": "conv_pw_13_relu"}, {"class_name": "GlobalAveragePooling2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "global_average_pooling2d", "trainable": true}, "inbound_nodes": [[["conv_pw_13_relu", 0, 0, {}]]], "name": "global_average_pooling2d"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense", "trainable": true, "units": 1024, "use_bias": true}, "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]], "name": "dense"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_1", "trainable": true, "units": 1024, "use_bias": true}, "inbound_nodes": [[["dense", 0, 0, {}]]], "name": "dense_1"}, {"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_2", "trainable": true, "units": 512, "use_bias": true}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "name": "dense_2"}, {"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_3", "trainable": true, "units": 2, "use_bias": true}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "name": "dense_3"}], "name": "model", "output_layers": [["dense_3", 0, 0]]}}*
dtype0*
_output_shapes
: 
č
save_1/SaveV2/tensors_1Const* 
valueB B{"class_name": "InputLayer", "config": {"batch_input_shape": [null, null, null, 3], "dtype": "float32", "name": "input_1", "sparse": false}}*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensors_2Const*
_output_shapes
: *š
valueŻBŹ BĽ{"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv1_pad", "padding": [[0, 1], [0, 1]], "trainable": false}}*
dtype0
Ő
save_1/SaveV2/tensors_3Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}}*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensors_4Const*ş
value°B­ BŚ{"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_2", "padding": [[0, 1], [0, 1]], "trainable": false}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_5Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_2_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_6Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_2_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}}*
dtype0*
_output_shapes
: 
Ô
save_1/SaveV2/tensors_7Const*
_output_shapes
: *
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_3_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0
Ô
save_1/SaveV2/tensors_8Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_3_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensors_9Const*š
valueŻBŹ BĽ{"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_4", "padding": [[0, 1], [0, 1]], "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_10Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_4_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_11Const*
dtype0*
_output_shapes
: *
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_4_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}
Ő
save_1/SaveV2/tensors_12Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_5_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_13Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_5_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensors_14Const*š
valueŻBŹ BĽ{"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_6", "padding": [[0, 1], [0, 1]], "trainable": true}}*
dtype0*
_output_shapes
: 
Ň
save_1/SaveV2/tensors_15Const*
value˙Bü Bő{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_16Const*
_output_shapes
: *
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_6_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0
Ő
save_1/SaveV2/tensors_17Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_6_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_18Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_7_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_19Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_7_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_20Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_8_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_21Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_8_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ő
save_1/SaveV2/tensors_22Const*
_output_shapes
: *
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_9_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0
Ő
save_1/SaveV2/tensors_23Const*
valueB˙ Bř{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_9_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_24Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_10_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_25Const*
_output_shapes
: *
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_10_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0
Ö
save_1/SaveV2/tensors_26Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_1_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": false}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_27Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_11_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_28Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_11_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensors_29Const*ş
value°B­ BŚ{"class_name": "ZeroPadding2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "conv_pad_12", "padding": [[0, 1], [0, 1]], "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_30Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_12_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_31Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_12_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_32Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_dw_13_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
Ö
save_1/SaveV2/tensors_33Const*
valueB Bů{"class_name": "ReLU", "config": {"dtype": "float32", "max_value": {"type": "ndarray", "value": 6.0}, "name": "conv_pw_13_relu", "negative_slope": {"type": "ndarray", "value": 0.0}, "threshold": {"type": "ndarray", "value": 0.0}, "trainable": true}}*
dtype0*
_output_shapes
: 
ü
save_1/SaveV2/tensors_34Const*ł
valueŠBŚ B{"class_name": "GlobalAveragePooling2D", "config": {"data_format": "channels_last", "dtype": "float32", "name": "global_average_pooling2d", "trainable": true}}*
dtype0*
_output_shapes
: 
Ľ
save_1/SaveV2/tensors_35Const*Ü
valueŇBĎ BČ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 32, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [3, 3], "name": "conv1", "padding": "valid", "strides": [2, 2], "trainable": false, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ć
save_1/SaveV2/tensors_37Const*
dtype0*
_output_shapes
: *ý
valueóBđ Bé{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv1_bn", "scale": true, "trainable": false}}
Â
save_1/SaveV2/tensors_42Const*ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_3", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ę
save_1/SaveV2/tensors_44Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_3_bn", "scale": true, "trainable": false}}*
dtype0*
_output_shapes
: 
¨
save_1/SaveV2/tensors_49Const*
_output_shapes
: *ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 128, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_3", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
É
save_1/SaveV2/tensors_51Const*
dtype0*
_output_shapes
: *
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_3_bn", "scale": true, "trainable": true}}
Â
save_1/SaveV2/tensors_56Const*ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_4", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
É
save_1/SaveV2/tensors_58Const*
_output_shapes
: *
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_4_bn", "scale": true, "trainable": true}}*
dtype0
¨
save_1/SaveV2/tensors_63Const*
_output_shapes
: *ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 256, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_4", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
É
save_1/SaveV2/tensors_65Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_4_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Á
save_1/SaveV2/tensors_70Const*
_output_shapes
: *ř
valueîBë Bä{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_5", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
É
save_1/SaveV2/tensors_72Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_5_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Â
save_1/SaveV2/tensors_77Const*
dtype0*
_output_shapes
: *ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_1", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}}
¨
save_1/SaveV2/tensors_79Const*ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 256, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_5", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
É
save_1/SaveV2/tensors_81Const*
dtype0*
_output_shapes
: *
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_5_bn", "scale": true, "trainable": true}}
Â
save_1/SaveV2/tensors_86Const*ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_6", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
É
save_1/SaveV2/tensors_88Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_6_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
¨
save_1/SaveV2/tensors_93Const*
_output_shapes
: *ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_6", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
É
save_1/SaveV2/tensors_95Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_6_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Â
save_1/SaveV2/tensors_100Const*
dtype0*
_output_shapes
: *ř
valueîBë Bä{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_7", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}
Ę
save_1/SaveV2/tensors_102Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_7_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Š
save_1/SaveV2/tensors_107Const*ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_7", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ę
save_1/SaveV2/tensors_109Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_7_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_114Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_1_bn", "scale": true, "trainable": false}}*
dtype0*
_output_shapes
: 
Â
save_1/SaveV2/tensors_119Const*ř
valueîBë Bä{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_8", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ę
save_1/SaveV2/tensors_121Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_8_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Š
save_1/SaveV2/tensors_126Const*ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_8", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ę
save_1/SaveV2/tensors_128Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_8_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Â
save_1/SaveV2/tensors_133Const*
dtype0*
_output_shapes
: *ř
valueîBë Bä{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_9", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}
Ę
save_1/SaveV2/tensors_135Const*
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_9_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Š
save_1/SaveV2/tensors_140Const*
_output_shapes
: *ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_9", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
Ę
save_1/SaveV2/tensors_142Const*
dtype0*
_output_shapes
: *
valueöBó Bě{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_9_bn", "scale": true, "trainable": true}}
Ă
save_1/SaveV2/tensors_147Const*ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_10", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_149Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_10_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Š
save_1/SaveV2/tensors_154Const*ß
valueŐBŇ BË{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 64, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_1", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ş
save_1/SaveV2/tensors_156Const*
_output_shapes
: *ŕ
valueÖBÓ BĚ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_10", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
Ë
save_1/SaveV2/tensors_158Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_10_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ă
save_1/SaveV2/tensors_163Const*ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_11", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_165Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_11_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ş
save_1/SaveV2/tensors_170Const*
dtype0*
_output_shapes
: *ŕ
valueÖBÓ BĚ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 512, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_11", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}
Ë
save_1/SaveV2/tensors_172Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_11_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ä
save_1/SaveV2/tensors_177Const*
_output_shapes
: *ú
valueđBí Bć{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_12", "padding": "valid", "strides": [2, 2], "trainable": true, "use_bias": false}}*
dtype0
Ë
save_1/SaveV2/tensors_179Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_12_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ť
save_1/SaveV2/tensors_184Const*á
value×BÔ BÍ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 1024, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_12", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_186Const*
_output_shapes
: *
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_12_bn", "scale": true, "trainable": true}}*
dtype0
Ë
save_1/SaveV2/tensors_191Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_1_bn", "scale": true, "trainable": false}}*
dtype0*
_output_shapes
: 
Ă
save_1/SaveV2/tensors_196Const*
dtype0*
_output_shapes
: *ů
valueďBě Bĺ{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_13", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}
Ë
save_1/SaveV2/tensors_198Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_13_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ť
save_1/SaveV2/tensors_203Const*
_output_shapes
: *á
value×BÔ BÍ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 1024, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_13", "padding": "same", "strides": [1, 1], "trainable": true, "use_bias": false}}*
dtype0
Ë
save_1/SaveV2/tensors_205Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_13_bn", "scale": true, "trainable": true}}*
dtype0*
_output_shapes
: 
Ş
save_1/SaveV2/tensors_210Const*ŕ
valueÖBÓ BĚ{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense", "trainable": true, "units": 1024, "use_bias": true}}*
dtype0*
_output_shapes
: 
Ź
save_1/SaveV2/tensors_213Const*â
valueŘBŐ BÎ{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_1", "trainable": true, "units": 1024, "use_bias": true}}*
dtype0*
_output_shapes
: 
Ť
save_1/SaveV2/tensors_216Const*
_output_shapes
: *á
value×BÔ BÍ{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_2", "trainable": true, "units": 512, "use_bias": true}}*
dtype0
Ź
save_1/SaveV2/tensors_219Const*â
valueŘBŐ BÎ{"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_3", "trainable": true, "units": 2, "use_bias": true}}*
dtype0*
_output_shapes
: 
Ä
save_1/SaveV2/tensors_222Const*ú
valueđBí Bć{"class_name": "DepthwiseConv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "depth_multiplier": 1, "depthwise_constraint": null, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "depthwise_regularizer": null, "dilation_rate": [1, 1], "dtype": "float32", "kernel_size": [3, 3], "name": "conv_dw_2", "padding": "valid", "strides": [2, 2], "trainable": false, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_224Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_dw_2_bn", "scale": true, "trainable": false}}*
dtype0*
_output_shapes
: 
Ş
save_1/SaveV2/tensors_229Const*ŕ
valueÖBÓ BĚ{"class_name": "Conv2D", "config": {"activation": "linear", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "data_format": "channels_last", "dilation_rate": [1, 1], "dtype": "float32", "filters": 128, "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "kernel_size": [1, 1], "name": "conv_pw_2", "padding": "same", "strides": [1, 1], "trainable": false, "use_bias": false}}*
dtype0*
_output_shapes
: 
Ë
save_1/SaveV2/tensors_231Const*
value÷Bô Bí{"class_name": "BatchNormalization", "config": {"axis": [3], "beta_constraint": null, "beta_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "beta_regularizer": null, "center": true, "dtype": "float32", "epsilon": 0.001, "gamma_constraint": null, "gamma_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "gamma_regularizer": null, "momentum": 0.99, "moving_mean_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "moving_variance_initializer": {"class_name": "Ones", "config": {"dtype": "float32"}}, "name": "conv_pw_2_bn", "scale": true, "trainable": false}}*
dtype0*
_output_shapes
: 
F
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicessave_1/SaveV2/tensors_0save_1/SaveV2/tensors_1save_1/SaveV2/tensors_2save_1/SaveV2/tensors_3save_1/SaveV2/tensors_4save_1/SaveV2/tensors_5save_1/SaveV2/tensors_6save_1/SaveV2/tensors_7save_1/SaveV2/tensors_8save_1/SaveV2/tensors_9save_1/SaveV2/tensors_10save_1/SaveV2/tensors_11save_1/SaveV2/tensors_12save_1/SaveV2/tensors_13save_1/SaveV2/tensors_14save_1/SaveV2/tensors_15save_1/SaveV2/tensors_16save_1/SaveV2/tensors_17save_1/SaveV2/tensors_18save_1/SaveV2/tensors_19save_1/SaveV2/tensors_20save_1/SaveV2/tensors_21save_1/SaveV2/tensors_22save_1/SaveV2/tensors_23save_1/SaveV2/tensors_24save_1/SaveV2/tensors_25save_1/SaveV2/tensors_26save_1/SaveV2/tensors_27save_1/SaveV2/tensors_28save_1/SaveV2/tensors_29save_1/SaveV2/tensors_30save_1/SaveV2/tensors_31save_1/SaveV2/tensors_32save_1/SaveV2/tensors_33save_1/SaveV2/tensors_34save_1/SaveV2/tensors_35 conv1/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_37!conv1_bn/beta/Read/ReadVariableOp"conv1_bn/gamma/Read/ReadVariableOp(conv1_bn/moving_mean/Read/ReadVariableOp,conv1_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_42.conv_dw_3/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_44%conv_dw_3_bn/beta/Read/ReadVariableOp&conv_dw_3_bn/gamma/Read/ReadVariableOp,conv_dw_3_bn/moving_mean/Read/ReadVariableOp0conv_dw_3_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_49$conv_pw_3/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_51%conv_pw_3_bn/beta/Read/ReadVariableOp&conv_pw_3_bn/gamma/Read/ReadVariableOp,conv_pw_3_bn/moving_mean/Read/ReadVariableOp0conv_pw_3_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_56.conv_dw_4/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_58%conv_dw_4_bn/beta/Read/ReadVariableOp&conv_dw_4_bn/gamma/Read/ReadVariableOp,conv_dw_4_bn/moving_mean/Read/ReadVariableOp0conv_dw_4_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_63$conv_pw_4/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_65%conv_pw_4_bn/beta/Read/ReadVariableOp&conv_pw_4_bn/gamma/Read/ReadVariableOp,conv_pw_4_bn/moving_mean/Read/ReadVariableOp0conv_pw_4_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_70.conv_dw_5/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_72%conv_dw_5_bn/beta/Read/ReadVariableOp&conv_dw_5_bn/gamma/Read/ReadVariableOp,conv_dw_5_bn/moving_mean/Read/ReadVariableOp0conv_dw_5_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_77.conv_dw_1/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_79$conv_pw_5/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_81%conv_pw_5_bn/beta/Read/ReadVariableOp&conv_pw_5_bn/gamma/Read/ReadVariableOp,conv_pw_5_bn/moving_mean/Read/ReadVariableOp0conv_pw_5_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_86.conv_dw_6/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_88%conv_dw_6_bn/beta/Read/ReadVariableOp&conv_dw_6_bn/gamma/Read/ReadVariableOp,conv_dw_6_bn/moving_mean/Read/ReadVariableOp0conv_dw_6_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_93$conv_pw_6/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_95%conv_pw_6_bn/beta/Read/ReadVariableOp&conv_pw_6_bn/gamma/Read/ReadVariableOp,conv_pw_6_bn/moving_mean/Read/ReadVariableOp0conv_pw_6_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_100.conv_dw_7/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_102%conv_dw_7_bn/beta/Read/ReadVariableOp&conv_dw_7_bn/gamma/Read/ReadVariableOp,conv_dw_7_bn/moving_mean/Read/ReadVariableOp0conv_dw_7_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_107$conv_pw_7/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_109%conv_pw_7_bn/beta/Read/ReadVariableOp&conv_pw_7_bn/gamma/Read/ReadVariableOp,conv_pw_7_bn/moving_mean/Read/ReadVariableOp0conv_pw_7_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_114%conv_dw_1_bn/beta/Read/ReadVariableOp&conv_dw_1_bn/gamma/Read/ReadVariableOp,conv_dw_1_bn/moving_mean/Read/ReadVariableOp0conv_dw_1_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_119.conv_dw_8/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_121%conv_dw_8_bn/beta/Read/ReadVariableOp&conv_dw_8_bn/gamma/Read/ReadVariableOp,conv_dw_8_bn/moving_mean/Read/ReadVariableOp0conv_dw_8_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_126$conv_pw_8/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_128%conv_pw_8_bn/beta/Read/ReadVariableOp&conv_pw_8_bn/gamma/Read/ReadVariableOp,conv_pw_8_bn/moving_mean/Read/ReadVariableOp0conv_pw_8_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_133.conv_dw_9/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_135%conv_dw_9_bn/beta/Read/ReadVariableOp&conv_dw_9_bn/gamma/Read/ReadVariableOp,conv_dw_9_bn/moving_mean/Read/ReadVariableOp0conv_dw_9_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_140$conv_pw_9/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_142%conv_pw_9_bn/beta/Read/ReadVariableOp&conv_pw_9_bn/gamma/Read/ReadVariableOp,conv_pw_9_bn/moving_mean/Read/ReadVariableOp0conv_pw_9_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_147/conv_dw_10/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_149&conv_dw_10_bn/beta/Read/ReadVariableOp'conv_dw_10_bn/gamma/Read/ReadVariableOp-conv_dw_10_bn/moving_mean/Read/ReadVariableOp1conv_dw_10_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_154$conv_pw_1/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_156%conv_pw_10/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_158&conv_pw_10_bn/beta/Read/ReadVariableOp'conv_pw_10_bn/gamma/Read/ReadVariableOp-conv_pw_10_bn/moving_mean/Read/ReadVariableOp1conv_pw_10_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_163/conv_dw_11/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_165&conv_dw_11_bn/beta/Read/ReadVariableOp'conv_dw_11_bn/gamma/Read/ReadVariableOp-conv_dw_11_bn/moving_mean/Read/ReadVariableOp1conv_dw_11_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_170%conv_pw_11/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_172&conv_pw_11_bn/beta/Read/ReadVariableOp'conv_pw_11_bn/gamma/Read/ReadVariableOp-conv_pw_11_bn/moving_mean/Read/ReadVariableOp1conv_pw_11_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_177/conv_dw_12/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_179&conv_dw_12_bn/beta/Read/ReadVariableOp'conv_dw_12_bn/gamma/Read/ReadVariableOp-conv_dw_12_bn/moving_mean/Read/ReadVariableOp1conv_dw_12_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_184%conv_pw_12/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_186&conv_pw_12_bn/beta/Read/ReadVariableOp'conv_pw_12_bn/gamma/Read/ReadVariableOp-conv_pw_12_bn/moving_mean/Read/ReadVariableOp1conv_pw_12_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_191%conv_pw_1_bn/beta/Read/ReadVariableOp&conv_pw_1_bn/gamma/Read/ReadVariableOp,conv_pw_1_bn/moving_mean/Read/ReadVariableOp0conv_pw_1_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_196/conv_dw_13/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_198&conv_dw_13_bn/beta/Read/ReadVariableOp'conv_dw_13_bn/gamma/Read/ReadVariableOp-conv_dw_13_bn/moving_mean/Read/ReadVariableOp1conv_dw_13_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_203%conv_pw_13/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_205&conv_pw_13_bn/beta/Read/ReadVariableOp'conv_pw_13_bn/gamma/Read/ReadVariableOp-conv_pw_13_bn/moving_mean/Read/ReadVariableOp1conv_pw_13_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_210dense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_213 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_216 dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_219 dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_222.conv_dw_2/depthwise_kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_224%conv_dw_2_bn/beta/Read/ReadVariableOp&conv_dw_2_bn/gamma/Read/ReadVariableOp,conv_dw_2_bn/moving_mean/Read/ReadVariableOp0conv_dw_2_bn/moving_variance/Read/ReadVariableOpsave_1/SaveV2/tensors_229$conv_pw_2/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_231%conv_pw_2_bn/beta/Read/ReadVariableOp&conv_pw_2_bn/gamma/Read/ReadVariableOp,conv_pw_2_bn/moving_mean/Read/ReadVariableOp0conv_pw_2_bn/moving_variance/Read/ReadVariableOp*ý
dtypesň
ď2ě

save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
g
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*¸f
valueŽfBŤfěB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-10/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-14/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-30/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-46/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-58/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-61/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-64/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-67/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-70/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-73/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-74/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-77/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-80/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-83/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-86/.ATTRIBUTES/OBJECT_CONFIG_JSONB'layer-87/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-10/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-11/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-12/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-13/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-14/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-15/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-16/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-17/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-18/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-19/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-20/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-21/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-21/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-22/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-22/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-23/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-23/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-24/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-25/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-25/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-26/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-26/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-27/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-27/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-28/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-29/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-29/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-3/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-30/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-30/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-31/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-31/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-31/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-31/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-31/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-32/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-33/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-33/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-33/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-33/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-33/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-34/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-34/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-35/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-35/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-35/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-35/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-35/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-36/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-37/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-37/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-37/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-37/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-37/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-38/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-38/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-39/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-39/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-39/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-39/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-39/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-40/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-40/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-41/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-41/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-41/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-41/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-41/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-42/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-42/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-43/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-43/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-43/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-43/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-43/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-44/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-44/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-45/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-45/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-45/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-45/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-45/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-46/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-46/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-47/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-47/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-47/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-47/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-47/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-48/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-48/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-49/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-49/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-49/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-49/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-49/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-5/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-50/.ATTRIBUTES/OBJECT_CONFIG_JSONBAlayer_with_weights-50/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-51/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-51/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-51/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-51/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-51/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-52/.ATTRIBUTES/OBJECT_CONFIG_JSONB7layer_with_weights-52/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-53/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-53/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-53/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-53/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-53/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-54/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-54/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-54/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-55/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-55/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-55/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-56/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-56/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-56/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-57/.ATTRIBUTES/OBJECT_CONFIG_JSONB5layer_with_weights-57/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-57/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-6/.ATTRIBUTES/OBJECT_CONFIG_JSONB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-7/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-8/.ATTRIBUTES/OBJECT_CONFIG_JSONB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-9/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes	
:ě
Ô
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*î
valueäBáěB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:ě
Ĺ

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*Ć
_output_shapesł
°::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*ý
dtypesň
ď2ě

save_1/NoOpNoOp

save_1/NoOp_1NoOp

save_1/NoOp_2NoOp

save_1/NoOp_3NoOp

save_1/NoOp_4NoOp

save_1/NoOp_5NoOp

save_1/NoOp_6NoOp

save_1/NoOp_7NoOp

save_1/NoOp_8NoOp

save_1/NoOp_9NoOp

save_1/NoOp_10NoOp

save_1/NoOp_11NoOp

save_1/NoOp_12NoOp

save_1/NoOp_13NoOp

save_1/NoOp_14NoOp

save_1/NoOp_15NoOp

save_1/NoOp_16NoOp

save_1/NoOp_17NoOp

save_1/NoOp_18NoOp

save_1/NoOp_19NoOp

save_1/NoOp_20NoOp

save_1/NoOp_21NoOp

save_1/NoOp_22NoOp

save_1/NoOp_23NoOp

save_1/NoOp_24NoOp

save_1/NoOp_25NoOp

save_1/NoOp_26NoOp

save_1/NoOp_27NoOp

save_1/NoOp_28NoOp

save_1/NoOp_29NoOp

save_1/NoOp_30NoOp

save_1/NoOp_31NoOp

save_1/NoOp_32NoOp

save_1/NoOp_33NoOp

save_1/NoOp_34NoOp

save_1/NoOp_35NoOp
S
save_1/IdentityIdentitysave_1/RestoreV2:36*
_output_shapes
:*
T0
W
save_1/AssignVariableOpAssignVariableOpconv1/kernelsave_1/Identity*
dtype0

save_1/NoOp_36NoOp
U
save_1/Identity_1Identitysave_1/RestoreV2:38*
_output_shapes
:*
T0
\
save_1/AssignVariableOp_1AssignVariableOpconv1_bn/betasave_1/Identity_1*
dtype0
U
save_1/Identity_2Identitysave_1/RestoreV2:39*
_output_shapes
:*
T0
]
save_1/AssignVariableOp_2AssignVariableOpconv1_bn/gammasave_1/Identity_2*
dtype0
U
save_1/Identity_3Identitysave_1/RestoreV2:40*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_3AssignVariableOpconv1_bn/moving_meansave_1/Identity_3*
dtype0
U
save_1/Identity_4Identitysave_1/RestoreV2:41*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_4AssignVariableOpconv1_bn/moving_variancesave_1/Identity_4*
dtype0

save_1/NoOp_37NoOp
U
save_1/Identity_5Identitysave_1/RestoreV2:43*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_5AssignVariableOpconv_dw_3/depthwise_kernelsave_1/Identity_5*
dtype0

save_1/NoOp_38NoOp
U
save_1/Identity_6Identitysave_1/RestoreV2:45*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_6AssignVariableOpconv_dw_3_bn/betasave_1/Identity_6*
dtype0
U
save_1/Identity_7Identitysave_1/RestoreV2:46*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_7AssignVariableOpconv_dw_3_bn/gammasave_1/Identity_7*
dtype0
U
save_1/Identity_8Identitysave_1/RestoreV2:47*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_8AssignVariableOpconv_dw_3_bn/moving_meansave_1/Identity_8*
dtype0
U
save_1/Identity_9Identitysave_1/RestoreV2:48*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_9AssignVariableOpconv_dw_3_bn/moving_variancesave_1/Identity_9*
dtype0

save_1/NoOp_39NoOp
V
save_1/Identity_10Identitysave_1/RestoreV2:50*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_10AssignVariableOpconv_pw_3/kernelsave_1/Identity_10*
dtype0

save_1/NoOp_40NoOp
V
save_1/Identity_11Identitysave_1/RestoreV2:52*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_11AssignVariableOpconv_pw_3_bn/betasave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:53*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_12AssignVariableOpconv_pw_3_bn/gammasave_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:54*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_13AssignVariableOpconv_pw_3_bn/moving_meansave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:55*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_14AssignVariableOpconv_pw_3_bn/moving_variancesave_1/Identity_14*
dtype0

save_1/NoOp_41NoOp
V
save_1/Identity_15Identitysave_1/RestoreV2:57*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_15AssignVariableOpconv_dw_4/depthwise_kernelsave_1/Identity_15*
dtype0

save_1/NoOp_42NoOp
V
save_1/Identity_16Identitysave_1/RestoreV2:59*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_16AssignVariableOpconv_dw_4_bn/betasave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:60*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_17AssignVariableOpconv_dw_4_bn/gammasave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:61*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_18AssignVariableOpconv_dw_4_bn/moving_meansave_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:62*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_19AssignVariableOpconv_dw_4_bn/moving_variancesave_1/Identity_19*
dtype0

save_1/NoOp_43NoOp
V
save_1/Identity_20Identitysave_1/RestoreV2:64*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_20AssignVariableOpconv_pw_4/kernelsave_1/Identity_20*
dtype0

save_1/NoOp_44NoOp
V
save_1/Identity_21Identitysave_1/RestoreV2:66*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_21AssignVariableOpconv_pw_4_bn/betasave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:67*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_22AssignVariableOpconv_pw_4_bn/gammasave_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:68*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_23AssignVariableOpconv_pw_4_bn/moving_meansave_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:69*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_24AssignVariableOpconv_pw_4_bn/moving_variancesave_1/Identity_24*
dtype0

save_1/NoOp_45NoOp
V
save_1/Identity_25Identitysave_1/RestoreV2:71*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_25AssignVariableOpconv_dw_5/depthwise_kernelsave_1/Identity_25*
dtype0

save_1/NoOp_46NoOp
V
save_1/Identity_26Identitysave_1/RestoreV2:73*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_26AssignVariableOpconv_dw_5_bn/betasave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:74*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_27AssignVariableOpconv_dw_5_bn/gammasave_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:75*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_28AssignVariableOpconv_dw_5_bn/moving_meansave_1/Identity_28*
dtype0
V
save_1/Identity_29Identitysave_1/RestoreV2:76*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_29AssignVariableOpconv_dw_5_bn/moving_variancesave_1/Identity_29*
dtype0

save_1/NoOp_47NoOp
V
save_1/Identity_30Identitysave_1/RestoreV2:78*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_30AssignVariableOpconv_dw_1/depthwise_kernelsave_1/Identity_30*
dtype0

save_1/NoOp_48NoOp
V
save_1/Identity_31Identitysave_1/RestoreV2:80*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_31AssignVariableOpconv_pw_5/kernelsave_1/Identity_31*
dtype0

save_1/NoOp_49NoOp
V
save_1/Identity_32Identitysave_1/RestoreV2:82*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_32AssignVariableOpconv_pw_5_bn/betasave_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:83*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_33AssignVariableOpconv_pw_5_bn/gammasave_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:84*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_34AssignVariableOpconv_pw_5_bn/moving_meansave_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:85*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_35AssignVariableOpconv_pw_5_bn/moving_variancesave_1/Identity_35*
dtype0

save_1/NoOp_50NoOp
V
save_1/Identity_36Identitysave_1/RestoreV2:87*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_36AssignVariableOpconv_dw_6/depthwise_kernelsave_1/Identity_36*
dtype0

save_1/NoOp_51NoOp
V
save_1/Identity_37Identitysave_1/RestoreV2:89*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_37AssignVariableOpconv_dw_6_bn/betasave_1/Identity_37*
dtype0
V
save_1/Identity_38Identitysave_1/RestoreV2:90*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_38AssignVariableOpconv_dw_6_bn/gammasave_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:91*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_39AssignVariableOpconv_dw_6_bn/moving_meansave_1/Identity_39*
dtype0
V
save_1/Identity_40Identitysave_1/RestoreV2:92*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_40AssignVariableOpconv_dw_6_bn/moving_variancesave_1/Identity_40*
dtype0

save_1/NoOp_52NoOp
V
save_1/Identity_41Identitysave_1/RestoreV2:94*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_41AssignVariableOpconv_pw_6/kernelsave_1/Identity_41*
dtype0

save_1/NoOp_53NoOp
V
save_1/Identity_42Identitysave_1/RestoreV2:96*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_42AssignVariableOpconv_pw_6_bn/betasave_1/Identity_42*
dtype0
V
save_1/Identity_43Identitysave_1/RestoreV2:97*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_43AssignVariableOpconv_pw_6_bn/gammasave_1/Identity_43*
dtype0
V
save_1/Identity_44Identitysave_1/RestoreV2:98*
_output_shapes
:*
T0
i
save_1/AssignVariableOp_44AssignVariableOpconv_pw_6_bn/moving_meansave_1/Identity_44*
dtype0
V
save_1/Identity_45Identitysave_1/RestoreV2:99*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_45AssignVariableOpconv_pw_6_bn/moving_variancesave_1/Identity_45*
dtype0

save_1/NoOp_54NoOp
W
save_1/Identity_46Identitysave_1/RestoreV2:101*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_46AssignVariableOpconv_dw_7/depthwise_kernelsave_1/Identity_46*
dtype0

save_1/NoOp_55NoOp
W
save_1/Identity_47Identitysave_1/RestoreV2:103*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_47AssignVariableOpconv_dw_7_bn/betasave_1/Identity_47*
dtype0
W
save_1/Identity_48Identitysave_1/RestoreV2:104*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_48AssignVariableOpconv_dw_7_bn/gammasave_1/Identity_48*
dtype0
W
save_1/Identity_49Identitysave_1/RestoreV2:105*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_49AssignVariableOpconv_dw_7_bn/moving_meansave_1/Identity_49*
dtype0
W
save_1/Identity_50Identitysave_1/RestoreV2:106*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_50AssignVariableOpconv_dw_7_bn/moving_variancesave_1/Identity_50*
dtype0

save_1/NoOp_56NoOp
W
save_1/Identity_51Identitysave_1/RestoreV2:108*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_51AssignVariableOpconv_pw_7/kernelsave_1/Identity_51*
dtype0

save_1/NoOp_57NoOp
W
save_1/Identity_52Identitysave_1/RestoreV2:110*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_52AssignVariableOpconv_pw_7_bn/betasave_1/Identity_52*
dtype0
W
save_1/Identity_53Identitysave_1/RestoreV2:111*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_53AssignVariableOpconv_pw_7_bn/gammasave_1/Identity_53*
dtype0
W
save_1/Identity_54Identitysave_1/RestoreV2:112*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_54AssignVariableOpconv_pw_7_bn/moving_meansave_1/Identity_54*
dtype0
W
save_1/Identity_55Identitysave_1/RestoreV2:113*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_55AssignVariableOpconv_pw_7_bn/moving_variancesave_1/Identity_55*
dtype0

save_1/NoOp_58NoOp
W
save_1/Identity_56Identitysave_1/RestoreV2:115*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_56AssignVariableOpconv_dw_1_bn/betasave_1/Identity_56*
dtype0
W
save_1/Identity_57Identitysave_1/RestoreV2:116*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_57AssignVariableOpconv_dw_1_bn/gammasave_1/Identity_57*
dtype0
W
save_1/Identity_58Identitysave_1/RestoreV2:117*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_58AssignVariableOpconv_dw_1_bn/moving_meansave_1/Identity_58*
dtype0
W
save_1/Identity_59Identitysave_1/RestoreV2:118*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_59AssignVariableOpconv_dw_1_bn/moving_variancesave_1/Identity_59*
dtype0

save_1/NoOp_59NoOp
W
save_1/Identity_60Identitysave_1/RestoreV2:120*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_60AssignVariableOpconv_dw_8/depthwise_kernelsave_1/Identity_60*
dtype0

save_1/NoOp_60NoOp
W
save_1/Identity_61Identitysave_1/RestoreV2:122*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_61AssignVariableOpconv_dw_8_bn/betasave_1/Identity_61*
dtype0
W
save_1/Identity_62Identitysave_1/RestoreV2:123*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_62AssignVariableOpconv_dw_8_bn/gammasave_1/Identity_62*
dtype0
W
save_1/Identity_63Identitysave_1/RestoreV2:124*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_63AssignVariableOpconv_dw_8_bn/moving_meansave_1/Identity_63*
dtype0
W
save_1/Identity_64Identitysave_1/RestoreV2:125*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_64AssignVariableOpconv_dw_8_bn/moving_variancesave_1/Identity_64*
dtype0

save_1/NoOp_61NoOp
W
save_1/Identity_65Identitysave_1/RestoreV2:127*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_65AssignVariableOpconv_pw_8/kernelsave_1/Identity_65*
dtype0

save_1/NoOp_62NoOp
W
save_1/Identity_66Identitysave_1/RestoreV2:129*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_66AssignVariableOpconv_pw_8_bn/betasave_1/Identity_66*
dtype0
W
save_1/Identity_67Identitysave_1/RestoreV2:130*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_67AssignVariableOpconv_pw_8_bn/gammasave_1/Identity_67*
dtype0
W
save_1/Identity_68Identitysave_1/RestoreV2:131*
_output_shapes
:*
T0
i
save_1/AssignVariableOp_68AssignVariableOpconv_pw_8_bn/moving_meansave_1/Identity_68*
dtype0
W
save_1/Identity_69Identitysave_1/RestoreV2:132*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_69AssignVariableOpconv_pw_8_bn/moving_variancesave_1/Identity_69*
dtype0

save_1/NoOp_63NoOp
W
save_1/Identity_70Identitysave_1/RestoreV2:134*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_70AssignVariableOpconv_dw_9/depthwise_kernelsave_1/Identity_70*
dtype0

save_1/NoOp_64NoOp
W
save_1/Identity_71Identitysave_1/RestoreV2:136*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_71AssignVariableOpconv_dw_9_bn/betasave_1/Identity_71*
dtype0
W
save_1/Identity_72Identitysave_1/RestoreV2:137*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_72AssignVariableOpconv_dw_9_bn/gammasave_1/Identity_72*
dtype0
W
save_1/Identity_73Identitysave_1/RestoreV2:138*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_73AssignVariableOpconv_dw_9_bn/moving_meansave_1/Identity_73*
dtype0
W
save_1/Identity_74Identitysave_1/RestoreV2:139*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_74AssignVariableOpconv_dw_9_bn/moving_variancesave_1/Identity_74*
dtype0

save_1/NoOp_65NoOp
W
save_1/Identity_75Identitysave_1/RestoreV2:141*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_75AssignVariableOpconv_pw_9/kernelsave_1/Identity_75*
dtype0

save_1/NoOp_66NoOp
W
save_1/Identity_76Identitysave_1/RestoreV2:143*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_76AssignVariableOpconv_pw_9_bn/betasave_1/Identity_76*
dtype0
W
save_1/Identity_77Identitysave_1/RestoreV2:144*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_77AssignVariableOpconv_pw_9_bn/gammasave_1/Identity_77*
dtype0
W
save_1/Identity_78Identitysave_1/RestoreV2:145*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_78AssignVariableOpconv_pw_9_bn/moving_meansave_1/Identity_78*
dtype0
W
save_1/Identity_79Identitysave_1/RestoreV2:146*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_79AssignVariableOpconv_pw_9_bn/moving_variancesave_1/Identity_79*
dtype0

save_1/NoOp_67NoOp
W
save_1/Identity_80Identitysave_1/RestoreV2:148*
_output_shapes
:*
T0
l
save_1/AssignVariableOp_80AssignVariableOpconv_dw_10/depthwise_kernelsave_1/Identity_80*
dtype0

save_1/NoOp_68NoOp
W
save_1/Identity_81Identitysave_1/RestoreV2:150*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_81AssignVariableOpconv_dw_10_bn/betasave_1/Identity_81*
dtype0
W
save_1/Identity_82Identitysave_1/RestoreV2:151*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_82AssignVariableOpconv_dw_10_bn/gammasave_1/Identity_82*
dtype0
W
save_1/Identity_83Identitysave_1/RestoreV2:152*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_83AssignVariableOpconv_dw_10_bn/moving_meansave_1/Identity_83*
dtype0
W
save_1/Identity_84Identitysave_1/RestoreV2:153*
_output_shapes
:*
T0
n
save_1/AssignVariableOp_84AssignVariableOpconv_dw_10_bn/moving_variancesave_1/Identity_84*
dtype0

save_1/NoOp_69NoOp
W
save_1/Identity_85Identitysave_1/RestoreV2:155*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_85AssignVariableOpconv_pw_1/kernelsave_1/Identity_85*
dtype0

save_1/NoOp_70NoOp
W
save_1/Identity_86Identitysave_1/RestoreV2:157*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_86AssignVariableOpconv_pw_10/kernelsave_1/Identity_86*
dtype0

save_1/NoOp_71NoOp
W
save_1/Identity_87Identitysave_1/RestoreV2:159*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_87AssignVariableOpconv_pw_10_bn/betasave_1/Identity_87*
dtype0
W
save_1/Identity_88Identitysave_1/RestoreV2:160*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_88AssignVariableOpconv_pw_10_bn/gammasave_1/Identity_88*
dtype0
W
save_1/Identity_89Identitysave_1/RestoreV2:161*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_89AssignVariableOpconv_pw_10_bn/moving_meansave_1/Identity_89*
dtype0
W
save_1/Identity_90Identitysave_1/RestoreV2:162*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_90AssignVariableOpconv_pw_10_bn/moving_variancesave_1/Identity_90*
dtype0

save_1/NoOp_72NoOp
W
save_1/Identity_91Identitysave_1/RestoreV2:164*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_91AssignVariableOpconv_dw_11/depthwise_kernelsave_1/Identity_91*
dtype0

save_1/NoOp_73NoOp
W
save_1/Identity_92Identitysave_1/RestoreV2:166*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_92AssignVariableOpconv_dw_11_bn/betasave_1/Identity_92*
dtype0
W
save_1/Identity_93Identitysave_1/RestoreV2:167*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_93AssignVariableOpconv_dw_11_bn/gammasave_1/Identity_93*
dtype0
W
save_1/Identity_94Identitysave_1/RestoreV2:168*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_94AssignVariableOpconv_dw_11_bn/moving_meansave_1/Identity_94*
dtype0
W
save_1/Identity_95Identitysave_1/RestoreV2:169*
_output_shapes
:*
T0
n
save_1/AssignVariableOp_95AssignVariableOpconv_dw_11_bn/moving_variancesave_1/Identity_95*
dtype0

save_1/NoOp_74NoOp
W
save_1/Identity_96Identitysave_1/RestoreV2:171*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_96AssignVariableOpconv_pw_11/kernelsave_1/Identity_96*
dtype0

save_1/NoOp_75NoOp
W
save_1/Identity_97Identitysave_1/RestoreV2:173*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_97AssignVariableOpconv_pw_11_bn/betasave_1/Identity_97*
dtype0
W
save_1/Identity_98Identitysave_1/RestoreV2:174*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_98AssignVariableOpconv_pw_11_bn/gammasave_1/Identity_98*
dtype0
W
save_1/Identity_99Identitysave_1/RestoreV2:175*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_99AssignVariableOpconv_pw_11_bn/moving_meansave_1/Identity_99*
dtype0
X
save_1/Identity_100Identitysave_1/RestoreV2:176*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_100AssignVariableOpconv_pw_11_bn/moving_variancesave_1/Identity_100*
dtype0

save_1/NoOp_76NoOp
X
save_1/Identity_101Identitysave_1/RestoreV2:178*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_101AssignVariableOpconv_dw_12/depthwise_kernelsave_1/Identity_101*
dtype0

save_1/NoOp_77NoOp
X
save_1/Identity_102Identitysave_1/RestoreV2:180*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_102AssignVariableOpconv_dw_12_bn/betasave_1/Identity_102*
dtype0
X
save_1/Identity_103Identitysave_1/RestoreV2:181*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_103AssignVariableOpconv_dw_12_bn/gammasave_1/Identity_103*
dtype0
X
save_1/Identity_104Identitysave_1/RestoreV2:182*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_104AssignVariableOpconv_dw_12_bn/moving_meansave_1/Identity_104*
dtype0
X
save_1/Identity_105Identitysave_1/RestoreV2:183*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_105AssignVariableOpconv_dw_12_bn/moving_variancesave_1/Identity_105*
dtype0

save_1/NoOp_78NoOp
X
save_1/Identity_106Identitysave_1/RestoreV2:185*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_106AssignVariableOpconv_pw_12/kernelsave_1/Identity_106*
dtype0

save_1/NoOp_79NoOp
X
save_1/Identity_107Identitysave_1/RestoreV2:187*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_107AssignVariableOpconv_pw_12_bn/betasave_1/Identity_107*
dtype0
X
save_1/Identity_108Identitysave_1/RestoreV2:188*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_108AssignVariableOpconv_pw_12_bn/gammasave_1/Identity_108*
dtype0
X
save_1/Identity_109Identitysave_1/RestoreV2:189*
_output_shapes
:*
T0
l
save_1/AssignVariableOp_109AssignVariableOpconv_pw_12_bn/moving_meansave_1/Identity_109*
dtype0
X
save_1/Identity_110Identitysave_1/RestoreV2:190*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_110AssignVariableOpconv_pw_12_bn/moving_variancesave_1/Identity_110*
dtype0

save_1/NoOp_80NoOp
X
save_1/Identity_111Identitysave_1/RestoreV2:192*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_111AssignVariableOpconv_pw_1_bn/betasave_1/Identity_111*
dtype0
X
save_1/Identity_112Identitysave_1/RestoreV2:193*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_112AssignVariableOpconv_pw_1_bn/gammasave_1/Identity_112*
dtype0
X
save_1/Identity_113Identitysave_1/RestoreV2:194*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_113AssignVariableOpconv_pw_1_bn/moving_meansave_1/Identity_113*
dtype0
X
save_1/Identity_114Identitysave_1/RestoreV2:195*
_output_shapes
:*
T0
o
save_1/AssignVariableOp_114AssignVariableOpconv_pw_1_bn/moving_variancesave_1/Identity_114*
dtype0

save_1/NoOp_81NoOp
X
save_1/Identity_115Identitysave_1/RestoreV2:197*
_output_shapes
:*
T0
n
save_1/AssignVariableOp_115AssignVariableOpconv_dw_13/depthwise_kernelsave_1/Identity_115*
dtype0

save_1/NoOp_82NoOp
X
save_1/Identity_116Identitysave_1/RestoreV2:199*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_116AssignVariableOpconv_dw_13_bn/betasave_1/Identity_116*
dtype0
X
save_1/Identity_117Identitysave_1/RestoreV2:200*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_117AssignVariableOpconv_dw_13_bn/gammasave_1/Identity_117*
dtype0
X
save_1/Identity_118Identitysave_1/RestoreV2:201*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_118AssignVariableOpconv_dw_13_bn/moving_meansave_1/Identity_118*
dtype0
X
save_1/Identity_119Identitysave_1/RestoreV2:202*
_output_shapes
:*
T0
p
save_1/AssignVariableOp_119AssignVariableOpconv_dw_13_bn/moving_variancesave_1/Identity_119*
dtype0

save_1/NoOp_83NoOp
X
save_1/Identity_120Identitysave_1/RestoreV2:204*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_120AssignVariableOpconv_pw_13/kernelsave_1/Identity_120*
dtype0

save_1/NoOp_84NoOp
X
save_1/Identity_121Identitysave_1/RestoreV2:206*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_121AssignVariableOpconv_pw_13_bn/betasave_1/Identity_121*
dtype0
X
save_1/Identity_122Identitysave_1/RestoreV2:207*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_122AssignVariableOpconv_pw_13_bn/gammasave_1/Identity_122*
dtype0
X
save_1/Identity_123Identitysave_1/RestoreV2:208*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_123AssignVariableOpconv_pw_13_bn/moving_meansave_1/Identity_123*
dtype0
X
save_1/Identity_124Identitysave_1/RestoreV2:209*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_124AssignVariableOpconv_pw_13_bn/moving_variancesave_1/Identity_124*
dtype0

save_1/NoOp_85NoOp
X
save_1/Identity_125Identitysave_1/RestoreV2:211*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_125AssignVariableOp
dense/biassave_1/Identity_125*
dtype0
X
save_1/Identity_126Identitysave_1/RestoreV2:212*
_output_shapes
:*
T0
_
save_1/AssignVariableOp_126AssignVariableOpdense/kernelsave_1/Identity_126*
dtype0

save_1/NoOp_86NoOp
X
save_1/Identity_127Identitysave_1/RestoreV2:214*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_127AssignVariableOpdense_1/biassave_1/Identity_127*
dtype0
X
save_1/Identity_128Identitysave_1/RestoreV2:215*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_128AssignVariableOpdense_1/kernelsave_1/Identity_128*
dtype0

save_1/NoOp_87NoOp
X
save_1/Identity_129Identitysave_1/RestoreV2:217*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_129AssignVariableOpdense_2/biassave_1/Identity_129*
dtype0
X
save_1/Identity_130Identitysave_1/RestoreV2:218*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_130AssignVariableOpdense_2/kernelsave_1/Identity_130*
dtype0

save_1/NoOp_88NoOp
X
save_1/Identity_131Identitysave_1/RestoreV2:220*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_131AssignVariableOpdense_3/biassave_1/Identity_131*
dtype0
X
save_1/Identity_132Identitysave_1/RestoreV2:221*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_132AssignVariableOpdense_3/kernelsave_1/Identity_132*
dtype0

save_1/NoOp_89NoOp
X
save_1/Identity_133Identitysave_1/RestoreV2:223*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_133AssignVariableOpconv_dw_2/depthwise_kernelsave_1/Identity_133*
dtype0

save_1/NoOp_90NoOp
X
save_1/Identity_134Identitysave_1/RestoreV2:225*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_134AssignVariableOpconv_dw_2_bn/betasave_1/Identity_134*
dtype0
X
save_1/Identity_135Identitysave_1/RestoreV2:226*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_135AssignVariableOpconv_dw_2_bn/gammasave_1/Identity_135*
dtype0
X
save_1/Identity_136Identitysave_1/RestoreV2:227*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_136AssignVariableOpconv_dw_2_bn/moving_meansave_1/Identity_136*
dtype0
X
save_1/Identity_137Identitysave_1/RestoreV2:228*
_output_shapes
:*
T0
o
save_1/AssignVariableOp_137AssignVariableOpconv_dw_2_bn/moving_variancesave_1/Identity_137*
dtype0

save_1/NoOp_91NoOp
X
save_1/Identity_138Identitysave_1/RestoreV2:230*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_138AssignVariableOpconv_pw_2/kernelsave_1/Identity_138*
dtype0

save_1/NoOp_92NoOp
X
save_1/Identity_139Identitysave_1/RestoreV2:232*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_139AssignVariableOpconv_pw_2_bn/betasave_1/Identity_139*
dtype0
X
save_1/Identity_140Identitysave_1/RestoreV2:233*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_140AssignVariableOpconv_pw_2_bn/gammasave_1/Identity_140*
dtype0
X
save_1/Identity_141Identitysave_1/RestoreV2:234*
_output_shapes
:*
T0
k
save_1/AssignVariableOp_141AssignVariableOpconv_pw_2_bn/moving_meansave_1/Identity_141*
dtype0
X
save_1/Identity_142Identitysave_1/RestoreV2:235*
_output_shapes
:*
T0
o
save_1/AssignVariableOp_142AssignVariableOpconv_pw_2_bn/moving_variancesave_1/Identity_142*
dtype0
-
save_1/restore_allNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_100^save_1/AssignVariableOp_101^save_1/AssignVariableOp_102^save_1/AssignVariableOp_103^save_1/AssignVariableOp_104^save_1/AssignVariableOp_105^save_1/AssignVariableOp_106^save_1/AssignVariableOp_107^save_1/AssignVariableOp_108^save_1/AssignVariableOp_109^save_1/AssignVariableOp_11^save_1/AssignVariableOp_110^save_1/AssignVariableOp_111^save_1/AssignVariableOp_112^save_1/AssignVariableOp_113^save_1/AssignVariableOp_114^save_1/AssignVariableOp_115^save_1/AssignVariableOp_116^save_1/AssignVariableOp_117^save_1/AssignVariableOp_118^save_1/AssignVariableOp_119^save_1/AssignVariableOp_12^save_1/AssignVariableOp_120^save_1/AssignVariableOp_121^save_1/AssignVariableOp_122^save_1/AssignVariableOp_123^save_1/AssignVariableOp_124^save_1/AssignVariableOp_125^save_1/AssignVariableOp_126^save_1/AssignVariableOp_127^save_1/AssignVariableOp_128^save_1/AssignVariableOp_129^save_1/AssignVariableOp_13^save_1/AssignVariableOp_130^save_1/AssignVariableOp_131^save_1/AssignVariableOp_132^save_1/AssignVariableOp_133^save_1/AssignVariableOp_134^save_1/AssignVariableOp_135^save_1/AssignVariableOp_136^save_1/AssignVariableOp_137^save_1/AssignVariableOp_138^save_1/AssignVariableOp_139^save_1/AssignVariableOp_14^save_1/AssignVariableOp_140^save_1/AssignVariableOp_141^save_1/AssignVariableOp_142^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_41^save_1/AssignVariableOp_42^save_1/AssignVariableOp_43^save_1/AssignVariableOp_44^save_1/AssignVariableOp_45^save_1/AssignVariableOp_46^save_1/AssignVariableOp_47^save_1/AssignVariableOp_48^save_1/AssignVariableOp_49^save_1/AssignVariableOp_5^save_1/AssignVariableOp_50^save_1/AssignVariableOp_51^save_1/AssignVariableOp_52^save_1/AssignVariableOp_53^save_1/AssignVariableOp_54^save_1/AssignVariableOp_55^save_1/AssignVariableOp_56^save_1/AssignVariableOp_57^save_1/AssignVariableOp_58^save_1/AssignVariableOp_59^save_1/AssignVariableOp_6^save_1/AssignVariableOp_60^save_1/AssignVariableOp_61^save_1/AssignVariableOp_62^save_1/AssignVariableOp_63^save_1/AssignVariableOp_64^save_1/AssignVariableOp_65^save_1/AssignVariableOp_66^save_1/AssignVariableOp_67^save_1/AssignVariableOp_68^save_1/AssignVariableOp_69^save_1/AssignVariableOp_7^save_1/AssignVariableOp_70^save_1/AssignVariableOp_71^save_1/AssignVariableOp_72^save_1/AssignVariableOp_73^save_1/AssignVariableOp_74^save_1/AssignVariableOp_75^save_1/AssignVariableOp_76^save_1/AssignVariableOp_77^save_1/AssignVariableOp_78^save_1/AssignVariableOp_79^save_1/AssignVariableOp_8^save_1/AssignVariableOp_80^save_1/AssignVariableOp_81^save_1/AssignVariableOp_82^save_1/AssignVariableOp_83^save_1/AssignVariableOp_84^save_1/AssignVariableOp_85^save_1/AssignVariableOp_86^save_1/AssignVariableOp_87^save_1/AssignVariableOp_88^save_1/AssignVariableOp_89^save_1/AssignVariableOp_9^save_1/AssignVariableOp_90^save_1/AssignVariableOp_91^save_1/AssignVariableOp_92^save_1/AssignVariableOp_93^save_1/AssignVariableOp_94^save_1/AssignVariableOp_95^save_1/AssignVariableOp_96^save_1/AssignVariableOp_97^save_1/AssignVariableOp_98^save_1/AssignVariableOp_99^save_1/NoOp^save_1/NoOp_1^save_1/NoOp_10^save_1/NoOp_11^save_1/NoOp_12^save_1/NoOp_13^save_1/NoOp_14^save_1/NoOp_15^save_1/NoOp_16^save_1/NoOp_17^save_1/NoOp_18^save_1/NoOp_19^save_1/NoOp_2^save_1/NoOp_20^save_1/NoOp_21^save_1/NoOp_22^save_1/NoOp_23^save_1/NoOp_24^save_1/NoOp_25^save_1/NoOp_26^save_1/NoOp_27^save_1/NoOp_28^save_1/NoOp_29^save_1/NoOp_3^save_1/NoOp_30^save_1/NoOp_31^save_1/NoOp_32^save_1/NoOp_33^save_1/NoOp_34^save_1/NoOp_35^save_1/NoOp_36^save_1/NoOp_37^save_1/NoOp_38^save_1/NoOp_39^save_1/NoOp_4^save_1/NoOp_40^save_1/NoOp_41^save_1/NoOp_42^save_1/NoOp_43^save_1/NoOp_44^save_1/NoOp_45^save_1/NoOp_46^save_1/NoOp_47^save_1/NoOp_48^save_1/NoOp_49^save_1/NoOp_5^save_1/NoOp_50^save_1/NoOp_51^save_1/NoOp_52^save_1/NoOp_53^save_1/NoOp_54^save_1/NoOp_55^save_1/NoOp_56^save_1/NoOp_57^save_1/NoOp_58^save_1/NoOp_59^save_1/NoOp_6^save_1/NoOp_60^save_1/NoOp_61^save_1/NoOp_62^save_1/NoOp_63^save_1/NoOp_64^save_1/NoOp_65^save_1/NoOp_66^save_1/NoOp_67^save_1/NoOp_68^save_1/NoOp_69^save_1/NoOp_7^save_1/NoOp_70^save_1/NoOp_71^save_1/NoOp_72^save_1/NoOp_73^save_1/NoOp_74^save_1/NoOp_75^save_1/NoOp_76^save_1/NoOp_77^save_1/NoOp_78^save_1/NoOp_79^save_1/NoOp_8^save_1/NoOp_80^save_1/NoOp_81^save_1/NoOp_82^save_1/NoOp_83^save_1/NoOp_84^save_1/NoOp_85^save_1/NoOp_86^save_1/NoOp_87^save_1/NoOp_88^save_1/NoOp_89^save_1/NoOp_9^save_1/NoOp_90^save_1/NoOp_91^save_1/NoOp_92

init_1NoOp"J
save_1/Const:0save_1/control_dependency:0save_1/restore_all 5 @F8"ěN
trainable_variablesÔNŃN

conv_pw_3/kernel:0conv_pw_3/kernel/Assign&conv_pw_3/kernel/Read/ReadVariableOp:0(2-conv_pw_3/kernel/Initializer/random_uniform:08

conv_pw_3_bn/gamma:0conv_pw_3_bn/gamma/Assign(conv_pw_3_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_3_bn/gamma/Initializer/ones:08

conv_pw_3_bn/beta:0conv_pw_3_bn/beta/Assign'conv_pw_3_bn/beta/Read/ReadVariableOp:0(2%conv_pw_3_bn/beta/Initializer/zeros:08
°
conv_dw_4/depthwise_kernel:0!conv_dw_4/depthwise_kernel/Assign0conv_dw_4/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_4/depthwise_kernel/Initializer/random_uniform:08

conv_dw_4_bn/gamma:0conv_dw_4_bn/gamma/Assign(conv_dw_4_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_4_bn/gamma/Initializer/ones:08

conv_dw_4_bn/beta:0conv_dw_4_bn/beta/Assign'conv_dw_4_bn/beta/Read/ReadVariableOp:0(2%conv_dw_4_bn/beta/Initializer/zeros:08

conv_pw_4/kernel:0conv_pw_4/kernel/Assign&conv_pw_4/kernel/Read/ReadVariableOp:0(2-conv_pw_4/kernel/Initializer/random_uniform:08

conv_pw_4_bn/gamma:0conv_pw_4_bn/gamma/Assign(conv_pw_4_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_4_bn/gamma/Initializer/ones:08

conv_pw_4_bn/beta:0conv_pw_4_bn/beta/Assign'conv_pw_4_bn/beta/Read/ReadVariableOp:0(2%conv_pw_4_bn/beta/Initializer/zeros:08
°
conv_dw_5/depthwise_kernel:0!conv_dw_5/depthwise_kernel/Assign0conv_dw_5/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_5/depthwise_kernel/Initializer/random_uniform:08

conv_dw_5_bn/gamma:0conv_dw_5_bn/gamma/Assign(conv_dw_5_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_5_bn/gamma/Initializer/ones:08

conv_dw_5_bn/beta:0conv_dw_5_bn/beta/Assign'conv_dw_5_bn/beta/Read/ReadVariableOp:0(2%conv_dw_5_bn/beta/Initializer/zeros:08

conv_pw_5/kernel:0conv_pw_5/kernel/Assign&conv_pw_5/kernel/Read/ReadVariableOp:0(2-conv_pw_5/kernel/Initializer/random_uniform:08

conv_pw_5_bn/gamma:0conv_pw_5_bn/gamma/Assign(conv_pw_5_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_5_bn/gamma/Initializer/ones:08

conv_pw_5_bn/beta:0conv_pw_5_bn/beta/Assign'conv_pw_5_bn/beta/Read/ReadVariableOp:0(2%conv_pw_5_bn/beta/Initializer/zeros:08
°
conv_dw_6/depthwise_kernel:0!conv_dw_6/depthwise_kernel/Assign0conv_dw_6/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_6/depthwise_kernel/Initializer/random_uniform:08

conv_dw_6_bn/gamma:0conv_dw_6_bn/gamma/Assign(conv_dw_6_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_6_bn/gamma/Initializer/ones:08

conv_dw_6_bn/beta:0conv_dw_6_bn/beta/Assign'conv_dw_6_bn/beta/Read/ReadVariableOp:0(2%conv_dw_6_bn/beta/Initializer/zeros:08

conv_pw_6/kernel:0conv_pw_6/kernel/Assign&conv_pw_6/kernel/Read/ReadVariableOp:0(2-conv_pw_6/kernel/Initializer/random_uniform:08

conv_pw_6_bn/gamma:0conv_pw_6_bn/gamma/Assign(conv_pw_6_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_6_bn/gamma/Initializer/ones:08

conv_pw_6_bn/beta:0conv_pw_6_bn/beta/Assign'conv_pw_6_bn/beta/Read/ReadVariableOp:0(2%conv_pw_6_bn/beta/Initializer/zeros:08
°
conv_dw_7/depthwise_kernel:0!conv_dw_7/depthwise_kernel/Assign0conv_dw_7/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_7/depthwise_kernel/Initializer/random_uniform:08

conv_dw_7_bn/gamma:0conv_dw_7_bn/gamma/Assign(conv_dw_7_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_7_bn/gamma/Initializer/ones:08

conv_dw_7_bn/beta:0conv_dw_7_bn/beta/Assign'conv_dw_7_bn/beta/Read/ReadVariableOp:0(2%conv_dw_7_bn/beta/Initializer/zeros:08

conv_pw_7/kernel:0conv_pw_7/kernel/Assign&conv_pw_7/kernel/Read/ReadVariableOp:0(2-conv_pw_7/kernel/Initializer/random_uniform:08

conv_pw_7_bn/gamma:0conv_pw_7_bn/gamma/Assign(conv_pw_7_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_7_bn/gamma/Initializer/ones:08

conv_pw_7_bn/beta:0conv_pw_7_bn/beta/Assign'conv_pw_7_bn/beta/Read/ReadVariableOp:0(2%conv_pw_7_bn/beta/Initializer/zeros:08
°
conv_dw_8/depthwise_kernel:0!conv_dw_8/depthwise_kernel/Assign0conv_dw_8/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_8/depthwise_kernel/Initializer/random_uniform:08

conv_dw_8_bn/gamma:0conv_dw_8_bn/gamma/Assign(conv_dw_8_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_8_bn/gamma/Initializer/ones:08

conv_dw_8_bn/beta:0conv_dw_8_bn/beta/Assign'conv_dw_8_bn/beta/Read/ReadVariableOp:0(2%conv_dw_8_bn/beta/Initializer/zeros:08

conv_pw_8/kernel:0conv_pw_8/kernel/Assign&conv_pw_8/kernel/Read/ReadVariableOp:0(2-conv_pw_8/kernel/Initializer/random_uniform:08

conv_pw_8_bn/gamma:0conv_pw_8_bn/gamma/Assign(conv_pw_8_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_8_bn/gamma/Initializer/ones:08

conv_pw_8_bn/beta:0conv_pw_8_bn/beta/Assign'conv_pw_8_bn/beta/Read/ReadVariableOp:0(2%conv_pw_8_bn/beta/Initializer/zeros:08
°
conv_dw_9/depthwise_kernel:0!conv_dw_9/depthwise_kernel/Assign0conv_dw_9/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_9/depthwise_kernel/Initializer/random_uniform:08

conv_dw_9_bn/gamma:0conv_dw_9_bn/gamma/Assign(conv_dw_9_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_9_bn/gamma/Initializer/ones:08

conv_dw_9_bn/beta:0conv_dw_9_bn/beta/Assign'conv_dw_9_bn/beta/Read/ReadVariableOp:0(2%conv_dw_9_bn/beta/Initializer/zeros:08

conv_pw_9/kernel:0conv_pw_9/kernel/Assign&conv_pw_9/kernel/Read/ReadVariableOp:0(2-conv_pw_9/kernel/Initializer/random_uniform:08

conv_pw_9_bn/gamma:0conv_pw_9_bn/gamma/Assign(conv_pw_9_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_9_bn/gamma/Initializer/ones:08

conv_pw_9_bn/beta:0conv_pw_9_bn/beta/Assign'conv_pw_9_bn/beta/Read/ReadVariableOp:0(2%conv_pw_9_bn/beta/Initializer/zeros:08
´
conv_dw_10/depthwise_kernel:0"conv_dw_10/depthwise_kernel/Assign1conv_dw_10/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_10/depthwise_kernel/Initializer/random_uniform:08

conv_dw_10_bn/gamma:0conv_dw_10_bn/gamma/Assign)conv_dw_10_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_10_bn/gamma/Initializer/ones:08

conv_dw_10_bn/beta:0conv_dw_10_bn/beta/Assign(conv_dw_10_bn/beta/Read/ReadVariableOp:0(2&conv_dw_10_bn/beta/Initializer/zeros:08

conv_pw_10/kernel:0conv_pw_10/kernel/Assign'conv_pw_10/kernel/Read/ReadVariableOp:0(2.conv_pw_10/kernel/Initializer/random_uniform:08

conv_pw_10_bn/gamma:0conv_pw_10_bn/gamma/Assign)conv_pw_10_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_10_bn/gamma/Initializer/ones:08

conv_pw_10_bn/beta:0conv_pw_10_bn/beta/Assign(conv_pw_10_bn/beta/Read/ReadVariableOp:0(2&conv_pw_10_bn/beta/Initializer/zeros:08
´
conv_dw_11/depthwise_kernel:0"conv_dw_11/depthwise_kernel/Assign1conv_dw_11/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_11/depthwise_kernel/Initializer/random_uniform:08

conv_dw_11_bn/gamma:0conv_dw_11_bn/gamma/Assign)conv_dw_11_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_11_bn/gamma/Initializer/ones:08

conv_dw_11_bn/beta:0conv_dw_11_bn/beta/Assign(conv_dw_11_bn/beta/Read/ReadVariableOp:0(2&conv_dw_11_bn/beta/Initializer/zeros:08

conv_pw_11/kernel:0conv_pw_11/kernel/Assign'conv_pw_11/kernel/Read/ReadVariableOp:0(2.conv_pw_11/kernel/Initializer/random_uniform:08

conv_pw_11_bn/gamma:0conv_pw_11_bn/gamma/Assign)conv_pw_11_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_11_bn/gamma/Initializer/ones:08

conv_pw_11_bn/beta:0conv_pw_11_bn/beta/Assign(conv_pw_11_bn/beta/Read/ReadVariableOp:0(2&conv_pw_11_bn/beta/Initializer/zeros:08
´
conv_dw_12/depthwise_kernel:0"conv_dw_12/depthwise_kernel/Assign1conv_dw_12/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_12/depthwise_kernel/Initializer/random_uniform:08

conv_dw_12_bn/gamma:0conv_dw_12_bn/gamma/Assign)conv_dw_12_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_12_bn/gamma/Initializer/ones:08

conv_dw_12_bn/beta:0conv_dw_12_bn/beta/Assign(conv_dw_12_bn/beta/Read/ReadVariableOp:0(2&conv_dw_12_bn/beta/Initializer/zeros:08

conv_pw_12/kernel:0conv_pw_12/kernel/Assign'conv_pw_12/kernel/Read/ReadVariableOp:0(2.conv_pw_12/kernel/Initializer/random_uniform:08

conv_pw_12_bn/gamma:0conv_pw_12_bn/gamma/Assign)conv_pw_12_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_12_bn/gamma/Initializer/ones:08

conv_pw_12_bn/beta:0conv_pw_12_bn/beta/Assign(conv_pw_12_bn/beta/Read/ReadVariableOp:0(2&conv_pw_12_bn/beta/Initializer/zeros:08
´
conv_dw_13/depthwise_kernel:0"conv_dw_13/depthwise_kernel/Assign1conv_dw_13/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_13/depthwise_kernel/Initializer/random_uniform:08

conv_dw_13_bn/gamma:0conv_dw_13_bn/gamma/Assign)conv_dw_13_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_13_bn/gamma/Initializer/ones:08

conv_dw_13_bn/beta:0conv_dw_13_bn/beta/Assign(conv_dw_13_bn/beta/Read/ReadVariableOp:0(2&conv_dw_13_bn/beta/Initializer/zeros:08

conv_pw_13/kernel:0conv_pw_13/kernel/Assign'conv_pw_13/kernel/Read/ReadVariableOp:0(2.conv_pw_13/kernel/Initializer/random_uniform:08

conv_pw_13_bn/gamma:0conv_pw_13_bn/gamma/Assign)conv_pw_13_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_13_bn/gamma/Initializer/ones:08

conv_pw_13_bn/beta:0conv_pw_13_bn/beta/Assign(conv_pw_13_bn/beta/Read/ReadVariableOp:0(2&conv_pw_13_bn/beta/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08"!
saved_model_main_op


init_1"Š
	variablesŠŠ
v
conv1/kernel:0conv1/kernel/Assign"conv1/kernel/Read/ReadVariableOp:0(2)conv1/kernel/Initializer/random_uniform:0
t
conv1_bn/gamma:0conv1_bn/gamma/Assign$conv1_bn/gamma/Read/ReadVariableOp:0(2!conv1_bn/gamma/Initializer/ones:0
q
conv1_bn/beta:0conv1_bn/beta/Assign#conv1_bn/beta/Read/ReadVariableOp:0(2!conv1_bn/beta/Initializer/zeros:0

conv1_bn/moving_mean:0conv1_bn/moving_mean/Assign*conv1_bn/moving_mean/Read/ReadVariableOp:0(2(conv1_bn/moving_mean/Initializer/zeros:0

conv1_bn/moving_variance:0conv1_bn/moving_variance/Assign.conv1_bn/moving_variance/Read/ReadVariableOp:0(2+conv1_bn/moving_variance/Initializer/ones:0
Ž
conv_dw_1/depthwise_kernel:0!conv_dw_1/depthwise_kernel/Assign0conv_dw_1/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_1/depthwise_kernel/Initializer/random_uniform:0

conv_dw_1_bn/gamma:0conv_dw_1_bn/gamma/Assign(conv_dw_1_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_1_bn/gamma/Initializer/ones:0

conv_dw_1_bn/beta:0conv_dw_1_bn/beta/Assign'conv_dw_1_bn/beta/Read/ReadVariableOp:0(2%conv_dw_1_bn/beta/Initializer/zeros:0

conv_dw_1_bn/moving_mean:0conv_dw_1_bn/moving_mean/Assign.conv_dw_1_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_1_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_1_bn/moving_variance:0#conv_dw_1_bn/moving_variance/Assign2conv_dw_1_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_1_bn/moving_variance/Initializer/ones:0

conv_pw_1/kernel:0conv_pw_1/kernel/Assign&conv_pw_1/kernel/Read/ReadVariableOp:0(2-conv_pw_1/kernel/Initializer/random_uniform:0

conv_pw_1_bn/gamma:0conv_pw_1_bn/gamma/Assign(conv_pw_1_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_1_bn/gamma/Initializer/ones:0

conv_pw_1_bn/beta:0conv_pw_1_bn/beta/Assign'conv_pw_1_bn/beta/Read/ReadVariableOp:0(2%conv_pw_1_bn/beta/Initializer/zeros:0

conv_pw_1_bn/moving_mean:0conv_pw_1_bn/moving_mean/Assign.conv_pw_1_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_1_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_1_bn/moving_variance:0#conv_pw_1_bn/moving_variance/Assign2conv_pw_1_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_1_bn/moving_variance/Initializer/ones:0
Ž
conv_dw_2/depthwise_kernel:0!conv_dw_2/depthwise_kernel/Assign0conv_dw_2/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_2/depthwise_kernel/Initializer/random_uniform:0

conv_dw_2_bn/gamma:0conv_dw_2_bn/gamma/Assign(conv_dw_2_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_2_bn/gamma/Initializer/ones:0

conv_dw_2_bn/beta:0conv_dw_2_bn/beta/Assign'conv_dw_2_bn/beta/Read/ReadVariableOp:0(2%conv_dw_2_bn/beta/Initializer/zeros:0

conv_dw_2_bn/moving_mean:0conv_dw_2_bn/moving_mean/Assign.conv_dw_2_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_2_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_2_bn/moving_variance:0#conv_dw_2_bn/moving_variance/Assign2conv_dw_2_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_2_bn/moving_variance/Initializer/ones:0

conv_pw_2/kernel:0conv_pw_2/kernel/Assign&conv_pw_2/kernel/Read/ReadVariableOp:0(2-conv_pw_2/kernel/Initializer/random_uniform:0

conv_pw_2_bn/gamma:0conv_pw_2_bn/gamma/Assign(conv_pw_2_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_2_bn/gamma/Initializer/ones:0

conv_pw_2_bn/beta:0conv_pw_2_bn/beta/Assign'conv_pw_2_bn/beta/Read/ReadVariableOp:0(2%conv_pw_2_bn/beta/Initializer/zeros:0

conv_pw_2_bn/moving_mean:0conv_pw_2_bn/moving_mean/Assign.conv_pw_2_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_2_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_2_bn/moving_variance:0#conv_pw_2_bn/moving_variance/Assign2conv_pw_2_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_2_bn/moving_variance/Initializer/ones:0
Ž
conv_dw_3/depthwise_kernel:0!conv_dw_3/depthwise_kernel/Assign0conv_dw_3/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_3/depthwise_kernel/Initializer/random_uniform:0

conv_dw_3_bn/gamma:0conv_dw_3_bn/gamma/Assign(conv_dw_3_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_3_bn/gamma/Initializer/ones:0

conv_dw_3_bn/beta:0conv_dw_3_bn/beta/Assign'conv_dw_3_bn/beta/Read/ReadVariableOp:0(2%conv_dw_3_bn/beta/Initializer/zeros:0

conv_dw_3_bn/moving_mean:0conv_dw_3_bn/moving_mean/Assign.conv_dw_3_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_3_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_3_bn/moving_variance:0#conv_dw_3_bn/moving_variance/Assign2conv_dw_3_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_3_bn/moving_variance/Initializer/ones:0

conv_pw_3/kernel:0conv_pw_3/kernel/Assign&conv_pw_3/kernel/Read/ReadVariableOp:0(2-conv_pw_3/kernel/Initializer/random_uniform:08

conv_pw_3_bn/gamma:0conv_pw_3_bn/gamma/Assign(conv_pw_3_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_3_bn/gamma/Initializer/ones:08

conv_pw_3_bn/beta:0conv_pw_3_bn/beta/Assign'conv_pw_3_bn/beta/Read/ReadVariableOp:0(2%conv_pw_3_bn/beta/Initializer/zeros:08

conv_pw_3_bn/moving_mean:0conv_pw_3_bn/moving_mean/Assign.conv_pw_3_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_3_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_3_bn/moving_variance:0#conv_pw_3_bn/moving_variance/Assign2conv_pw_3_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_3_bn/moving_variance/Initializer/ones:0
°
conv_dw_4/depthwise_kernel:0!conv_dw_4/depthwise_kernel/Assign0conv_dw_4/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_4/depthwise_kernel/Initializer/random_uniform:08

conv_dw_4_bn/gamma:0conv_dw_4_bn/gamma/Assign(conv_dw_4_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_4_bn/gamma/Initializer/ones:08

conv_dw_4_bn/beta:0conv_dw_4_bn/beta/Assign'conv_dw_4_bn/beta/Read/ReadVariableOp:0(2%conv_dw_4_bn/beta/Initializer/zeros:08

conv_dw_4_bn/moving_mean:0conv_dw_4_bn/moving_mean/Assign.conv_dw_4_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_4_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_4_bn/moving_variance:0#conv_dw_4_bn/moving_variance/Assign2conv_dw_4_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_4_bn/moving_variance/Initializer/ones:0

conv_pw_4/kernel:0conv_pw_4/kernel/Assign&conv_pw_4/kernel/Read/ReadVariableOp:0(2-conv_pw_4/kernel/Initializer/random_uniform:08

conv_pw_4_bn/gamma:0conv_pw_4_bn/gamma/Assign(conv_pw_4_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_4_bn/gamma/Initializer/ones:08

conv_pw_4_bn/beta:0conv_pw_4_bn/beta/Assign'conv_pw_4_bn/beta/Read/ReadVariableOp:0(2%conv_pw_4_bn/beta/Initializer/zeros:08

conv_pw_4_bn/moving_mean:0conv_pw_4_bn/moving_mean/Assign.conv_pw_4_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_4_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_4_bn/moving_variance:0#conv_pw_4_bn/moving_variance/Assign2conv_pw_4_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_4_bn/moving_variance/Initializer/ones:0
°
conv_dw_5/depthwise_kernel:0!conv_dw_5/depthwise_kernel/Assign0conv_dw_5/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_5/depthwise_kernel/Initializer/random_uniform:08

conv_dw_5_bn/gamma:0conv_dw_5_bn/gamma/Assign(conv_dw_5_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_5_bn/gamma/Initializer/ones:08

conv_dw_5_bn/beta:0conv_dw_5_bn/beta/Assign'conv_dw_5_bn/beta/Read/ReadVariableOp:0(2%conv_dw_5_bn/beta/Initializer/zeros:08

conv_dw_5_bn/moving_mean:0conv_dw_5_bn/moving_mean/Assign.conv_dw_5_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_5_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_5_bn/moving_variance:0#conv_dw_5_bn/moving_variance/Assign2conv_dw_5_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_5_bn/moving_variance/Initializer/ones:0

conv_pw_5/kernel:0conv_pw_5/kernel/Assign&conv_pw_5/kernel/Read/ReadVariableOp:0(2-conv_pw_5/kernel/Initializer/random_uniform:08

conv_pw_5_bn/gamma:0conv_pw_5_bn/gamma/Assign(conv_pw_5_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_5_bn/gamma/Initializer/ones:08

conv_pw_5_bn/beta:0conv_pw_5_bn/beta/Assign'conv_pw_5_bn/beta/Read/ReadVariableOp:0(2%conv_pw_5_bn/beta/Initializer/zeros:08

conv_pw_5_bn/moving_mean:0conv_pw_5_bn/moving_mean/Assign.conv_pw_5_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_5_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_5_bn/moving_variance:0#conv_pw_5_bn/moving_variance/Assign2conv_pw_5_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_5_bn/moving_variance/Initializer/ones:0
°
conv_dw_6/depthwise_kernel:0!conv_dw_6/depthwise_kernel/Assign0conv_dw_6/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_6/depthwise_kernel/Initializer/random_uniform:08

conv_dw_6_bn/gamma:0conv_dw_6_bn/gamma/Assign(conv_dw_6_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_6_bn/gamma/Initializer/ones:08

conv_dw_6_bn/beta:0conv_dw_6_bn/beta/Assign'conv_dw_6_bn/beta/Read/ReadVariableOp:0(2%conv_dw_6_bn/beta/Initializer/zeros:08

conv_dw_6_bn/moving_mean:0conv_dw_6_bn/moving_mean/Assign.conv_dw_6_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_6_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_6_bn/moving_variance:0#conv_dw_6_bn/moving_variance/Assign2conv_dw_6_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_6_bn/moving_variance/Initializer/ones:0

conv_pw_6/kernel:0conv_pw_6/kernel/Assign&conv_pw_6/kernel/Read/ReadVariableOp:0(2-conv_pw_6/kernel/Initializer/random_uniform:08

conv_pw_6_bn/gamma:0conv_pw_6_bn/gamma/Assign(conv_pw_6_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_6_bn/gamma/Initializer/ones:08

conv_pw_6_bn/beta:0conv_pw_6_bn/beta/Assign'conv_pw_6_bn/beta/Read/ReadVariableOp:0(2%conv_pw_6_bn/beta/Initializer/zeros:08

conv_pw_6_bn/moving_mean:0conv_pw_6_bn/moving_mean/Assign.conv_pw_6_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_6_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_6_bn/moving_variance:0#conv_pw_6_bn/moving_variance/Assign2conv_pw_6_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_6_bn/moving_variance/Initializer/ones:0
°
conv_dw_7/depthwise_kernel:0!conv_dw_7/depthwise_kernel/Assign0conv_dw_7/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_7/depthwise_kernel/Initializer/random_uniform:08

conv_dw_7_bn/gamma:0conv_dw_7_bn/gamma/Assign(conv_dw_7_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_7_bn/gamma/Initializer/ones:08

conv_dw_7_bn/beta:0conv_dw_7_bn/beta/Assign'conv_dw_7_bn/beta/Read/ReadVariableOp:0(2%conv_dw_7_bn/beta/Initializer/zeros:08

conv_dw_7_bn/moving_mean:0conv_dw_7_bn/moving_mean/Assign.conv_dw_7_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_7_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_7_bn/moving_variance:0#conv_dw_7_bn/moving_variance/Assign2conv_dw_7_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_7_bn/moving_variance/Initializer/ones:0

conv_pw_7/kernel:0conv_pw_7/kernel/Assign&conv_pw_7/kernel/Read/ReadVariableOp:0(2-conv_pw_7/kernel/Initializer/random_uniform:08

conv_pw_7_bn/gamma:0conv_pw_7_bn/gamma/Assign(conv_pw_7_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_7_bn/gamma/Initializer/ones:08

conv_pw_7_bn/beta:0conv_pw_7_bn/beta/Assign'conv_pw_7_bn/beta/Read/ReadVariableOp:0(2%conv_pw_7_bn/beta/Initializer/zeros:08

conv_pw_7_bn/moving_mean:0conv_pw_7_bn/moving_mean/Assign.conv_pw_7_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_7_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_7_bn/moving_variance:0#conv_pw_7_bn/moving_variance/Assign2conv_pw_7_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_7_bn/moving_variance/Initializer/ones:0
°
conv_dw_8/depthwise_kernel:0!conv_dw_8/depthwise_kernel/Assign0conv_dw_8/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_8/depthwise_kernel/Initializer/random_uniform:08

conv_dw_8_bn/gamma:0conv_dw_8_bn/gamma/Assign(conv_dw_8_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_8_bn/gamma/Initializer/ones:08

conv_dw_8_bn/beta:0conv_dw_8_bn/beta/Assign'conv_dw_8_bn/beta/Read/ReadVariableOp:0(2%conv_dw_8_bn/beta/Initializer/zeros:08

conv_dw_8_bn/moving_mean:0conv_dw_8_bn/moving_mean/Assign.conv_dw_8_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_8_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_8_bn/moving_variance:0#conv_dw_8_bn/moving_variance/Assign2conv_dw_8_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_8_bn/moving_variance/Initializer/ones:0

conv_pw_8/kernel:0conv_pw_8/kernel/Assign&conv_pw_8/kernel/Read/ReadVariableOp:0(2-conv_pw_8/kernel/Initializer/random_uniform:08

conv_pw_8_bn/gamma:0conv_pw_8_bn/gamma/Assign(conv_pw_8_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_8_bn/gamma/Initializer/ones:08

conv_pw_8_bn/beta:0conv_pw_8_bn/beta/Assign'conv_pw_8_bn/beta/Read/ReadVariableOp:0(2%conv_pw_8_bn/beta/Initializer/zeros:08

conv_pw_8_bn/moving_mean:0conv_pw_8_bn/moving_mean/Assign.conv_pw_8_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_8_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_8_bn/moving_variance:0#conv_pw_8_bn/moving_variance/Assign2conv_pw_8_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_8_bn/moving_variance/Initializer/ones:0
°
conv_dw_9/depthwise_kernel:0!conv_dw_9/depthwise_kernel/Assign0conv_dw_9/depthwise_kernel/Read/ReadVariableOp:0(27conv_dw_9/depthwise_kernel/Initializer/random_uniform:08

conv_dw_9_bn/gamma:0conv_dw_9_bn/gamma/Assign(conv_dw_9_bn/gamma/Read/ReadVariableOp:0(2%conv_dw_9_bn/gamma/Initializer/ones:08

conv_dw_9_bn/beta:0conv_dw_9_bn/beta/Assign'conv_dw_9_bn/beta/Read/ReadVariableOp:0(2%conv_dw_9_bn/beta/Initializer/zeros:08

conv_dw_9_bn/moving_mean:0conv_dw_9_bn/moving_mean/Assign.conv_dw_9_bn/moving_mean/Read/ReadVariableOp:0(2,conv_dw_9_bn/moving_mean/Initializer/zeros:0
Ź
conv_dw_9_bn/moving_variance:0#conv_dw_9_bn/moving_variance/Assign2conv_dw_9_bn/moving_variance/Read/ReadVariableOp:0(2/conv_dw_9_bn/moving_variance/Initializer/ones:0

conv_pw_9/kernel:0conv_pw_9/kernel/Assign&conv_pw_9/kernel/Read/ReadVariableOp:0(2-conv_pw_9/kernel/Initializer/random_uniform:08

conv_pw_9_bn/gamma:0conv_pw_9_bn/gamma/Assign(conv_pw_9_bn/gamma/Read/ReadVariableOp:0(2%conv_pw_9_bn/gamma/Initializer/ones:08

conv_pw_9_bn/beta:0conv_pw_9_bn/beta/Assign'conv_pw_9_bn/beta/Read/ReadVariableOp:0(2%conv_pw_9_bn/beta/Initializer/zeros:08

conv_pw_9_bn/moving_mean:0conv_pw_9_bn/moving_mean/Assign.conv_pw_9_bn/moving_mean/Read/ReadVariableOp:0(2,conv_pw_9_bn/moving_mean/Initializer/zeros:0
Ź
conv_pw_9_bn/moving_variance:0#conv_pw_9_bn/moving_variance/Assign2conv_pw_9_bn/moving_variance/Read/ReadVariableOp:0(2/conv_pw_9_bn/moving_variance/Initializer/ones:0
´
conv_dw_10/depthwise_kernel:0"conv_dw_10/depthwise_kernel/Assign1conv_dw_10/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_10/depthwise_kernel/Initializer/random_uniform:08

conv_dw_10_bn/gamma:0conv_dw_10_bn/gamma/Assign)conv_dw_10_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_10_bn/gamma/Initializer/ones:08

conv_dw_10_bn/beta:0conv_dw_10_bn/beta/Assign(conv_dw_10_bn/beta/Read/ReadVariableOp:0(2&conv_dw_10_bn/beta/Initializer/zeros:08
Ą
conv_dw_10_bn/moving_mean:0 conv_dw_10_bn/moving_mean/Assign/conv_dw_10_bn/moving_mean/Read/ReadVariableOp:0(2-conv_dw_10_bn/moving_mean/Initializer/zeros:0
°
conv_dw_10_bn/moving_variance:0$conv_dw_10_bn/moving_variance/Assign3conv_dw_10_bn/moving_variance/Read/ReadVariableOp:0(20conv_dw_10_bn/moving_variance/Initializer/ones:0

conv_pw_10/kernel:0conv_pw_10/kernel/Assign'conv_pw_10/kernel/Read/ReadVariableOp:0(2.conv_pw_10/kernel/Initializer/random_uniform:08

conv_pw_10_bn/gamma:0conv_pw_10_bn/gamma/Assign)conv_pw_10_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_10_bn/gamma/Initializer/ones:08

conv_pw_10_bn/beta:0conv_pw_10_bn/beta/Assign(conv_pw_10_bn/beta/Read/ReadVariableOp:0(2&conv_pw_10_bn/beta/Initializer/zeros:08
Ą
conv_pw_10_bn/moving_mean:0 conv_pw_10_bn/moving_mean/Assign/conv_pw_10_bn/moving_mean/Read/ReadVariableOp:0(2-conv_pw_10_bn/moving_mean/Initializer/zeros:0
°
conv_pw_10_bn/moving_variance:0$conv_pw_10_bn/moving_variance/Assign3conv_pw_10_bn/moving_variance/Read/ReadVariableOp:0(20conv_pw_10_bn/moving_variance/Initializer/ones:0
´
conv_dw_11/depthwise_kernel:0"conv_dw_11/depthwise_kernel/Assign1conv_dw_11/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_11/depthwise_kernel/Initializer/random_uniform:08

conv_dw_11_bn/gamma:0conv_dw_11_bn/gamma/Assign)conv_dw_11_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_11_bn/gamma/Initializer/ones:08

conv_dw_11_bn/beta:0conv_dw_11_bn/beta/Assign(conv_dw_11_bn/beta/Read/ReadVariableOp:0(2&conv_dw_11_bn/beta/Initializer/zeros:08
Ą
conv_dw_11_bn/moving_mean:0 conv_dw_11_bn/moving_mean/Assign/conv_dw_11_bn/moving_mean/Read/ReadVariableOp:0(2-conv_dw_11_bn/moving_mean/Initializer/zeros:0
°
conv_dw_11_bn/moving_variance:0$conv_dw_11_bn/moving_variance/Assign3conv_dw_11_bn/moving_variance/Read/ReadVariableOp:0(20conv_dw_11_bn/moving_variance/Initializer/ones:0

conv_pw_11/kernel:0conv_pw_11/kernel/Assign'conv_pw_11/kernel/Read/ReadVariableOp:0(2.conv_pw_11/kernel/Initializer/random_uniform:08

conv_pw_11_bn/gamma:0conv_pw_11_bn/gamma/Assign)conv_pw_11_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_11_bn/gamma/Initializer/ones:08

conv_pw_11_bn/beta:0conv_pw_11_bn/beta/Assign(conv_pw_11_bn/beta/Read/ReadVariableOp:0(2&conv_pw_11_bn/beta/Initializer/zeros:08
Ą
conv_pw_11_bn/moving_mean:0 conv_pw_11_bn/moving_mean/Assign/conv_pw_11_bn/moving_mean/Read/ReadVariableOp:0(2-conv_pw_11_bn/moving_mean/Initializer/zeros:0
°
conv_pw_11_bn/moving_variance:0$conv_pw_11_bn/moving_variance/Assign3conv_pw_11_bn/moving_variance/Read/ReadVariableOp:0(20conv_pw_11_bn/moving_variance/Initializer/ones:0
´
conv_dw_12/depthwise_kernel:0"conv_dw_12/depthwise_kernel/Assign1conv_dw_12/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_12/depthwise_kernel/Initializer/random_uniform:08

conv_dw_12_bn/gamma:0conv_dw_12_bn/gamma/Assign)conv_dw_12_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_12_bn/gamma/Initializer/ones:08

conv_dw_12_bn/beta:0conv_dw_12_bn/beta/Assign(conv_dw_12_bn/beta/Read/ReadVariableOp:0(2&conv_dw_12_bn/beta/Initializer/zeros:08
Ą
conv_dw_12_bn/moving_mean:0 conv_dw_12_bn/moving_mean/Assign/conv_dw_12_bn/moving_mean/Read/ReadVariableOp:0(2-conv_dw_12_bn/moving_mean/Initializer/zeros:0
°
conv_dw_12_bn/moving_variance:0$conv_dw_12_bn/moving_variance/Assign3conv_dw_12_bn/moving_variance/Read/ReadVariableOp:0(20conv_dw_12_bn/moving_variance/Initializer/ones:0

conv_pw_12/kernel:0conv_pw_12/kernel/Assign'conv_pw_12/kernel/Read/ReadVariableOp:0(2.conv_pw_12/kernel/Initializer/random_uniform:08

conv_pw_12_bn/gamma:0conv_pw_12_bn/gamma/Assign)conv_pw_12_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_12_bn/gamma/Initializer/ones:08

conv_pw_12_bn/beta:0conv_pw_12_bn/beta/Assign(conv_pw_12_bn/beta/Read/ReadVariableOp:0(2&conv_pw_12_bn/beta/Initializer/zeros:08
Ą
conv_pw_12_bn/moving_mean:0 conv_pw_12_bn/moving_mean/Assign/conv_pw_12_bn/moving_mean/Read/ReadVariableOp:0(2-conv_pw_12_bn/moving_mean/Initializer/zeros:0
°
conv_pw_12_bn/moving_variance:0$conv_pw_12_bn/moving_variance/Assign3conv_pw_12_bn/moving_variance/Read/ReadVariableOp:0(20conv_pw_12_bn/moving_variance/Initializer/ones:0
´
conv_dw_13/depthwise_kernel:0"conv_dw_13/depthwise_kernel/Assign1conv_dw_13/depthwise_kernel/Read/ReadVariableOp:0(28conv_dw_13/depthwise_kernel/Initializer/random_uniform:08

conv_dw_13_bn/gamma:0conv_dw_13_bn/gamma/Assign)conv_dw_13_bn/gamma/Read/ReadVariableOp:0(2&conv_dw_13_bn/gamma/Initializer/ones:08

conv_dw_13_bn/beta:0conv_dw_13_bn/beta/Assign(conv_dw_13_bn/beta/Read/ReadVariableOp:0(2&conv_dw_13_bn/beta/Initializer/zeros:08
Ą
conv_dw_13_bn/moving_mean:0 conv_dw_13_bn/moving_mean/Assign/conv_dw_13_bn/moving_mean/Read/ReadVariableOp:0(2-conv_dw_13_bn/moving_mean/Initializer/zeros:0
°
conv_dw_13_bn/moving_variance:0$conv_dw_13_bn/moving_variance/Assign3conv_dw_13_bn/moving_variance/Read/ReadVariableOp:0(20conv_dw_13_bn/moving_variance/Initializer/ones:0

conv_pw_13/kernel:0conv_pw_13/kernel/Assign'conv_pw_13/kernel/Read/ReadVariableOp:0(2.conv_pw_13/kernel/Initializer/random_uniform:08

conv_pw_13_bn/gamma:0conv_pw_13_bn/gamma/Assign)conv_pw_13_bn/gamma/Read/ReadVariableOp:0(2&conv_pw_13_bn/gamma/Initializer/ones:08

conv_pw_13_bn/beta:0conv_pw_13_bn/beta/Assign(conv_pw_13_bn/beta/Read/ReadVariableOp:0(2&conv_pw_13_bn/beta/Initializer/zeros:08
Ą
conv_pw_13_bn/moving_mean:0 conv_pw_13_bn/moving_mean/Assign/conv_pw_13_bn/moving_mean/Read/ReadVariableOp:0(2-conv_pw_13_bn/moving_mean/Initializer/zeros:0
°
conv_pw_13_bn/moving_variance:0$conv_pw_13_bn/moving_variance/Assign3conv_pw_13_bn/moving_variance/Read/ReadVariableOp:0(20conv_pw_13_bn/moving_variance/Initializer/ones:0
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08*Ź
serving_default
E
input_1:
	input_1:0+˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙3
dense_3(
dense_3/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict