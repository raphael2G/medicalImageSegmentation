Νέ
ΰ°
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ΐ
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Α
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
χ
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8£
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Θ*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Θ*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Θ*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Θ*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Θ*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0

conv_block_4/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv_block_4/conv2d_9/bias

.conv_block_4/conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv_block_4/conv2d_9/bias*
_output_shapes
:*
dtype0

conv_block_4/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameconv_block_4/conv2d_9/kernel

0conv_block_4/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv_block_4/conv2d_9/kernel*&
_output_shapes
:*
dtype0

conv_block_4/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv_block_4/conv2d_8/bias

.conv_block_4/conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv_block_4/conv2d_8/bias*
_output_shapes
:*
dtype0

conv_block_4/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameconv_block_4/conv2d_8/kernel

0conv_block_4/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv_block_4/conv2d_8/kernel*&
_output_shapes
: *
dtype0
€
&upconv_block_1/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&upconv_block_1/conv2d_transpose_1/bias

:upconv_block_1/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp&upconv_block_1/conv2d_transpose_1/bias*
_output_shapes
:*
dtype0
΄
(upconv_block_1/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(upconv_block_1/conv2d_transpose_1/kernel
­
<upconv_block_1/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp(upconv_block_1/conv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0

conv_block_3/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv_block_3/conv2d_7/bias

.conv_block_3/conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv_block_3/conv2d_7/bias*
_output_shapes
: *
dtype0

conv_block_3/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *-
shared_nameconv_block_3/conv2d_7/kernel

0conv_block_3/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv_block_3/conv2d_7/kernel*&
_output_shapes
:  *
dtype0

conv_block_3/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv_block_3/conv2d_6/bias

.conv_block_3/conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv_block_3/conv2d_6/bias*
_output_shapes
: *
dtype0

conv_block_3/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *-
shared_nameconv_block_3/conv2d_6/kernel

0conv_block_3/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv_block_3/conv2d_6/kernel*&
_output_shapes
:@ *
dtype0

"upconv_block/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"upconv_block/conv2d_transpose/bias

6upconv_block/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp"upconv_block/conv2d_transpose/bias*
_output_shapes
: *
dtype0
¬
$upconv_block/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$upconv_block/conv2d_transpose/kernel
₯
8upconv_block/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp$upconv_block/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0

conv_block_2/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv_block_2/conv2d_5/bias

.conv_block_2/conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv_block_2/conv2d_5/bias*
_output_shapes
:@*
dtype0

conv_block_2/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*-
shared_nameconv_block_2/conv2d_5/kernel

0conv_block_2/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv_block_2/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0

conv_block_2/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv_block_2/conv2d_4/bias

.conv_block_2/conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv_block_2/conv2d_4/bias*
_output_shapes
:@*
dtype0

conv_block_2/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_nameconv_block_2/conv2d_4/kernel

0conv_block_2/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv_block_2/conv2d_4/kernel*&
_output_shapes
: @*
dtype0

conv_block_1/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv_block_1/conv2d_3/bias

.conv_block_1/conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv_block_1/conv2d_3/bias*
_output_shapes
: *
dtype0

conv_block_1/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *-
shared_nameconv_block_1/conv2d_3/kernel

0conv_block_1/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv_block_1/conv2d_3/kernel*&
_output_shapes
:  *
dtype0

conv_block_1/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv_block_1/conv2d_2/bias

.conv_block_1/conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv_block_1/conv2d_2/bias*
_output_shapes
: *
dtype0

conv_block_1/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameconv_block_1/conv2d_2/kernel

0conv_block_1/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv_block_1/conv2d_2/kernel*&
_output_shapes
: *
dtype0

conv_block/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv_block/conv2d_1/bias

,conv_block/conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv_block/conv2d_1/bias*
_output_shapes
:*
dtype0

conv_block/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv_block/conv2d_1/kernel

.conv_block/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv_block/conv2d_1/kernel*&
_output_shapes
:*
dtype0

conv_block/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameconv_block/conv2d/bias
}
*conv_block/conv2d/bias/Read/ReadVariableOpReadVariableOpconv_block/conv2d/bias*
_output_shapes
:*
dtype0

conv_block/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv_block/conv2d/kernel

,conv_block/conv2d/kernel/Read/ReadVariableOpReadVariableOpconv_block/conv2d/kernel*&
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
­
serving_default_inputsPlaceholder*A
_output_shapes/
-:+???????????????????????????*
dtype0*6
shape-:+???????????????????????????
σ
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsconv_block/conv2d/kernelconv_block/conv2d/biasconv_block/conv2d_1/kernelconv_block/conv2d_1/biasconv_block_1/conv2d_2/kernelconv_block_1/conv2d_2/biasconv_block_1/conv2d_3/kernelconv_block_1/conv2d_3/biasconv_block_2/conv2d_4/kernelconv_block_2/conv2d_4/biasconv_block_2/conv2d_5/kernelconv_block_2/conv2d_5/bias$upconv_block/conv2d_transpose/kernel"upconv_block/conv2d_transpose/biasconv_block_3/conv2d_6/kernelconv_block_3/conv2d_6/biasconv_block_3/conv2d_7/kernelconv_block_3/conv2d_7/bias(upconv_block_1/conv2d_transpose_1/kernel&upconv_block_1/conv2d_transpose_1/biasconv_block_4/conv2d_8/kernelconv_block_4/conv2d_8/biasconv_block_4/conv2d_9/kernelconv_block_4/conv2d_9/biasconv2d_10/kernelconv2d_10/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_9300

NoOpNoOp
·έ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ρά
valueζάBβά BΪά
δ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
ξ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
conv2d_1
 	dropout_1
!activation_1
"conv2d_2
#	dropout_2
$activation_2*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
ξ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1conv2d_1
2	dropout_1
3activation_1
4conv2d_2
5	dropout_2
6activation_2*

7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
ξ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Cconv2d_1
D	dropout_1
Eactivation_1
Fconv2d_2
G	dropout_2
Hactivation_2*
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Oupconv
Pactivation_1*

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
ξ
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]conv2d_1
^	dropout_1
_activation_1
`conv2d_2
a	dropout_2
bactivation_2*
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

iupconv
jactivation_1*

k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
ξ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wconv2d_1
x	dropout_1
yactivation_1
zconv2d_2
{	dropout_2
|activation_2*
Ξ
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
δ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
‘15
’16
£17
€18
₯19
¦20
§21
¨22
©23
24
25*
δ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
‘15
’16
£17
€18
₯19
¦20
§21
¨22
©23
24
25*
* 
΅
ͺnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

―trace_0
°trace_1* 

±trace_0
²trace_1* 
* 
* 

³serving_default* 
$
0
1
2
3*
$
0
1
2
3*
* 

΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ήtrace_0
Ίtrace_1* 

»trace_0
Όtrace_1* 
Ρ
½	variables
Ύtrainable_variables
Ώregularization_losses
ΐ	keras_api
Α__call__
+Β&call_and_return_all_conditional_losses
kernel
	bias
!Γ_jit_compiled_convolution_op*
*
Δ	keras_api
Ε_random_generator* 

Ζ	variables
Ηtrainable_variables
Θregularization_losses
Ι	keras_api
Κ__call__
+Λ&call_and_return_all_conditional_losses* 
Ρ
Μ	variables
Νtrainable_variables
Ξregularization_losses
Ο	keras_api
Π__call__
+Ρ&call_and_return_all_conditional_losses
kernel
	bias
!?_jit_compiled_convolution_op*
*
Σ	keras_api
Τ_random_generator* 

Υ	variables
Φtrainable_variables
Χregularization_losses
Ψ	keras_api
Ω__call__
+Ϊ&call_and_return_all_conditional_losses* 
* 
* 
* 

Ϋnon_trainable_variables
άlayers
έmetrics
 ήlayer_regularization_losses
ίlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

ΰtrace_0* 

αtrace_0* 
$
0
1
2
3*
$
0
1
2
3*
* 

βnon_trainable_variables
γlayers
δmetrics
 εlayer_regularization_losses
ζlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

ηtrace_0
θtrace_1* 

ιtrace_0
κtrace_1* 
Ρ
λ	variables
μtrainable_variables
νregularization_losses
ξ	keras_api
ο__call__
+π&call_and_return_all_conditional_losses
kernel
	bias
!ρ_jit_compiled_convolution_op*
*
ς	keras_api
σ_random_generator* 

τ	variables
υtrainable_variables
φregularization_losses
χ	keras_api
ψ__call__
+ω&call_and_return_all_conditional_losses* 
Ρ
ϊ	variables
ϋtrainable_variables
όregularization_losses
ύ	keras_api
ώ__call__
+?&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
*
	keras_api
_random_generator* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
$
0
1
2
3*
$
0
1
2
3*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
Ρ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
*
 	keras_api
‘_random_generator* 

’	variables
£trainable_variables
€regularization_losses
₯	keras_api
¦__call__
+§&call_and_return_all_conditional_losses* 
Ρ
¨	variables
©trainable_variables
ͺregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses
kernel
	bias
!?_jit_compiled_convolution_op*
*
―	keras_api
°_random_generator* 

±	variables
²trainable_variables
³regularization_losses
΄	keras_api
΅__call__
+Ά&call_and_return_all_conditional_losses* 

0
1*

0
1*
* 

·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

Όtrace_0
½trace_1* 

Ύtrace_0
Ώtrace_1* 
Ρ
ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses
kernel
	bias
!Ζ_jit_compiled_convolution_op*

Η	variables
Θtrainable_variables
Ιregularization_losses
Κ	keras_api
Λ__call__
+Μ&call_and_return_all_conditional_losses* 
* 
* 
* 

Νnon_trainable_variables
Ξlayers
Οmetrics
 Πlayer_regularization_losses
Ρlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

?trace_0
Σtrace_1* 

Τtrace_0
Υtrace_1* 
$
 0
‘1
’2
£3*
$
 0
‘1
’2
£3*
* 

Φnon_trainable_variables
Χlayers
Ψmetrics
 Ωlayer_regularization_losses
Ϊlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

Ϋtrace_0
άtrace_1* 

έtrace_0
ήtrace_1* 
Ρ
ί	variables
ΰtrainable_variables
αregularization_losses
β	keras_api
γ__call__
+δ&call_and_return_all_conditional_losses
 kernel
	‘bias
!ε_jit_compiled_convolution_op*
*
ζ	keras_api
η_random_generator* 

θ	variables
ιtrainable_variables
κregularization_losses
λ	keras_api
μ__call__
+ν&call_and_return_all_conditional_losses* 
Ρ
ξ	variables
οtrainable_variables
πregularization_losses
ρ	keras_api
ς__call__
+σ&call_and_return_all_conditional_losses
’kernel
	£bias
!τ_jit_compiled_convolution_op*
*
υ	keras_api
φ_random_generator* 

χ	variables
ψtrainable_variables
ωregularization_losses
ϊ	keras_api
ϋ__call__
+ό&call_and_return_all_conditional_losses* 

€0
₯1*

€0
₯1*
* 

ύnon_trainable_variables
ώlayers
?metrics
 layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
Ρ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
€kernel
	₯bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
$
¦0
§1
¨2
©3*
$
¦0
§1
¨2
©3*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

‘trace_0
’trace_1* 

£trace_0
€trace_1* 
Ρ
₯	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ͺ&call_and_return_all_conditional_losses
¦kernel
	§bias
!«_jit_compiled_convolution_op*
*
¬	keras_api
­_random_generator* 

?	variables
―trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses* 
Ρ
΄	variables
΅trainable_variables
Άregularization_losses
·	keras_api
Έ__call__
+Ή&call_and_return_all_conditional_losses
¨kernel
	©bias
!Ί_jit_compiled_convolution_op*
*
»	keras_api
Ό_random_generator* 

½	variables
Ύtrainable_variables
Ώregularization_losses
ΐ	keras_api
Α__call__
+Β&call_and_return_all_conditional_losses* 

0
1*

0
1*
* 

Γnon_trainable_variables
Δlayers
Εmetrics
 Ζlayer_regularization_losses
Ηlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Θtrace_0* 

Ιtrace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Κnon_trainable_variables
Λlayers
Μmetrics
 Νlayer_regularization_losses
Ξlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Οtrace_0* 

Πtrace_0* 
* 
* 
* 

Ρnon_trainable_variables
?layers
Σmetrics
 Τlayer_regularization_losses
Υlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Φtrace_0* 

Χtrace_0* 
XR
VARIABLE_VALUEconv_block/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEconv_block/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv_block/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv_block/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv_block_1/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv_block_1/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv_block_1/conv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv_block_1/conv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv_block_2/conv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv_block_2/conv2d_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv_block_2/conv2d_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv_block_2/conv2d_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$upconv_block/conv2d_transpose/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"upconv_block/conv2d_transpose/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv_block_3/conv2d_6/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv_block_3/conv2d_6/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv_block_3/conv2d_7/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv_block_3/conv2d_7/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE(upconv_block_1/conv2d_transpose_1/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&upconv_block_1/conv2d_transpose_1/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv_block_4/conv2d_8/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv_block_4/conv2d_8/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv_block_4/conv2d_9/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv_block_4/conv2d_9/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*
4
Ψ0
Ω1
Ϊ2
Ϋ3
ά4
έ5*
* 
* 
* 
* 
* 
* 
* 
* 
.
0
 1
!2
"3
#4
$5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
½	variables
Ύtrainable_variables
Ώregularization_losses
Α__call__
+Β&call_and_return_all_conditional_losses
'Β"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Κ__call__
+Λ&call_and_return_all_conditional_losses
'Λ"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 

θnon_trainable_variables
ιlayers
κmetrics
 λlayer_regularization_losses
μlayer_metrics
Μ	variables
Νtrainable_variables
Ξregularization_losses
Π__call__
+Ρ&call_and_return_all_conditional_losses
'Ρ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
Υ	variables
Φtrainable_variables
Χregularization_losses
Ω__call__
+Ϊ&call_and_return_all_conditional_losses
'Ϊ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
10
21
32
43
54
65*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

ςnon_trainable_variables
σlayers
τmetrics
 υlayer_regularization_losses
φlayer_metrics
λ	variables
μtrainable_variables
νregularization_losses
ο__call__
+π&call_and_return_all_conditional_losses
'π"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
τ	variables
υtrainable_variables
φregularization_losses
ψ__call__
+ω&call_and_return_all_conditional_losses
'ω"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 

όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
ϊ	variables
ϋtrainable_variables
όregularization_losses
ώ__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
C0
D1
E2
F3
G4
H5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
’	variables
£trainable_variables
€regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ͺregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
±	variables
²trainable_variables
³regularization_losses
΅__call__
+Ά&call_and_return_all_conditional_losses
'Ά"call_and_return_conditional_losses* 
* 
* 
* 

O0
P1*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
* 
* 
* 
* 

‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
Η	variables
Θtrainable_variables
Ιregularization_losses
Λ__call__
+Μ&call_and_return_all_conditional_losses
'Μ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
]0
^1
_2
`3
a4
b5*
* 
* 
* 
* 
* 
* 
* 

 0
‘1*

 0
‘1*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
ί	variables
ΰtrainable_variables
αregularization_losses
γ__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

«non_trainable_variables
¬layers
­metrics
 ?layer_regularization_losses
―layer_metrics
θ	variables
ιtrainable_variables
κregularization_losses
μ__call__
+ν&call_and_return_all_conditional_losses
'ν"call_and_return_conditional_losses* 
* 
* 

’0
£1*

’0
£1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
ξ	variables
οtrainable_variables
πregularization_losses
ς__call__
+σ&call_and_return_all_conditional_losses
'σ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

΅non_trainable_variables
Άlayers
·metrics
 Έlayer_regularization_losses
Ήlayer_metrics
χ	variables
ψtrainable_variables
ωregularization_losses
ϋ__call__
+ό&call_and_return_all_conditional_losses
'ό"call_and_return_conditional_losses* 
* 
* 
* 

i0
j1*
* 
* 
* 
* 
* 
* 
* 

€0
₯1*

€0
₯1*
* 

Ίnon_trainable_variables
»layers
Όmetrics
 ½layer_regularization_losses
Ύlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ώtrace_0* 

ΐtrace_0* 
* 
* 
* 
* 

Αnon_trainable_variables
Βlayers
Γmetrics
 Δlayer_regularization_losses
Εlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
w0
x1
y2
z3
{4
|5*
* 
* 
* 
* 
* 
* 
* 

¦0
§1*

¦0
§1*
* 

Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
₯	variables
¦trainable_variables
§regularization_losses
©__call__
+ͺ&call_and_return_all_conditional_losses
'ͺ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
?	variables
―trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses* 
* 
* 

¨0
©1*

¨0
©1*
* 

Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
΄	variables
΅trainable_variables
Άregularization_losses
Έ__call__
+Ή&call_and_return_all_conditional_losses
'Ή"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
½	variables
Ύtrainable_variables
Ώregularization_losses
Α__call__
+Β&call_and_return_all_conditional_losses
'Β"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ϊ	variables
Ϋ	keras_api

άtotal

έcount*
M
ή	variables
ί	keras_api

ΰtotal

αcount
β
_fn_kwargs*
M
γ	variables
δ	keras_api

εtotal

ζcount
η
_fn_kwargs*
M
θ	variables
ι	keras_api

κtotal

λcount
μ
_fn_kwargs*
M
ν	variables
ξ	keras_api

οtotal

πcount
ρ
_fn_kwargs*
z
ς	variables
σ	keras_api
τtrue_positives
υtrue_negatives
φfalse_positives
χfalse_negatives*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ά0
έ1*

Ϊ	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ΰ0
α1*

ή	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ε0
ζ1*

γ	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

κ0
λ1*

θ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ο0
π1*

ν	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
τ0
υ1
φ2
χ3*

ς	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
π
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp,conv_block/conv2d/kernel/Read/ReadVariableOp*conv_block/conv2d/bias/Read/ReadVariableOp.conv_block/conv2d_1/kernel/Read/ReadVariableOp,conv_block/conv2d_1/bias/Read/ReadVariableOp0conv_block_1/conv2d_2/kernel/Read/ReadVariableOp.conv_block_1/conv2d_2/bias/Read/ReadVariableOp0conv_block_1/conv2d_3/kernel/Read/ReadVariableOp.conv_block_1/conv2d_3/bias/Read/ReadVariableOp0conv_block_2/conv2d_4/kernel/Read/ReadVariableOp.conv_block_2/conv2d_4/bias/Read/ReadVariableOp0conv_block_2/conv2d_5/kernel/Read/ReadVariableOp.conv_block_2/conv2d_5/bias/Read/ReadVariableOp8upconv_block/conv2d_transpose/kernel/Read/ReadVariableOp6upconv_block/conv2d_transpose/bias/Read/ReadVariableOp0conv_block_3/conv2d_6/kernel/Read/ReadVariableOp.conv_block_3/conv2d_6/bias/Read/ReadVariableOp0conv_block_3/conv2d_7/kernel/Read/ReadVariableOp.conv_block_3/conv2d_7/bias/Read/ReadVariableOp<upconv_block_1/conv2d_transpose_1/kernel/Read/ReadVariableOp:upconv_block_1/conv2d_transpose_1/bias/Read/ReadVariableOp0conv_block_4/conv2d_8/kernel/Read/ReadVariableOp.conv_block_4/conv2d_8/bias/Read/ReadVariableOp0conv_block_4/conv2d_9/kernel/Read/ReadVariableOp.conv_block_4/conv2d_9/bias/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpConst*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_10408
Λ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_10/kernelconv2d_10/biasconv_block/conv2d/kernelconv_block/conv2d/biasconv_block/conv2d_1/kernelconv_block/conv2d_1/biasconv_block_1/conv2d_2/kernelconv_block_1/conv2d_2/biasconv_block_1/conv2d_3/kernelconv_block_1/conv2d_3/biasconv_block_2/conv2d_4/kernelconv_block_2/conv2d_4/biasconv_block_2/conv2d_5/kernelconv_block_2/conv2d_5/bias$upconv_block/conv2d_transpose/kernel"upconv_block/conv2d_transpose/biasconv_block_3/conv2d_6/kernelconv_block_3/conv2d_6/biasconv_block_3/conv2d_7/kernelconv_block_3/conv2d_7/bias(upconv_block_1/conv2d_transpose_1/kernel&upconv_block_1/conv2d_transpose_1/biasconv_block_4/conv2d_8/kernelconv_block_4/conv2d_8/biasconv_block_4/conv2d_9/kernelconv_block_4/conv2d_9/biastotal_4count_4total_3count_3total_2count_2total_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negatives*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_10538ΥΞ
·
 
+__inference_upconv_block_layer_call_fn_9563

inputs!
unknown: @
	unknown_0: 
identity’StatefulPartitionedCallυ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_7985
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
Ω)
α
F__inference_conv_block_2_layer_call_and_return_conditional_losses_8727

inputsA
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ύ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_4/dropout/MulMulconv2d_4/BiasAdd:output:0 dropout_4/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@`
dropout_4/dropout/ShapeShapeconv2d_4/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@‘
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_4/ReluReludropout_4/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Χ
conv2d_5/Conv2DConv2Dactivation_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_5/dropout/MulMulconv2d_5/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@`
dropout_5/dropout/ShapeShapeconv2d_5/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@‘
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_5/ReluReludropout_5/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@
IdentityIdentityactivation_5/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@Μ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
F
ώ

>__inference_unet_layer_call_and_return_conditional_losses_8989

inputs)
conv_block_8922:
conv_block_8924:)
conv_block_8926:
conv_block_8928:+
conv_block_1_8932: 
conv_block_1_8934: +
conv_block_1_8936:  
conv_block_1_8938: +
conv_block_2_8942: @
conv_block_2_8944:@+
conv_block_2_8946:@@
conv_block_2_8948:@+
upconv_block_8951: @
upconv_block_8953: +
conv_block_3_8957:@ 
conv_block_3_8959: +
conv_block_3_8961:  
conv_block_3_8963: -
upconv_block_1_8966: !
upconv_block_1_8968:+
conv_block_4_8972: 
conv_block_4_8974:+
conv_block_4_8976:
conv_block_4_8978:(
conv2d_10_8981:
conv2d_10_8983:
identity’!conv2d_10/StatefulPartitionedCall’"conv_block/StatefulPartitionedCall’$conv_block_1/StatefulPartitionedCall’$conv_block_2/StatefulPartitionedCall’$conv_block_3/StatefulPartitionedCall’$conv_block_4/StatefulPartitionedCall’$upconv_block/StatefulPartitionedCall’&upconv_block_1/StatefulPartitionedCall²
"conv_block/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block_8922conv_block_8924conv_block_8926conv_block_8928*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_8849?
max_pooling2d/PartitionedCallPartitionedCall+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743ή
$conv_block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv_block_1_8932conv_block_1_8934conv_block_1_8936conv_block_1_8938*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_8788
max_pooling2d_1/PartitionedCallPartitionedCall-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755ΰ
$conv_block_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv_block_2_8942conv_block_2_8944conv_block_2_8946conv_block_2_8948*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_8727»
$upconv_block/StatefulPartitionedCallStatefulPartitionedCall-conv_block_2/StatefulPartitionedCall:output:0upconv_block_8951upconv_block_8953*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_8670Ή
!crop_concat_block/PartitionedCallPartitionedCall-upconv_block/StatefulPartitionedCall:output:0-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8617β
$conv_block_3/StatefulPartitionedCallStatefulPartitionedCall*crop_concat_block/PartitionedCall:output:0conv_block_3_8957conv_block_3_8959conv_block_3_8961conv_block_3_8963*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8543Γ
&upconv_block_1/StatefulPartitionedCallStatefulPartitionedCall-conv_block_3/StatefulPartitionedCall:output:0upconv_block_1_8966upconv_block_1_8968*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8486½
#crop_concat_block_1/PartitionedCallPartitionedCall/upconv_block_1/StatefulPartitionedCall:output:0+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8433δ
$conv_block_4/StatefulPartitionedCallStatefulPartitionedCall,crop_concat_block_1/PartitionedCall:output:0conv_block_4_8972conv_block_4_8974conv_block_4_8976conv_block_4_8978*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8359―
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-conv_block_4/StatefulPartitionedCall:output:0conv2d_10_8981conv2d_10_8983*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211ώ
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_12_layer_call_and_return_conditional_losses_8222ξ
outputs/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_outputs_layer_call_and_return_conditional_losses_8229
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ϋ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall#^conv_block/StatefulPartitionedCall%^conv_block_1/StatefulPartitionedCall%^conv_block_2/StatefulPartitionedCall%^conv_block_3/StatefulPartitionedCall%^conv_block_4/StatefulPartitionedCall%^upconv_block/StatefulPartitionedCall'^upconv_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2H
"conv_block/StatefulPartitionedCall"conv_block/StatefulPartitionedCall2L
$conv_block_1/StatefulPartitionedCall$conv_block_1/StatefulPartitionedCall2L
$conv_block_2/StatefulPartitionedCall$conv_block_2/StatefulPartitionedCall2L
$conv_block_3/StatefulPartitionedCall$conv_block_3/StatefulPartitionedCall2L
$conv_block_4/StatefulPartitionedCall$conv_block_4/StatefulPartitionedCall2L
$upconv_block/StatefulPartitionedCall$upconv_block/StatefulPartitionedCall2P
&upconv_block_1/StatefulPartitionedCall&upconv_block_1/StatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Α
Y
2__inference_crop_concat_block_1_layer_call_fn_9950
x

down_layer
identityΪ
PartitionedCallPartitionedCallx
down_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8433z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
·
 
+__inference_upconv_block_layer_call_fn_9572

inputs!
unknown: @
	unknown_0: 
identity’StatefulPartitionedCallυ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_8670
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?/
α
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9938

inputsU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity’)conv2d_transpose_1/BiasAdd/ReadVariableOp’2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_2StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_2/stack:output:03conv2d_transpose_1/strided_slice_2/stack_1:output:03conv2d_transpose_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mulMul+conv2d_transpose_1/strided_slice_1:output:0!conv2d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/addAddV2conv2d_transpose_1/mul:z:0!conv2d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mul_1Mul+conv2d_transpose_1/strided_slice_2:output:0#conv2d_transpose_1/mul_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/add_1AddV2conv2d_transpose_1/mul_1:z:0#conv2d_transpose_1/add_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ψ
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0conv2d_transpose_1/add:z:0conv2d_transpose_1/add_1:z:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_3StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_3/stack:output:03conv2d_transpose_1/strided_slice_3/stack_1:output:03conv2d_transpose_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΆ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_9/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_9/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????§
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
1
u
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10056
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+???????????????????????????*

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+??????????????????????????? q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
F
ώ

>__inference_unet_layer_call_and_return_conditional_losses_9171

inputs)
conv_block_9104:
conv_block_9106:)
conv_block_9108:
conv_block_9110:+
conv_block_1_9114: 
conv_block_1_9116: +
conv_block_1_9118:  
conv_block_1_9120: +
conv_block_2_9124: @
conv_block_2_9126:@+
conv_block_2_9128:@@
conv_block_2_9130:@+
upconv_block_9133: @
upconv_block_9135: +
conv_block_3_9139:@ 
conv_block_3_9141: +
conv_block_3_9143:  
conv_block_3_9145: -
upconv_block_1_9148: !
upconv_block_1_9150:+
conv_block_4_9154: 
conv_block_4_9156:+
conv_block_4_9158:
conv_block_4_9160:(
conv2d_10_9163:
conv2d_10_9165:
identity’!conv2d_10/StatefulPartitionedCall’"conv_block/StatefulPartitionedCall’$conv_block_1/StatefulPartitionedCall’$conv_block_2/StatefulPartitionedCall’$conv_block_3/StatefulPartitionedCall’$conv_block_4/StatefulPartitionedCall’$upconv_block/StatefulPartitionedCall’&upconv_block_1/StatefulPartitionedCall²
"conv_block/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block_9104conv_block_9106conv_block_9108conv_block_9110*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_7879?
max_pooling2d/PartitionedCallPartitionedCall+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743ή
$conv_block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv_block_1_9114conv_block_1_9116conv_block_1_9118conv_block_1_9120*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_7908
max_pooling2d_1/PartitionedCallPartitionedCall-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755ΰ
$conv_block_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv_block_2_9124conv_block_2_9126conv_block_2_9128conv_block_2_9130*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_7937»
$upconv_block/StatefulPartitionedCallStatefulPartitionedCall-conv_block_2/StatefulPartitionedCall:output:0upconv_block_9133upconv_block_9135*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_7985Ή
!crop_concat_block/PartitionedCallPartitionedCall-upconv_block/StatefulPartitionedCall:output:0-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8044β
$conv_block_3/StatefulPartitionedCallStatefulPartitionedCall*crop_concat_block/PartitionedCall:output:0conv_block_3_9139conv_block_3_9141conv_block_3_9143conv_block_3_9145*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8064Γ
&upconv_block_1/StatefulPartitionedCallStatefulPartitionedCall-conv_block_3/StatefulPartitionedCall:output:0upconv_block_1_9148upconv_block_1_9150*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8112½
#crop_concat_block_1/PartitionedCallPartitionedCall/upconv_block_1/StatefulPartitionedCall:output:0+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8171δ
$conv_block_4/StatefulPartitionedCallStatefulPartitionedCall,crop_concat_block_1/PartitionedCall:output:0conv_block_4_9154conv_block_4_9156conv_block_4_9158conv_block_4_9160*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8191―
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-conv_block_4/StatefulPartitionedCall:output:0conv2d_10_9163conv2d_10_9165*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211ώ
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_12_layer_call_and_return_conditional_losses_8222ξ
outputs/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_outputs_layer_call_and_return_conditional_losses_8229
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ϋ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall#^conv_block/StatefulPartitionedCall%^conv_block_1/StatefulPartitionedCall%^conv_block_2/StatefulPartitionedCall%^conv_block_3/StatefulPartitionedCall%^conv_block_4/StatefulPartitionedCall%^upconv_block/StatefulPartitionedCall'^upconv_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2H
"conv_block/StatefulPartitionedCall"conv_block/StatefulPartitionedCall2L
$conv_block_1/StatefulPartitionedCall$conv_block_1/StatefulPartitionedCall2L
$conv_block_2/StatefulPartitionedCall$conv_block_2/StatefulPartitionedCall2L
$conv_block_3/StatefulPartitionedCall$conv_block_3/StatefulPartitionedCall2L
$conv_block_4/StatefulPartitionedCall$conv_block_4/StatefulPartitionedCall2L
$upconv_block/StatefulPartitionedCall$upconv_block/StatefulPartitionedCall2P
&upconv_block_1/StatefulPartitionedCall&upconv_block_1/StatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
υ

"__inference_signature_wrapper_9300

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_7734
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_2_layer_call_fn_9489

inputs!
unknown: @
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_7937
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ΐ
₯
0__inference_conv2d_transpose_layer_call_fn_10182

inputs!
unknown: @
	unknown_0: 
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7799
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?/
α
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9900

inputsU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity’)conv2d_transpose_1/BiasAdd/ReadVariableOp’2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_2StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_2/stack:output:03conv2d_transpose_1/strided_slice_2/stack_1:output:03conv2d_transpose_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mulMul+conv2d_transpose_1/strided_slice_1:output:0!conv2d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/addAddV2conv2d_transpose_1/mul:z:0!conv2d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mul_1Mul+conv2d_transpose_1/strided_slice_2:output:0#conv2d_transpose_1/mul_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/add_1AddV2conv2d_transpose_1/mul_1:z:0#conv2d_transpose_1/add_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ψ
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0conv2d_transpose_1/add:z:0conv2d_transpose_1/add_1:z:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_3StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_3/stack:output:03conv2d_transpose_1/strided_slice_3/stack_1:output:03conv2d_transpose_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΆ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_9/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_9/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????§
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
	
ί
,__inference_conv_block_4_layer_call_fn_10069

inputs!
unknown: 
	unknown_0:#
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8191
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ύ"

J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_7799

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
Δ
§
2__inference_conv2d_transpose_1_layer_call_fn_10228

inputs!
unknown: 
	unknown_0:
identity’StatefulPartitionedCallϋ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7847
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
Δ
Χ
D__inference_conv_block_layer_call_and_return_conditional_losses_7879

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity’conv2d/BiasAdd/ReadVariableOp’conv2d/Conv2D/ReadVariableOp’conv2d_1/BiasAdd/ReadVariableOp’conv2d_1/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ί
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0€
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????|
activation/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Υ
conv2d_1/Conv2DConv2Dactivation/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_1/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Θ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
	
ί
,__inference_conv_block_4_layer_call_fn_10082

inputs!
unknown: 
	unknown_0:#
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8359
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_1_layer_call_fn_9401

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_7908
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

C
'__inference_outputs_layer_call_fn_10168

inputs
identityΖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_outputs_layer_call_and_return_conditional_losses_8229z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ΏO
Ρ
__inference__traced_save_10408
file_prefix/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop7
3savev2_conv_block_conv2d_kernel_read_readvariableop5
1savev2_conv_block_conv2d_bias_read_readvariableop9
5savev2_conv_block_conv2d_1_kernel_read_readvariableop7
3savev2_conv_block_conv2d_1_bias_read_readvariableop;
7savev2_conv_block_1_conv2d_2_kernel_read_readvariableop9
5savev2_conv_block_1_conv2d_2_bias_read_readvariableop;
7savev2_conv_block_1_conv2d_3_kernel_read_readvariableop9
5savev2_conv_block_1_conv2d_3_bias_read_readvariableop;
7savev2_conv_block_2_conv2d_4_kernel_read_readvariableop9
5savev2_conv_block_2_conv2d_4_bias_read_readvariableop;
7savev2_conv_block_2_conv2d_5_kernel_read_readvariableop9
5savev2_conv_block_2_conv2d_5_bias_read_readvariableopC
?savev2_upconv_block_conv2d_transpose_kernel_read_readvariableopA
=savev2_upconv_block_conv2d_transpose_bias_read_readvariableop;
7savev2_conv_block_3_conv2d_6_kernel_read_readvariableop9
5savev2_conv_block_3_conv2d_6_bias_read_readvariableop;
7savev2_conv_block_3_conv2d_7_kernel_read_readvariableop9
5savev2_conv_block_3_conv2d_7_bias_read_readvariableopG
Csavev2_upconv_block_1_conv2d_transpose_1_kernel_read_readvariableopE
Asavev2_upconv_block_1_conv2d_transpose_1_bias_read_readvariableop;
7savev2_conv_block_4_conv2d_8_kernel_read_readvariableop9
5savev2_conv_block_4_conv2d_8_bias_read_readvariableop;
7savev2_conv_block_4_conv2d_9_kernel_read_readvariableop9
5savev2_conv_block_4_conv2d_9_bias_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ΰ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*
value?Bό)B6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΏ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop3savev2_conv_block_conv2d_kernel_read_readvariableop1savev2_conv_block_conv2d_bias_read_readvariableop5savev2_conv_block_conv2d_1_kernel_read_readvariableop3savev2_conv_block_conv2d_1_bias_read_readvariableop7savev2_conv_block_1_conv2d_2_kernel_read_readvariableop5savev2_conv_block_1_conv2d_2_bias_read_readvariableop7savev2_conv_block_1_conv2d_3_kernel_read_readvariableop5savev2_conv_block_1_conv2d_3_bias_read_readvariableop7savev2_conv_block_2_conv2d_4_kernel_read_readvariableop5savev2_conv_block_2_conv2d_4_bias_read_readvariableop7savev2_conv_block_2_conv2d_5_kernel_read_readvariableop5savev2_conv_block_2_conv2d_5_bias_read_readvariableop?savev2_upconv_block_conv2d_transpose_kernel_read_readvariableop=savev2_upconv_block_conv2d_transpose_bias_read_readvariableop7savev2_conv_block_3_conv2d_6_kernel_read_readvariableop5savev2_conv_block_3_conv2d_6_bias_read_readvariableop7savev2_conv_block_3_conv2d_7_kernel_read_readvariableop5savev2_conv_block_3_conv2d_7_bias_read_readvariableopCsavev2_upconv_block_1_conv2d_transpose_1_kernel_read_readvariableopAsavev2_upconv_block_1_conv2d_transpose_1_bias_read_readvariableop7savev2_conv_block_4_conv2d_8_kernel_read_readvariableop5savev2_conv_block_4_conv2d_8_bias_read_readvariableop7savev2_conv_block_4_conv2d_9_kernel_read_readvariableop5savev2_conv_block_4_conv2d_9_bias_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesο
μ: ::::::: : :  : : @:@:@@:@: @: :@ : :  : : :: :::: : : : : : : : : : :Θ:Θ:Θ:Θ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
:  : 


_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :!%

_output_shapes	
:Θ:!&

_output_shapes	
:Θ:!'

_output_shapes	
:Θ:!(

_output_shapes	
:Θ:)

_output_shapes
: 
?/
α
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8486

inputsU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity’)conv2d_transpose_1/BiasAdd/ReadVariableOp’2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_2StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_2/stack:output:03conv2d_transpose_1/strided_slice_2/stack_1:output:03conv2d_transpose_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mulMul+conv2d_transpose_1/strided_slice_1:output:0!conv2d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/addAddV2conv2d_transpose_1/mul:z:0!conv2d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mul_1Mul+conv2d_transpose_1/strided_slice_2:output:0#conv2d_transpose_1/mul_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/add_1AddV2conv2d_transpose_1/mul_1:z:0#conv2d_transpose_1/add_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ψ
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0conv2d_transpose_1/add:z:0conv2d_transpose_1/add_1:z:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_3StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_3/stack:output:03conv2d_transpose_1/strided_slice_3/stack_1:output:03conv2d_transpose_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΆ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_9/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_9/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????§
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
σ
α
F__inference_conv_block_2_layer_call_and_return_conditional_losses_7937

inputsA
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ύ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Χ
conv2d_5/Conv2DConv2Dactivation_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
IdentityIdentityactivation_5/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@Μ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
°
H
,__inference_max_pooling2d_layer_call_fn_9383

inputs
identityΥ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

φ
!__inference__traced_restore_10538
file_prefix;
!assignvariableop_conv2d_10_kernel:/
!assignvariableop_1_conv2d_10_bias:E
+assignvariableop_2_conv_block_conv2d_kernel:7
)assignvariableop_3_conv_block_conv2d_bias:G
-assignvariableop_4_conv_block_conv2d_1_kernel:9
+assignvariableop_5_conv_block_conv2d_1_bias:I
/assignvariableop_6_conv_block_1_conv2d_2_kernel: ;
-assignvariableop_7_conv_block_1_conv2d_2_bias: I
/assignvariableop_8_conv_block_1_conv2d_3_kernel:  ;
-assignvariableop_9_conv_block_1_conv2d_3_bias: J
0assignvariableop_10_conv_block_2_conv2d_4_kernel: @<
.assignvariableop_11_conv_block_2_conv2d_4_bias:@J
0assignvariableop_12_conv_block_2_conv2d_5_kernel:@@<
.assignvariableop_13_conv_block_2_conv2d_5_bias:@R
8assignvariableop_14_upconv_block_conv2d_transpose_kernel: @D
6assignvariableop_15_upconv_block_conv2d_transpose_bias: J
0assignvariableop_16_conv_block_3_conv2d_6_kernel:@ <
.assignvariableop_17_conv_block_3_conv2d_6_bias: J
0assignvariableop_18_conv_block_3_conv2d_7_kernel:  <
.assignvariableop_19_conv_block_3_conv2d_7_bias: V
<assignvariableop_20_upconv_block_1_conv2d_transpose_1_kernel: H
:assignvariableop_21_upconv_block_1_conv2d_transpose_1_bias:J
0assignvariableop_22_conv_block_4_conv2d_8_kernel: <
.assignvariableop_23_conv_block_4_conv2d_8_bias:J
0assignvariableop_24_conv_block_4_conv2d_9_kernel:<
.assignvariableop_25_conv_block_4_conv2d_9_bias:%
assignvariableop_26_total_4: %
assignvariableop_27_count_4: %
assignvariableop_28_total_3: %
assignvariableop_29_count_3: %
assignvariableop_30_total_2: %
assignvariableop_31_count_2: %
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 1
"assignvariableop_36_true_positives:	Θ1
"assignvariableop_37_true_negatives:	Θ2
#assignvariableop_38_false_positives:	Θ2
#assignvariableop_39_false_negatives:	Θ
identity_41’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9γ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*
value?Bό)B6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΒ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ξ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ί
_output_shapes§
€:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp+assignvariableop_2_conv_block_conv2d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp)assignvariableop_3_conv_block_conv2d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp-assignvariableop_4_conv_block_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp+assignvariableop_5_conv_block_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp/assignvariableop_6_conv_block_1_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp-assignvariableop_7_conv_block_1_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_conv_block_1_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp-assignvariableop_9_conv_block_1_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_10AssignVariableOp0assignvariableop_10_conv_block_2_conv2d_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp.assignvariableop_11_conv_block_2_conv2d_4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_12AssignVariableOp0assignvariableop_12_conv_block_2_conv2d_5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp.assignvariableop_13_conv_block_2_conv2d_5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_14AssignVariableOp8assignvariableop_14_upconv_block_conv2d_transpose_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_15AssignVariableOp6assignvariableop_15_upconv_block_conv2d_transpose_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_16AssignVariableOp0assignvariableop_16_conv_block_3_conv2d_6_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp.assignvariableop_17_conv_block_3_conv2d_6_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_18AssignVariableOp0assignvariableop_18_conv_block_3_conv2d_7_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_conv_block_3_conv2d_7_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_20AssignVariableOp<assignvariableop_20_upconv_block_1_conv2d_transpose_1_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp:assignvariableop_21_upconv_block_1_conv2d_transpose_1_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_22AssignVariableOp0assignvariableop_22_conv_block_4_conv2d_8_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp.assignvariableop_23_conv_block_4_conv2d_8_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_24AssignVariableOp0assignvariableop_24_conv_block_4_conv2d_9_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp.assignvariableop_25_conv_block_4_conv2d_9_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_4Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_4Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_3Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_3Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp"assignvariableop_36_true_positivesIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp"assignvariableop_37_true_negativesIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp#assignvariableop_38_false_positivesIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp#assignvariableop_39_false_negativesIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ώ
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ¬
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
.
Χ
F__inference_upconv_block_layer_call_and_return_conditional_losses_7985

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: 
identity’'conv2d_transpose/BiasAdd/ReadVariableOp’0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B : y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ξ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Μ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_6/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_6/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? £
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
½
W
0__inference_crop_concat_block_layer_call_fn_9654
x

down_layer
identityΨ
PartitionedCallPartitionedCallx
down_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8044z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
ώ"

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_10219

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
	
ά
)__inference_conv_block_layer_call_fn_9326

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_8849
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
1
t
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8171
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+???????????????????????????*

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+??????????????????????????? q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
²

)__inference_conv2d_10_layer_call_fn_10143

inputs!
unknown:
	unknown_0:
identity’StatefulPartitionedCallς
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?"

L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_7847

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
³
c
G__inference_activation_12_layer_call_and_return_conditional_losses_8222

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
»
’
-__inference_upconv_block_1_layer_call_fn_9853

inputs!
unknown: 
	unknown_0:
identity’StatefulPartitionedCallχ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8112
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
.
Χ
F__inference_upconv_block_layer_call_and_return_conditional_losses_9610

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: 
identity’'conv2d_transpose/BiasAdd/ReadVariableOp’0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B : y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ξ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Μ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_6/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_6/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? £
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ή)
β
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10134

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:
identity’conv2d_8/BiasAdd/ReadVariableOp’conv2d_8/Conv2D/ReadVariableOp’conv2d_9/BiasAdd/ReadVariableOp’conv2d_9/Conv2D/ReadVariableOp
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_8/dropout/MulMulconv2d_8/BiasAdd:output:0 dropout_8/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_8/dropout/ShapeShapeconv2d_8/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_10/ReluReludropout_8/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ψ
conv2d_9/Conv2DConv2D activation_10/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_9/dropout/MulMulconv2d_9/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_9/dropout/ShapeShapeconv2d_9/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_11/ReluReludropout_9/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentity activation_11/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Μ
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
Ω)
α
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9554

inputsA
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ύ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_4/dropout/MulMulconv2d_4/BiasAdd:output:0 dropout_4/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@`
dropout_4/dropout/ShapeShapeconv2d_4/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@‘
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_4/ReluReludropout_4/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Χ
conv2d_5/Conv2DConv2Dactivation_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_5/dropout/MulMulconv2d_5/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@`
dropout_5/dropout/ShapeShapeconv2d_5/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????@‘
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_5/ReluReludropout_5/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@
IdentityIdentityactivation_5/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@Μ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9476

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ψ
β
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10100

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:
identity’conv2d_8/BiasAdd/ReadVariableOp’conv2d_8/Conv2D/ReadVariableOp’conv2d_9/BiasAdd/ReadVariableOp’conv2d_9/Conv2D/ReadVariableOp
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ψ
conv2d_9/Conv2DConv2D activation_10/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentity activation_11/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Μ
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

I
-__inference_activation_12_layer_call_fn_10158

inputs
identityΜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_12_layer_call_and_return_conditional_losses_8222z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_3_layer_call_fn_9779

inputs!
unknown:@ 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8064
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
1
t
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8433
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+???????????????????????????*

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+??????????????????????????? q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
#

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_10265

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0έ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
1
u
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10003
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+???????????????????????????*

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+??????????????????????????? q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
Ω)
α
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8543

inputsA
'conv2d_6_conv2d_readvariableop_resource:@ 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: 
identity’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ύ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_6/dropout/MulMulconv2d_6/BiasAdd:output:0 dropout_6/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_6/dropout/ShapeShapeconv2d_6/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_7/ReluReludropout_6/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_7/Conv2DConv2Dactivation_7/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_7/dropout/MulMulconv2d_7/BiasAdd:output:0 dropout_7/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_7/dropout/ShapeShapeconv2d_7/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_8/ReluReludropout_7/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_8/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_2_layer_call_fn_9502

inputs!
unknown: @
	unknown_0:@#
	unknown_1:@@
	unknown_2:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_8727
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
΄
J
.__inference_max_pooling2d_1_layer_call_fn_9471

inputs
identityΧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
1
r
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8617
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+??????????????????????????? *

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
Δ
Χ
D__inference_conv_block_layer_call_and_return_conditional_losses_9344

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity’conv2d/BiasAdd/ReadVariableOp’conv2d/Conv2D/ReadVariableOp’conv2d_1/BiasAdd/ReadVariableOp’conv2d_1/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ί
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0€
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????|
activation/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Υ
conv2d_1/Conv2DConv2Dactivation/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_1/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Θ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
F
ώ

>__inference_unet_layer_call_and_return_conditional_losses_9241

inputs)
conv_block_9174:
conv_block_9176:)
conv_block_9178:
conv_block_9180:+
conv_block_1_9184: 
conv_block_1_9186: +
conv_block_1_9188:  
conv_block_1_9190: +
conv_block_2_9194: @
conv_block_2_9196:@+
conv_block_2_9198:@@
conv_block_2_9200:@+
upconv_block_9203: @
upconv_block_9205: +
conv_block_3_9209:@ 
conv_block_3_9211: +
conv_block_3_9213:  
conv_block_3_9215: -
upconv_block_1_9218: !
upconv_block_1_9220:+
conv_block_4_9224: 
conv_block_4_9226:+
conv_block_4_9228:
conv_block_4_9230:(
conv2d_10_9233:
conv2d_10_9235:
identity’!conv2d_10/StatefulPartitionedCall’"conv_block/StatefulPartitionedCall’$conv_block_1/StatefulPartitionedCall’$conv_block_2/StatefulPartitionedCall’$conv_block_3/StatefulPartitionedCall’$conv_block_4/StatefulPartitionedCall’$upconv_block/StatefulPartitionedCall’&upconv_block_1/StatefulPartitionedCall²
"conv_block/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block_9174conv_block_9176conv_block_9178conv_block_9180*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_8849?
max_pooling2d/PartitionedCallPartitionedCall+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743ή
$conv_block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv_block_1_9184conv_block_1_9186conv_block_1_9188conv_block_1_9190*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_8788
max_pooling2d_1/PartitionedCallPartitionedCall-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755ΰ
$conv_block_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv_block_2_9194conv_block_2_9196conv_block_2_9198conv_block_2_9200*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_8727»
$upconv_block/StatefulPartitionedCallStatefulPartitionedCall-conv_block_2/StatefulPartitionedCall:output:0upconv_block_9203upconv_block_9205*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_8670Ή
!crop_concat_block/PartitionedCallPartitionedCall-upconv_block/StatefulPartitionedCall:output:0-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8617β
$conv_block_3/StatefulPartitionedCallStatefulPartitionedCall*crop_concat_block/PartitionedCall:output:0conv_block_3_9209conv_block_3_9211conv_block_3_9213conv_block_3_9215*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8543Γ
&upconv_block_1/StatefulPartitionedCallStatefulPartitionedCall-conv_block_3/StatefulPartitionedCall:output:0upconv_block_1_9218upconv_block_1_9220*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8486½
#crop_concat_block_1/PartitionedCallPartitionedCall/upconv_block_1/StatefulPartitionedCall:output:0+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8433δ
$conv_block_4/StatefulPartitionedCallStatefulPartitionedCall,crop_concat_block_1/PartitionedCall:output:0conv_block_4_9224conv_block_4_9226conv_block_4_9228conv_block_4_9230*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8359―
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-conv_block_4/StatefulPartitionedCall:output:0conv2d_10_9233conv2d_10_9235*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211ώ
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_12_layer_call_and_return_conditional_losses_8222ξ
outputs/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_outputs_layer_call_and_return_conditional_losses_8229
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ϋ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall#^conv_block/StatefulPartitionedCall%^conv_block_1/StatefulPartitionedCall%^conv_block_2/StatefulPartitionedCall%^conv_block_3/StatefulPartitionedCall%^conv_block_4/StatefulPartitionedCall%^upconv_block/StatefulPartitionedCall'^upconv_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2H
"conv_block/StatefulPartitionedCall"conv_block/StatefulPartitionedCall2L
$conv_block_1/StatefulPartitionedCall$conv_block_1/StatefulPartitionedCall2L
$conv_block_2/StatefulPartitionedCall$conv_block_2/StatefulPartitionedCall2L
$conv_block_3/StatefulPartitionedCall$conv_block_3/StatefulPartitionedCall2L
$conv_block_4/StatefulPartitionedCall$conv_block_4/StatefulPartitionedCall2L
$upconv_block/StatefulPartitionedCall$upconv_block/StatefulPartitionedCall2P
&upconv_block_1/StatefulPartitionedCall&upconv_block_1/StatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
΄
d
H__inference_activation_12_layer_call_and_return_conditional_losses_10163

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
1
r
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9766
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+??????????????????????????? *

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
σ
α
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8064

inputsA
'conv2d_6_conv2d_readvariableop_resource:@ 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: 
identity’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ύ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_7/ReluReluconv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_7/Conv2DConv2Dactivation_7/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_8/ReluReluconv2d_7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_8/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

ύ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_10153

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
F
ώ

>__inference_unet_layer_call_and_return_conditional_losses_8232

inputs)
conv_block_7880:
conv_block_7882:)
conv_block_7884:
conv_block_7886:+
conv_block_1_7909: 
conv_block_1_7911: +
conv_block_1_7913:  
conv_block_1_7915: +
conv_block_2_7938: @
conv_block_2_7940:@+
conv_block_2_7942:@@
conv_block_2_7944:@+
upconv_block_7986: @
upconv_block_7988: +
conv_block_3_8065:@ 
conv_block_3_8067: +
conv_block_3_8069:  
conv_block_3_8071: -
upconv_block_1_8113: !
upconv_block_1_8115:+
conv_block_4_8192: 
conv_block_4_8194:+
conv_block_4_8196:
conv_block_4_8198:(
conv2d_10_8212:
conv2d_10_8214:
identity’!conv2d_10/StatefulPartitionedCall’"conv_block/StatefulPartitionedCall’$conv_block_1/StatefulPartitionedCall’$conv_block_2/StatefulPartitionedCall’$conv_block_3/StatefulPartitionedCall’$conv_block_4/StatefulPartitionedCall’$upconv_block/StatefulPartitionedCall’&upconv_block_1/StatefulPartitionedCall²
"conv_block/StatefulPartitionedCallStatefulPartitionedCallinputsconv_block_7880conv_block_7882conv_block_7884conv_block_7886*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_7879?
max_pooling2d/PartitionedCallPartitionedCall+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7743ή
$conv_block_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv_block_1_7909conv_block_1_7911conv_block_1_7913conv_block_1_7915*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_7908
max_pooling2d_1/PartitionedCallPartitionedCall-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7755ΰ
$conv_block_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv_block_2_7938conv_block_2_7940conv_block_2_7942conv_block_2_7944*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_2_layer_call_and_return_conditional_losses_7937»
$upconv_block/StatefulPartitionedCallStatefulPartitionedCall-conv_block_2/StatefulPartitionedCall:output:0upconv_block_7986upconv_block_7988*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_upconv_block_layer_call_and_return_conditional_losses_7985Ή
!crop_concat_block/PartitionedCallPartitionedCall-upconv_block/StatefulPartitionedCall:output:0-conv_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8044β
$conv_block_3/StatefulPartitionedCallStatefulPartitionedCall*crop_concat_block/PartitionedCall:output:0conv_block_3_8065conv_block_3_8067conv_block_3_8069conv_block_3_8071*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8064Γ
&upconv_block_1/StatefulPartitionedCallStatefulPartitionedCall-conv_block_3/StatefulPartitionedCall:output:0upconv_block_1_8113upconv_block_1_8115*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8112½
#crop_concat_block_1/PartitionedCallPartitionedCall/upconv_block_1/StatefulPartitionedCall:output:0+conv_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8171δ
$conv_block_4/StatefulPartitionedCallStatefulPartitionedCall,crop_concat_block_1/PartitionedCall:output:0conv_block_4_8192conv_block_4_8194conv_block_4_8196conv_block_4_8198*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8191―
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall-conv_block_4/StatefulPartitionedCall:output:0conv2d_10_8212conv2d_10_8214*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211ώ
activation_12/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_12_layer_call_and_return_conditional_losses_8222ξ
outputs/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_outputs_layer_call_and_return_conditional_losses_8229
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????ϋ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall#^conv_block/StatefulPartitionedCall%^conv_block_1/StatefulPartitionedCall%^conv_block_2/StatefulPartitionedCall%^conv_block_3/StatefulPartitionedCall%^conv_block_4/StatefulPartitionedCall%^upconv_block/StatefulPartitionedCall'^upconv_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2H
"conv_block/StatefulPartitionedCall"conv_block/StatefulPartitionedCall2L
$conv_block_1/StatefulPartitionedCall$conv_block_1/StatefulPartitionedCall2L
$conv_block_2/StatefulPartitionedCall$conv_block_2/StatefulPartitionedCall2L
$conv_block_3/StatefulPartitionedCall$conv_block_3/StatefulPartitionedCall2L
$conv_block_4/StatefulPartitionedCall$conv_block_4/StatefulPartitionedCall2L
$upconv_block/StatefulPartitionedCall$upconv_block/StatefulPartitionedCall2P
&upconv_block_1/StatefulPartitionedCall&upconv_block_1/StatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ω)
α
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9466

inputsA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: 
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_2/dropout/MulMulconv2d_2/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_2/dropout/ShapeShapeconv2d_2/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_2/ReluReludropout_2/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_3/Conv2DConv2Dactivation_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_3/dropout/MulMulconv2d_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_3/dropout/ShapeShapeconv2d_3/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_3/ReluReludropout_3/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_3/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_3_layer_call_fn_9792

inputs!
unknown:@ 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_3_layer_call_and_return_conditional_losses_8543
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
σ
α
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9432

inputsA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: 
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_3/Conv2DConv2Dactivation_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_3/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
1
r
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9713
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+??????????????????????????? *

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
Α
Y
2__inference_crop_concat_block_1_layer_call_fn_9944
x

down_layer
identityΪ
PartitionedCallPartitionedCallx
down_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_8171z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+???????????????????????????:+???????????????????????????:d `
A
_output_shapes/
-:+???????????????????????????

_user_specified_namex:mi
A
_output_shapes/
-:+???????????????????????????
$
_user_specified_name
down_layer
²
]
A__inference_outputs_layer_call_and_return_conditional_losses_8229

inputs
identityf
SoftmaxSoftmaxinputs*
T0*A
_output_shapes/
-:+???????????????????????????s
IdentityIdentitySoftmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
»
’
-__inference_upconv_block_1_layer_call_fn_9862

inputs!
unknown: 
	unknown_0:
identity’StatefulPartitionedCallχ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8486
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
³
^
B__inference_outputs_layer_call_and_return_conditional_losses_10173

inputs
identityf
SoftmaxSoftmaxinputs*
T0*A
_output_shapes/
-:+???????????????????????????s
IdentityIdentitySoftmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
έ)
α
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8359

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:
identity’conv2d_8/BiasAdd/ReadVariableOp’conv2d_8/Conv2D/ReadVariableOp’conv2d_9/BiasAdd/ReadVariableOp’conv2d_9/Conv2D/ReadVariableOp
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_8/dropout/MulMulconv2d_8/BiasAdd:output:0 dropout_8/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_8/dropout/ShapeShapeconv2d_8/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_10/ReluReludropout_8/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ψ
conv2d_9/Conv2DConv2D activation_10/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_9/dropout/MulMulconv2d_9/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_9/dropout/ShapeShapeconv2d_9/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_11/ReluReludropout_9/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentity activation_11/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Μ
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
σ
α
F__inference_conv_block_1_layer_call_and_return_conditional_losses_7908

inputsA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: 
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_3/Conv2DConv2Dactivation_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_3/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?/
α
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_8112

inputsU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_1_biasadd_readvariableop_resource:
identity’)conv2d_transpose_1/BiasAdd/ReadVariableOp’2conv2d_transpose_1/conv2d_transpose/ReadVariableOpN
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv2d_transpose_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_2StridedSlice!conv2d_transpose_1/Shape:output:01conv2d_transpose_1/strided_slice_2/stack:output:03conv2d_transpose_1/strided_slice_2/stack_1:output:03conv2d_transpose_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mulMul+conv2d_transpose_1/strided_slice_1:output:0!conv2d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/addAddV2conv2d_transpose_1/mul:z:0!conv2d_transpose_1/add/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose_1/mul_1Mul+conv2d_transpose_1/strided_slice_2:output:0#conv2d_transpose_1/mul_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose_1/add_1AddV2conv2d_transpose_1/mul_1:z:0#conv2d_transpose_1/add_1/y:output:0*
T0*
_output_shapes
: \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ψ
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0conv2d_transpose_1/add:z:0conv2d_transpose_1/add_1:z:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Έ
"conv2d_transpose_1/strided_slice_3StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_3/stack:output:03conv2d_transpose_1/strided_slice_3/stack_1:output:03conv2d_transpose_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΆ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_9/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_9/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????§
NoOpNoOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
.
Χ
F__inference_upconv_block_layer_call_and_return_conditional_losses_8670

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: 
identity’'conv2d_transpose/BiasAdd/ReadVariableOp’0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B : y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ξ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Μ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_6/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_6/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? £
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
Ω)
α
F__inference_conv_block_1_layer_call_and_return_conditional_losses_8788

inputsA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: 
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_2/dropout/MulMulconv2d_2/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_2/dropout/ShapeShapeconv2d_2/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_2/ReluReludropout_2/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_3/Conv2DConv2Dactivation_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_3/dropout/MulMulconv2d_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_3/dropout/ShapeShapeconv2d_3/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_3/ReluReludropout_3/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_3/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
1
r
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8044
x

down_layer
identity?
ShapeShape
down_layer*
T0*
_output_shapes
:8
Shape_1Shapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
subSubstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: L

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :S
floordivFloorDivsub:z:0floordiv/y:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sub_1Substrided_slice_2:output:0strided_slice_3:output:0*
T0*
_output_shapes
: N
floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y

floordiv_1FloorDiv	sub_1:z:0floordiv_1/y:output:0*
T0*
_output_shapes
: _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_4StridedSliceShape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
addAddV2strided_slice_4:output:0floordiv:z:0*
T0*
_output_shapes
: _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_5StridedSliceShape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
add_1AddV2strided_slice_5:output:0floordiv_1:z:0*
T0*
_output_shapes
: G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ­
strided_slice_6/stackPack strided_slice_6/stack/0:output:0floordiv:z:0floordiv_1:z:0 strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ©
strided_slice_6/stack_1Pack"strided_slice_6/stack_1/0:output:0add:z:0	add_1:z:0"strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :·
strided_slice_6/stack_2Pack"strided_slice_6/stack_2/0:output:0Const:output:0Const_1:output:0"strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
strided_slice_6StridedSlice
down_layerstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+??????????????????????????? *

begin_mask	*
end_mask	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
concatConcatV2strided_slice_6:output:0xconcat/axis:output:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
	
ά
)__inference_conv_block_layer_call_fn_9313

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv_block_layer_call_and_return_conditional_losses_7879
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
)
Χ
D__inference_conv_block_layer_call_and_return_conditional_losses_9378

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity’conv2d/BiasAdd/ReadVariableOp’conv2d/Conv2D/ReadVariableOp’conv2d_1/BiasAdd/ReadVariableOp’conv2d_1/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ί
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0€
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMulconv2d/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout/dropout/ShapeShapeconv2d/BiasAdd:output:0*
T0*
_output_shapes
:Ά
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ψ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????~
activation/ReluReludropout/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Υ
conv2d_1/Conv2DConv2Dactivation/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_1/dropout/MulMulconv2d_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_1/dropout/ShapeShapeconv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_1/ReluReludropout_1/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_1/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Θ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ω)
α
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9844

inputsA
'conv2d_6_conv2d_readvariableop_resource:@ 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: 
identity’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ύ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_6/dropout/MulMulconv2d_6/BiasAdd:output:0 dropout_6/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_6/dropout/ShapeShapeconv2d_6/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_7/ReluReludropout_6/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_7/Conv2DConv2Dactivation_7/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? \
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_7/dropout/MulMulconv2d_7/BiasAdd:output:0 dropout_7/dropout/Const:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? `
dropout_7/dropout/ShapeShapeconv2d_7/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+??????????????????????????? ‘
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_8/ReluReludropout_7/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_8/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs


#__inference_unet_layer_call_fn_8287

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity’StatefulPartitionedCall΄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_unet_layer_call_and_return_conditional_losses_8232
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
½
W
0__inference_crop_concat_block_layer_call_fn_9660
x

down_layer
identityΨ
PartitionedCallPartitionedCallx
down_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_8617z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+??????????????????????????? :+??????????????????????????? :d `
A
_output_shapes/
-:+??????????????????????????? 

_user_specified_namex:mi
A
_output_shapes/
-:+??????????????????????????? 
$
_user_specified_name
down_layer
σ
α
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9520

inputsA
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@
identity’conv2d_4/BiasAdd/ReadVariableOp’conv2d_4/Conv2D/ReadVariableOp’conv2d_5/BiasAdd/ReadVariableOp’conv2d_5/Conv2D/ReadVariableOp
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ύ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Χ
conv2d_5/Conv2DConv2Dactivation_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ͺ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@
activation_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
IdentityIdentityactivation_5/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@Μ
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9388

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
χ
α
F__inference_conv_block_4_layer_call_and_return_conditional_losses_8191

inputsA
'conv2d_8_conv2d_readvariableop_resource: 6
(conv2d_8_biasadd_readvariableop_resource:A
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:
identity’conv2d_8/BiasAdd/ReadVariableOp’conv2d_8/Conv2D/ReadVariableOp’conv2d_9/BiasAdd/ReadVariableOp’conv2d_9/Conv2D/ReadVariableOp
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ύ
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_10/ReluReluconv2d_8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ψ
conv2d_9/Conv2DConv2D activation_10/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_11/ReluReluconv2d_9/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentity activation_11/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Μ
NoOpNoOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

ό
C__inference_conv2d_10_layer_call_and_return_conditional_losses_8211

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
.
Χ
F__inference_upconv_block_layer_call_and_return_conditional_losses_9648

inputsS
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: 
identity’'conv2d_transpose/BiasAdd/ReadVariableOp’0conv2d_transpose/conv2d_transpose/ReadVariableOpL
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B : y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ξ
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Μ
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_6/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_6/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? £
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ό
Ό
__inference__wrapped_model_7734

inputsO
5unet_conv_block_conv2d_conv2d_readvariableop_resource:D
6unet_conv_block_conv2d_biasadd_readvariableop_resource:Q
7unet_conv_block_conv2d_1_conv2d_readvariableop_resource:F
8unet_conv_block_conv2d_1_biasadd_readvariableop_resource:S
9unet_conv_block_1_conv2d_2_conv2d_readvariableop_resource: H
:unet_conv_block_1_conv2d_2_biasadd_readvariableop_resource: S
9unet_conv_block_1_conv2d_3_conv2d_readvariableop_resource:  H
:unet_conv_block_1_conv2d_3_biasadd_readvariableop_resource: S
9unet_conv_block_2_conv2d_4_conv2d_readvariableop_resource: @H
:unet_conv_block_2_conv2d_4_biasadd_readvariableop_resource:@S
9unet_conv_block_2_conv2d_5_conv2d_readvariableop_resource:@@H
:unet_conv_block_2_conv2d_5_biasadd_readvariableop_resource:@e
Kunet_upconv_block_conv2d_transpose_conv2d_transpose_readvariableop_resource: @P
Bunet_upconv_block_conv2d_transpose_biasadd_readvariableop_resource: S
9unet_conv_block_3_conv2d_6_conv2d_readvariableop_resource:@ H
:unet_conv_block_3_conv2d_6_biasadd_readvariableop_resource: S
9unet_conv_block_3_conv2d_7_conv2d_readvariableop_resource:  H
:unet_conv_block_3_conv2d_7_biasadd_readvariableop_resource: i
Ounet_upconv_block_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource: T
Funet_upconv_block_1_conv2d_transpose_1_biasadd_readvariableop_resource:S
9unet_conv_block_4_conv2d_8_conv2d_readvariableop_resource: H
:unet_conv_block_4_conv2d_8_biasadd_readvariableop_resource:S
9unet_conv_block_4_conv2d_9_conv2d_readvariableop_resource:H
:unet_conv_block_4_conv2d_9_biasadd_readvariableop_resource:G
-unet_conv2d_10_conv2d_readvariableop_resource:<
.unet_conv2d_10_biasadd_readvariableop_resource:
identity’%unet/conv2d_10/BiasAdd/ReadVariableOp’$unet/conv2d_10/Conv2D/ReadVariableOp’-unet/conv_block/conv2d/BiasAdd/ReadVariableOp’,unet/conv_block/conv2d/Conv2D/ReadVariableOp’/unet/conv_block/conv2d_1/BiasAdd/ReadVariableOp’.unet/conv_block/conv2d_1/Conv2D/ReadVariableOp’1unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOp’0unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOp’1unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOp’0unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOp’1unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOp’0unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOp’1unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOp’0unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOp’1unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOp’0unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOp’1unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOp’0unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOp’1unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOp’0unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOp’1unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOp’0unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOp’9unet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOp’Bunet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOp’=unet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOp’Funet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpͺ
,unet/conv_block/conv2d/Conv2D/ReadVariableOpReadVariableOp5unet_conv_block_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ϊ
unet/conv_block/conv2d/Conv2DConv2Dinputs4unet/conv_block/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
 
-unet/conv_block/conv2d/BiasAdd/ReadVariableOpReadVariableOp6unet_conv_block_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Τ
unet/conv_block/conv2d/BiasAddBiasAdd&unet/conv_block/conv2d/Conv2D:output:05unet/conv_block/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
unet/conv_block/activation/ReluRelu'unet/conv_block/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
.unet/conv_block/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7unet_conv_block_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
unet/conv_block/conv2d_1/Conv2DConv2D-unet/conv_block/activation/Relu:activations:06unet/conv_block/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
€
/unet/conv_block/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8unet_conv_block_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ϊ
 unet/conv_block/conv2d_1/BiasAddBiasAdd(unet/conv_block/conv2d_1/Conv2D:output:07unet/conv_block/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
!unet/conv_block/activation_1/ReluRelu)unet/conv_block/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????Υ
unet/max_pooling2d/MaxPoolMaxPool/unet/conv_block/activation_1/Relu:activations:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
²
0unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
!unet/conv_block_1/conv2d_2/Conv2DConv2D#unet/max_pooling2d/MaxPool:output:08unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
¨
1unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ΰ
"unet/conv_block_1/conv2d_2/BiasAddBiasAdd*unet/conv_block_1/conv2d_2/Conv2D:output:09unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? €
#unet/conv_block_1/activation_2/ReluRelu+unet/conv_block_1/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? ²
0unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
!unet/conv_block_1/conv2d_3/Conv2DConv2D1unet/conv_block_1/activation_2/Relu:activations:08unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
¨
1unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ΰ
"unet/conv_block_1/conv2d_3/BiasAddBiasAdd*unet/conv_block_1/conv2d_3/Conv2D:output:09unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? €
#unet/conv_block_1/activation_3/ReluRelu+unet/conv_block_1/conv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? Ω
unet/max_pooling2d_1/MaxPoolMaxPool1unet/conv_block_1/activation_3/Relu:activations:0*A
_output_shapes/
-:+??????????????????????????? *
ksize
*
paddingVALID*
strides
²
0unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
!unet/conv_block_2/conv2d_4/Conv2DConv2D%unet/max_pooling2d_1/MaxPool:output:08unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
¨
1unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ΰ
"unet/conv_block_2/conv2d_4/BiasAddBiasAdd*unet/conv_block_2/conv2d_4/Conv2D:output:09unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@€
#unet/conv_block_2/activation_4/ReluRelu+unet/conv_block_2/conv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@²
0unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!unet/conv_block_2/conv2d_5/Conv2DConv2D1unet/conv_block_2/activation_4/Relu:activations:08unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
¨
1unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ΰ
"unet/conv_block_2/conv2d_5/BiasAddBiasAdd*unet/conv_block_2/conv2d_5/Conv2D:output:09unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@€
#unet/conv_block_2/activation_5/ReluRelu+unet/conv_block_2/conv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@
(unet/upconv_block/conv2d_transpose/ShapeShape1unet/conv_block_2/activation_5/Relu:activations:0*
T0*
_output_shapes
:
6unet/upconv_block/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8unet/upconv_block/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8unet/upconv_block/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0unet/upconv_block/conv2d_transpose/strided_sliceStridedSlice1unet/upconv_block/conv2d_transpose/Shape:output:0?unet/upconv_block/conv2d_transpose/strided_slice/stack:output:0Aunet/upconv_block/conv2d_transpose/strided_slice/stack_1:output:0Aunet/upconv_block/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8unet/upconv_block/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:unet/upconv_block/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:unet/upconv_block/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2unet/upconv_block/conv2d_transpose/strided_slice_1StridedSlice1unet/upconv_block/conv2d_transpose/Shape:output:0Aunet/upconv_block/conv2d_transpose/strided_slice_1/stack:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_1/stack_1:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8unet/upconv_block/conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
:unet/upconv_block/conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:unet/upconv_block/conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2unet/upconv_block/conv2d_transpose/strided_slice_2StridedSlice1unet/upconv_block/conv2d_transpose/Shape:output:0Aunet/upconv_block/conv2d_transpose/strided_slice_2/stack:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_2/stack_1:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(unet/upconv_block/conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Ύ
&unet/upconv_block/conv2d_transpose/mulMul;unet/upconv_block/conv2d_transpose/strided_slice_1:output:01unet/upconv_block/conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: j
(unet/upconv_block/conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B : ―
&unet/upconv_block/conv2d_transpose/addAddV2*unet/upconv_block/conv2d_transpose/mul:z:01unet/upconv_block/conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: l
*unet/upconv_block/conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Β
(unet/upconv_block/conv2d_transpose/mul_1Mul;unet/upconv_block/conv2d_transpose/strided_slice_2:output:03unet/upconv_block/conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: l
*unet/upconv_block/conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : ΅
(unet/upconv_block/conv2d_transpose/add_1AddV2,unet/upconv_block/conv2d_transpose/mul_1:z:03unet/upconv_block/conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: l
*unet/upconv_block/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ¨
(unet/upconv_block/conv2d_transpose/stackPack9unet/upconv_block/conv2d_transpose/strided_slice:output:0*unet/upconv_block/conv2d_transpose/add:z:0,unet/upconv_block/conv2d_transpose/add_1:z:03unet/upconv_block/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:
8unet/upconv_block/conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:unet/upconv_block/conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:unet/upconv_block/conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2unet/upconv_block/conv2d_transpose/strided_slice_3StridedSlice1unet/upconv_block/conv2d_transpose/stack:output:0Aunet/upconv_block/conv2d_transpose/strided_slice_3/stack:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_3/stack_1:output:0Cunet/upconv_block/conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΦ
Bunet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpKunet_upconv_block_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0ρ
3unet/upconv_block/conv2d_transpose/conv2d_transposeConv2DBackpropInput1unet/upconv_block/conv2d_transpose/stack:output:0Junet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:01unet/conv_block_2/activation_5/Relu:activations:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
Έ
9unet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpBunet_upconv_block_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
*unet/upconv_block/conv2d_transpose/BiasAddBiasAdd<unet/upconv_block/conv2d_transpose/conv2d_transpose:output:0Aunet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? ¬
#unet/upconv_block/activation_6/ReluRelu3unet/upconv_block/conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? }
unet/crop_concat_block/ShapeShape1unet/conv_block_1/activation_3/Relu:activations:0*
T0*
_output_shapes
:
unet/crop_concat_block/Shape_1Shape1unet/upconv_block/activation_6/Relu:activations:0*
T0*
_output_shapes
:t
*unet/crop_concat_block/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,unet/crop_concat_block/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,unet/crop_concat_block/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Δ
$unet/crop_concat_block/strided_sliceStridedSlice%unet/crop_concat_block/Shape:output:03unet/crop_concat_block/strided_slice/stack:output:05unet/crop_concat_block/strided_slice/stack_1:output:05unet/crop_concat_block/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,unet/crop_concat_block/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
&unet/crop_concat_block/strided_slice_1StridedSlice'unet/crop_concat_block/Shape_1:output:05unet/crop_concat_block/strided_slice_1/stack:output:07unet/crop_concat_block/strided_slice_1/stack_1:output:07unet/crop_concat_block/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask’
unet/crop_concat_block/subSub-unet/crop_concat_block/strided_slice:output:0/unet/crop_concat_block/strided_slice_1:output:0*
T0*
_output_shapes
: c
!unet/crop_concat_block/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :
unet/crop_concat_block/floordivFloorDivunet/crop_concat_block/sub:z:0*unet/crop_concat_block/floordiv/y:output:0*
T0*
_output_shapes
: v
,unet/crop_concat_block/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Μ
&unet/crop_concat_block/strided_slice_2StridedSlice%unet/crop_concat_block/Shape:output:05unet/crop_concat_block/strided_slice_2/stack:output:07unet/crop_concat_block/strided_slice_2/stack_1:output:07unet/crop_concat_block/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,unet/crop_concat_block/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
&unet/crop_concat_block/strided_slice_3StridedSlice'unet/crop_concat_block/Shape_1:output:05unet/crop_concat_block/strided_slice_3/stack:output:07unet/crop_concat_block/strided_slice_3/stack_1:output:07unet/crop_concat_block/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¦
unet/crop_concat_block/sub_1Sub/unet/crop_concat_block/strided_slice_2:output:0/unet/crop_concat_block/strided_slice_3:output:0*
T0*
_output_shapes
: e
#unet/crop_concat_block/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :
!unet/crop_concat_block/floordiv_1FloorDiv unet/crop_concat_block/sub_1:z:0,unet/crop_concat_block/floordiv_1/y:output:0*
T0*
_output_shapes
: v
,unet/crop_concat_block/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
&unet/crop_concat_block/strided_slice_4StridedSlice'unet/crop_concat_block/Shape_1:output:05unet/crop_concat_block/strided_slice_4/stack:output:07unet/crop_concat_block/strided_slice_4/stack_1:output:07unet/crop_concat_block/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unet/crop_concat_block/addAddV2/unet/crop_concat_block/strided_slice_4:output:0#unet/crop_concat_block/floordiv:z:0*
T0*
_output_shapes
: v
,unet/crop_concat_block/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
&unet/crop_concat_block/strided_slice_5StridedSlice'unet/crop_concat_block/Shape_1:output:05unet/crop_concat_block/strided_slice_5/stack:output:07unet/crop_concat_block/strided_slice_5/stack_1:output:07unet/crop_concat_block/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
unet/crop_concat_block/add_1AddV2/unet/crop_concat_block/strided_slice_5:output:0%unet/crop_concat_block/floordiv_1:z:0*
T0*
_output_shapes
: ^
unet/crop_concat_block/ConstConst*
_output_shapes
: *
dtype0*
value	B :`
unet/crop_concat_block/Const_1Const*
_output_shapes
: *
dtype0*
value	B :p
.unet/crop_concat_block/strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : p
.unet/crop_concat_block/strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B :  
,unet/crop_concat_block/strided_slice_6/stackPack7unet/crop_concat_block/strided_slice_6/stack/0:output:0#unet/crop_concat_block/floordiv:z:0%unet/crop_concat_block/floordiv_1:z:07unet/crop_concat_block/strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
0unet/crop_concat_block/strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : r
0unet/crop_concat_block/strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : 
.unet/crop_concat_block/strided_slice_6/stack_1Pack9unet/crop_concat_block/strided_slice_6/stack_1/0:output:0unet/crop_concat_block/add:z:0 unet/crop_concat_block/add_1:z:09unet/crop_concat_block/strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:r
0unet/crop_concat_block/strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :r
0unet/crop_concat_block/strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :ͺ
.unet/crop_concat_block/strided_slice_6/stack_2Pack9unet/crop_concat_block/strided_slice_6/stack_2/0:output:0%unet/crop_concat_block/Const:output:0'unet/crop_concat_block/Const_1:output:09unet/crop_concat_block/strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
&unet/crop_concat_block/strided_slice_6StridedSlice1unet/conv_block_1/activation_3/Relu:activations:05unet/crop_concat_block/strided_slice_6/stack:output:07unet/crop_concat_block/strided_slice_6/stack_1:output:07unet/crop_concat_block/strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+??????????????????????????? *

begin_mask	*
end_mask	m
"unet/crop_concat_block/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
unet/crop_concat_block/concatConcatV2/unet/crop_concat_block/strided_slice_6:output:01unet/upconv_block/activation_6/Relu:activations:0+unet/crop_concat_block/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????@²
0unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_3_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
!unet/conv_block_3/conv2d_6/Conv2DConv2D&unet/crop_concat_block/concat:output:08unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
¨
1unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ΰ
"unet/conv_block_3/conv2d_6/BiasAddBiasAdd*unet/conv_block_3/conv2d_6/Conv2D:output:09unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? €
#unet/conv_block_3/activation_7/ReluRelu+unet/conv_block_3/conv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? ²
0unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_3_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
!unet/conv_block_3/conv2d_7/Conv2DConv2D1unet/conv_block_3/activation_7/Relu:activations:08unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
¨
1unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_3_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ΰ
"unet/conv_block_3/conv2d_7/BiasAddBiasAdd*unet/conv_block_3/conv2d_7/Conv2D:output:09unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? €
#unet/conv_block_3/activation_8/ReluRelu+unet/conv_block_3/conv2d_7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
,unet/upconv_block_1/conv2d_transpose_1/ShapeShape1unet/conv_block_3/activation_8/Relu:activations:0*
T0*
_output_shapes
:
:unet/upconv_block_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<unet/upconv_block_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<unet/upconv_block_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4unet/upconv_block_1/conv2d_transpose_1/strided_sliceStridedSlice5unet/upconv_block_1/conv2d_transpose_1/Shape:output:0Cunet/upconv_block_1/conv2d_transpose_1/strided_slice/stack:output:0Eunet/upconv_block_1/conv2d_transpose_1/strided_slice/stack_1:output:0Eunet/upconv_block_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<unet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6unet/upconv_block_1/conv2d_transpose_1/strided_slice_1StridedSlice5unet/upconv_block_1/conv2d_transpose_1/Shape:output:0Eunet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stack:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<unet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6unet/upconv_block_1/conv2d_transpose_1/strided_slice_2StridedSlice5unet/upconv_block_1/conv2d_transpose_1/Shape:output:0Eunet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stack:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stack_1:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,unet/upconv_block_1/conv2d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :Κ
*unet/upconv_block_1/conv2d_transpose_1/mulMul?unet/upconv_block_1/conv2d_transpose_1/strided_slice_1:output:05unet/upconv_block_1/conv2d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: n
,unet/upconv_block_1/conv2d_transpose_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : »
*unet/upconv_block_1/conv2d_transpose_1/addAddV2.unet/upconv_block_1/conv2d_transpose_1/mul:z:05unet/upconv_block_1/conv2d_transpose_1/add/y:output:0*
T0*
_output_shapes
: p
.unet/upconv_block_1/conv2d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ξ
,unet/upconv_block_1/conv2d_transpose_1/mul_1Mul?unet/upconv_block_1/conv2d_transpose_1/strided_slice_2:output:07unet/upconv_block_1/conv2d_transpose_1/mul_1/y:output:0*
T0*
_output_shapes
: p
.unet/upconv_block_1/conv2d_transpose_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B : Α
,unet/upconv_block_1/conv2d_transpose_1/add_1AddV20unet/upconv_block_1/conv2d_transpose_1/mul_1:z:07unet/upconv_block_1/conv2d_transpose_1/add_1/y:output:0*
T0*
_output_shapes
: p
.unet/upconv_block_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Ό
,unet/upconv_block_1/conv2d_transpose_1/stackPack=unet/upconv_block_1/conv2d_transpose_1/strided_slice:output:0.unet/upconv_block_1/conv2d_transpose_1/add:z:00unet/upconv_block_1/conv2d_transpose_1/add_1:z:07unet/upconv_block_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:
<unet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>unet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6unet/upconv_block_1/conv2d_transpose_1/strided_slice_3StridedSlice5unet/upconv_block_1/conv2d_transpose_1/stack:output:0Eunet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stack:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stack_1:output:0Gunet/upconv_block_1/conv2d_transpose_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskή
Funet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpOunet_upconv_block_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ύ
7unet/upconv_block_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput5unet/upconv_block_1/conv2d_transpose_1/stack:output:0Nunet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:01unet/conv_block_3/activation_8/Relu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
ΐ
=unet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpFunet_upconv_block_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
.unet/upconv_block_1/conv2d_transpose_1/BiasAddBiasAdd@unet/upconv_block_1/conv2d_transpose_1/conv2d_transpose:output:0Eunet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????²
%unet/upconv_block_1/activation_9/ReluRelu7unet/upconv_block_1/conv2d_transpose_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????}
unet/crop_concat_block_1/ShapeShape/unet/conv_block/activation_1/Relu:activations:0*
T0*
_output_shapes
:
 unet/crop_concat_block_1/Shape_1Shape3unet/upconv_block_1/activation_9/Relu:activations:0*
T0*
_output_shapes
:v
,unet/crop_concat_block_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.unet/crop_concat_block_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ξ
&unet/crop_concat_block_1/strided_sliceStridedSlice'unet/crop_concat_block_1/Shape:output:05unet/crop_concat_block_1/strided_slice/stack:output:07unet/crop_concat_block_1/strided_slice/stack_1:output:07unet/crop_concat_block_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.unet/crop_concat_block_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ψ
(unet/crop_concat_block_1/strided_slice_1StridedSlice)unet/crop_concat_block_1/Shape_1:output:07unet/crop_concat_block_1/strided_slice_1/stack:output:09unet/crop_concat_block_1/strided_slice_1/stack_1:output:09unet/crop_concat_block_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
unet/crop_concat_block_1/subSub/unet/crop_concat_block_1/strided_slice:output:01unet/crop_concat_block_1/strided_slice_1:output:0*
T0*
_output_shapes
: e
#unet/crop_concat_block_1/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :
!unet/crop_concat_block_1/floordivFloorDiv unet/crop_concat_block_1/sub:z:0,unet/crop_concat_block_1/floordiv/y:output:0*
T0*
_output_shapes
: x
.unet/crop_concat_block_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Φ
(unet/crop_concat_block_1/strided_slice_2StridedSlice'unet/crop_concat_block_1/Shape:output:07unet/crop_concat_block_1/strided_slice_2/stack:output:09unet/crop_concat_block_1/strided_slice_2/stack_1:output:09unet/crop_concat_block_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.unet/crop_concat_block_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ψ
(unet/crop_concat_block_1/strided_slice_3StridedSlice)unet/crop_concat_block_1/Shape_1:output:07unet/crop_concat_block_1/strided_slice_3/stack:output:09unet/crop_concat_block_1/strided_slice_3/stack_1:output:09unet/crop_concat_block_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¬
unet/crop_concat_block_1/sub_1Sub1unet/crop_concat_block_1/strided_slice_2:output:01unet/crop_concat_block_1/strided_slice_3:output:0*
T0*
_output_shapes
: g
%unet/crop_concat_block_1/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :€
#unet/crop_concat_block_1/floordiv_1FloorDiv"unet/crop_concat_block_1/sub_1:z:0.unet/crop_concat_block_1/floordiv_1/y:output:0*
T0*
_output_shapes
: x
.unet/crop_concat_block_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ψ
(unet/crop_concat_block_1/strided_slice_4StridedSlice)unet/crop_concat_block_1/Shape_1:output:07unet/crop_concat_block_1/strided_slice_4/stack:output:09unet/crop_concat_block_1/strided_slice_4/stack_1:output:09unet/crop_concat_block_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
unet/crop_concat_block_1/addAddV21unet/crop_concat_block_1/strided_slice_4:output:0%unet/crop_concat_block_1/floordiv:z:0*
T0*
_output_shapes
: x
.unet/crop_concat_block_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0unet/crop_concat_block_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ψ
(unet/crop_concat_block_1/strided_slice_5StridedSlice)unet/crop_concat_block_1/Shape_1:output:07unet/crop_concat_block_1/strided_slice_5/stack:output:09unet/crop_concat_block_1/strided_slice_5/stack_1:output:09unet/crop_concat_block_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask€
unet/crop_concat_block_1/add_1AddV21unet/crop_concat_block_1/strided_slice_5:output:0'unet/crop_concat_block_1/floordiv_1:z:0*
T0*
_output_shapes
: `
unet/crop_concat_block_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :b
 unet/crop_concat_block_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :r
0unet/crop_concat_block_1/strided_slice_6/stack/0Const*
_output_shapes
: *
dtype0*
value	B : r
0unet/crop_concat_block_1/strided_slice_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ͺ
.unet/crop_concat_block_1/strided_slice_6/stackPack9unet/crop_concat_block_1/strided_slice_6/stack/0:output:0%unet/crop_concat_block_1/floordiv:z:0'unet/crop_concat_block_1/floordiv_1:z:09unet/crop_concat_block_1/strided_slice_6/stack/3:output:0*
N*
T0*
_output_shapes
:t
2unet/crop_concat_block_1/strided_slice_6/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : t
2unet/crop_concat_block_1/strided_slice_6/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ¦
0unet/crop_concat_block_1/strided_slice_6/stack_1Pack;unet/crop_concat_block_1/strided_slice_6/stack_1/0:output:0 unet/crop_concat_block_1/add:z:0"unet/crop_concat_block_1/add_1:z:0;unet/crop_concat_block_1/strided_slice_6/stack_1/3:output:0*
N*
T0*
_output_shapes
:t
2unet/crop_concat_block_1/strided_slice_6/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :t
2unet/crop_concat_block_1/strided_slice_6/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :΄
0unet/crop_concat_block_1/strided_slice_6/stack_2Pack;unet/crop_concat_block_1/strided_slice_6/stack_2/0:output:0'unet/crop_concat_block_1/Const:output:0)unet/crop_concat_block_1/Const_1:output:0;unet/crop_concat_block_1/strided_slice_6/stack_2/3:output:0*
N*
T0*
_output_shapes
:
(unet/crop_concat_block_1/strided_slice_6StridedSlice/unet/conv_block/activation_1/Relu:activations:07unet/crop_concat_block_1/strided_slice_6/stack:output:09unet/crop_concat_block_1/strided_slice_6/stack_1:output:09unet/crop_concat_block_1/strided_slice_6/stack_2:output:0*
Index0*
T0*A
_output_shapes/
-:+???????????????????????????*

begin_mask	*
end_mask	o
$unet/crop_concat_block_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
unet/crop_concat_block_1/concatConcatV21unet/crop_concat_block_1/strided_slice_6:output:03unet/upconv_block_1/activation_9/Relu:activations:0-unet/crop_concat_block_1/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+??????????????????????????? ²
0unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_4_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
!unet/conv_block_4/conv2d_8/Conv2DConv2D(unet/crop_concat_block_1/concat:output:08unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
¨
1unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_4_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ΰ
"unet/conv_block_4/conv2d_8/BiasAddBiasAdd*unet/conv_block_4/conv2d_8/Conv2D:output:09unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????₯
$unet/conv_block_4/activation_10/ReluRelu+unet/conv_block_4/conv2d_8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????²
0unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOpReadVariableOp9unet_conv_block_4_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
!unet/conv_block_4/conv2d_9/Conv2DConv2D2unet/conv_block_4/activation_10/Relu:activations:08unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
¨
1unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp:unet_conv_block_4_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ΰ
"unet/conv_block_4/conv2d_9/BiasAddBiasAdd*unet/conv_block_4/conv2d_9/Conv2D:output:09unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????₯
$unet/conv_block_4/activation_11/ReluRelu+unet/conv_block_4/conv2d_9/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
$unet/conv2d_10/Conv2D/ReadVariableOpReadVariableOp-unet_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0φ
unet/conv2d_10/Conv2DConv2D2unet/conv_block_4/activation_11/Relu:activations:0,unet/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

%unet/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp.unet_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ό
unet/conv2d_10/BiasAddBiasAddunet/conv2d_10/Conv2D:output:0-unet/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????
unet/activation_12/ReluReluunet/conv2d_10/BiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
unet/outputs/SoftmaxSoftmax%unet/activation_12/Relu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityunet/outputs/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????
NoOpNoOp&^unet/conv2d_10/BiasAdd/ReadVariableOp%^unet/conv2d_10/Conv2D/ReadVariableOp.^unet/conv_block/conv2d/BiasAdd/ReadVariableOp-^unet/conv_block/conv2d/Conv2D/ReadVariableOp0^unet/conv_block/conv2d_1/BiasAdd/ReadVariableOp/^unet/conv_block/conv2d_1/Conv2D/ReadVariableOp2^unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOp1^unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOp2^unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOp1^unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOp2^unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOp1^unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOp2^unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOp1^unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOp2^unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOp1^unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOp2^unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOp1^unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOp2^unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOp1^unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOp2^unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOp1^unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOp:^unet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOpC^unet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOp>^unet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOpG^unet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%unet/conv2d_10/BiasAdd/ReadVariableOp%unet/conv2d_10/BiasAdd/ReadVariableOp2L
$unet/conv2d_10/Conv2D/ReadVariableOp$unet/conv2d_10/Conv2D/ReadVariableOp2^
-unet/conv_block/conv2d/BiasAdd/ReadVariableOp-unet/conv_block/conv2d/BiasAdd/ReadVariableOp2\
,unet/conv_block/conv2d/Conv2D/ReadVariableOp,unet/conv_block/conv2d/Conv2D/ReadVariableOp2b
/unet/conv_block/conv2d_1/BiasAdd/ReadVariableOp/unet/conv_block/conv2d_1/BiasAdd/ReadVariableOp2`
.unet/conv_block/conv2d_1/Conv2D/ReadVariableOp.unet/conv_block/conv2d_1/Conv2D/ReadVariableOp2f
1unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOp1unet/conv_block_1/conv2d_2/BiasAdd/ReadVariableOp2d
0unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOp0unet/conv_block_1/conv2d_2/Conv2D/ReadVariableOp2f
1unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOp1unet/conv_block_1/conv2d_3/BiasAdd/ReadVariableOp2d
0unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOp0unet/conv_block_1/conv2d_3/Conv2D/ReadVariableOp2f
1unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOp1unet/conv_block_2/conv2d_4/BiasAdd/ReadVariableOp2d
0unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOp0unet/conv_block_2/conv2d_4/Conv2D/ReadVariableOp2f
1unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOp1unet/conv_block_2/conv2d_5/BiasAdd/ReadVariableOp2d
0unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOp0unet/conv_block_2/conv2d_5/Conv2D/ReadVariableOp2f
1unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOp1unet/conv_block_3/conv2d_6/BiasAdd/ReadVariableOp2d
0unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOp0unet/conv_block_3/conv2d_6/Conv2D/ReadVariableOp2f
1unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOp1unet/conv_block_3/conv2d_7/BiasAdd/ReadVariableOp2d
0unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOp0unet/conv_block_3/conv2d_7/Conv2D/ReadVariableOp2f
1unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOp1unet/conv_block_4/conv2d_8/BiasAdd/ReadVariableOp2d
0unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOp0unet/conv_block_4/conv2d_8/Conv2D/ReadVariableOp2f
1unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOp1unet/conv_block_4/conv2d_9/BiasAdd/ReadVariableOp2d
0unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOp0unet/conv_block_4/conv2d_9/Conv2D/ReadVariableOp2v
9unet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOp9unet/upconv_block/conv2d_transpose/BiasAdd/ReadVariableOp2
Bunet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOpBunet/upconv_block/conv2d_transpose/conv2d_transpose/ReadVariableOp2~
=unet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOp=unet/upconv_block_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
Funet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpFunet/upconv_block_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
)
Χ
D__inference_conv_block_layer_call_and_return_conditional_losses_8849

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity’conv2d/BiasAdd/ReadVariableOp’conv2d/Conv2D/ReadVariableOp’conv2d_1/BiasAdd/ReadVariableOp’conv2d_1/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ί
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0€
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMulconv2d/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout/dropout/ShapeShapeconv2d/BiasAdd:output:0*
T0*
_output_shapes
:Ά
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ψ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????~
activation/ReluReludropout/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Υ
conv2d_1/Conv2DConv2Dactivation/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ͺ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @₯
dropout_1/dropout/MulMulconv2d_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????`
dropout_1/dropout/ShapeShapeconv2d_1/BiasAdd:output:0*
T0*
_output_shapes
:Ί
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ή
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????‘
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????
activation_1/ReluReludropout_1/dropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+???????????????????????????
IdentityIdentityactivation_1/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Θ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs


#__inference_unet_layer_call_fn_9101

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11: @

unknown_12: $

unknown_13:@ 

unknown_14: $

unknown_15:  

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19: 

unknown_20:$

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity’StatefulPartitionedCall΄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_unet_layer_call_and_return_conditional_losses_8989
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:+???????????????????????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
	
ή
+__inference_conv_block_1_layer_call_fn_9414

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv_block_1_layer_call_and_return_conditional_losses_8788
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
σ
α
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9810

inputsA
'conv2d_6_conv2d_readvariableop_resource:@ 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource:  6
(conv2d_7_biasadd_readvariableop_resource: 
identity’conv2d_6/BiasAdd/ReadVariableOp’conv2d_6/Conv2D/ReadVariableOp’conv2d_7/BiasAdd/ReadVariableOp’conv2d_7/Conv2D/ReadVariableOp
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ύ
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_7/ReluReluconv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Χ
conv2d_7/Conv2DConv2Dactivation_7/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ͺ
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
activation_8/ReluReluconv2d_7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 
IdentityIdentityactivation_8/Relu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? Μ
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"΅	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ά
serving_defaultΘ
S
inputsI
serving_default_inputs:0+???????????????????????????U
outputsJ
StatefulPartitionedCall:0+???????????????????????????tensorflow/serving/predict:Σ
ϋ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
conv2d_1
 	dropout_1
!activation_1
"conv2d_2
#	dropout_2
$activation_2"
_tf_keras_layer
₯
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1conv2d_1
2	dropout_1
3activation_1
4conv2d_2
5	dropout_2
6activation_2"
_tf_keras_layer
₯
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer

=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Cconv2d_1
D	dropout_1
Eactivation_1
Fconv2d_2
G	dropout_2
Hactivation_2"
_tf_keras_layer
Γ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Oupconv
Pactivation_1"
_tf_keras_layer
₯
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer

W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]conv2d_1
^	dropout_1
_activation_1
`conv2d_2
a	dropout_2
bactivation_2"
_tf_keras_layer
Γ
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

iupconv
jactivation_1"
_tf_keras_layer
₯
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer

q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wconv2d_1
x	dropout_1
yactivation_1
zconv2d_2
{	dropout_2
|activation_2"
_tf_keras_layer
γ
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
‘15
’16
£17
€18
₯19
¦20
§21
¨22
©23
24
25"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
‘15
’16
£17
€18
₯19
¦20
§21
¨22
©23
24
25"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
ͺnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Η
―trace_0
°trace_12
#__inference_unet_layer_call_fn_8287
#__inference_unet_layer_call_fn_9101Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z―trace_0z°trace_1
ύ
±trace_0
²trace_12Β
>__inference_unet_layer_call_and_return_conditional_losses_9171
>__inference_unet_layer_call_and_return_conditional_losses_9241Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z±trace_0z²trace_1
ΙBΖ
__inference__wrapped_model_7734inputs"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
"
	optimizer
-
³serving_default"
signature_map
@
0
1
2
3"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ν
Ήtrace_0
Ίtrace_12
)__inference_conv_block_layer_call_fn_9313
)__inference_conv_block_layer_call_fn_9326Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΉtrace_0zΊtrace_1

»trace_0
Όtrace_12Θ
D__inference_conv_block_layer_call_and_return_conditional_losses_9344
D__inference_conv_block_layer_call_and_return_conditional_losses_9378Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z»trace_0zΌtrace_1
ζ
½	variables
Ύtrainable_variables
Ώregularization_losses
ΐ	keras_api
Α__call__
+Β&call_and_return_all_conditional_losses
kernel
	bias
!Γ_jit_compiled_convolution_op"
_tf_keras_layer
A
Δ	keras_api
Ε_random_generator"
_tf_keras_layer
«
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Ι	keras_api
Κ__call__
+Λ&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
Μ	variables
Νtrainable_variables
Ξregularization_losses
Ο	keras_api
Π__call__
+Ρ&call_and_return_all_conditional_losses
kernel
	bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
A
Σ	keras_api
Τ_random_generator"
_tf_keras_layer
«
Υ	variables
Φtrainable_variables
Χregularization_losses
Ψ	keras_api
Ω__call__
+Ϊ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ϋnon_trainable_variables
άlayers
έmetrics
 ήlayer_regularization_losses
ίlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ς
ΰtrace_02Σ
,__inference_max_pooling2d_layer_call_fn_9383’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΰtrace_0

αtrace_02ξ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9388’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zαtrace_0
@
0
1
2
3"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
βnon_trainable_variables
γlayers
δmetrics
 εlayer_regularization_losses
ζlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ρ
ηtrace_0
θtrace_12
+__inference_conv_block_1_layer_call_fn_9401
+__inference_conv_block_1_layer_call_fn_9414Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zηtrace_0zθtrace_1

ιtrace_0
κtrace_12Μ
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9432
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9466Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zιtrace_0zκtrace_1
ζ
λ	variables
μtrainable_variables
νregularization_losses
ξ	keras_api
ο__call__
+π&call_and_return_all_conditional_losses
kernel
	bias
!ρ_jit_compiled_convolution_op"
_tf_keras_layer
A
ς	keras_api
σ_random_generator"
_tf_keras_layer
«
τ	variables
υtrainable_variables
φregularization_losses
χ	keras_api
ψ__call__
+ω&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
ϊ	variables
ϋtrainable_variables
όregularization_losses
ύ	keras_api
ώ__call__
+?&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
A
	keras_api
_random_generator"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
τ
trace_02Υ
.__inference_max_pooling2d_1_layer_call_fn_9471’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

trace_02π
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9476’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
@
0
1
2
3"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Ρ
trace_0
trace_12
+__inference_conv_block_2_layer_call_fn_9489
+__inference_conv_block_2_layer_call_fn_9502Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1

trace_0
trace_12Μ
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9520
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9554Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1
ζ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
A
 	keras_api
‘_random_generator"
_tf_keras_layer
«
’	variables
£trainable_variables
€regularization_losses
₯	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
¨	variables
©trainable_variables
ͺregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses
kernel
	bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
A
―	keras_api
°_random_generator"
_tf_keras_layer
«
±	variables
²trainable_variables
³regularization_losses
΄	keras_api
΅__call__
+Ά&call_and_return_all_conditional_losses"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
έ
Όtrace_0
½trace_12’
+__inference_upconv_block_layer_call_fn_9563
+__inference_upconv_block_layer_call_fn_9572Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 zΌtrace_0z½trace_1

Ύtrace_0
Ώtrace_12Ψ
F__inference_upconv_block_layer_call_and_return_conditional_losses_9610
F__inference_upconv_block_layer_call_and_return_conditional_losses_9648Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 zΎtrace_0zΏtrace_1
ζ
ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses
kernel
	bias
!Ζ_jit_compiled_convolution_op"
_tf_keras_layer
«
Η	variables
Θtrainable_variables
Ιregularization_losses
Κ	keras_api
Λ__call__
+Μ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Νnon_trainable_variables
Ξlayers
Οmetrics
 Πlayer_regularization_losses
Ρlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
π
?trace_0
Σtrace_12΅
0__inference_crop_concat_block_layer_call_fn_9654
0__inference_crop_concat_block_layer_call_fn_9660Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 z?trace_0zΣtrace_1
¦
Τtrace_0
Υtrace_12λ
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9713
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9766Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 zΤtrace_0zΥtrace_1
@
 0
‘1
’2
£3"
trackable_list_wrapper
@
 0
‘1
’2
£3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Φnon_trainable_variables
Χlayers
Ψmetrics
 Ωlayer_regularization_losses
Ϊlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ρ
Ϋtrace_0
άtrace_12
+__inference_conv_block_3_layer_call_fn_9779
+__inference_conv_block_3_layer_call_fn_9792Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΫtrace_0zάtrace_1

έtrace_0
ήtrace_12Μ
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9810
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9844Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zέtrace_0zήtrace_1
ζ
ί	variables
ΰtrainable_variables
αregularization_losses
β	keras_api
γ__call__
+δ&call_and_return_all_conditional_losses
 kernel
	‘bias
!ε_jit_compiled_convolution_op"
_tf_keras_layer
A
ζ	keras_api
η_random_generator"
_tf_keras_layer
«
θ	variables
ιtrainable_variables
κregularization_losses
λ	keras_api
μ__call__
+ν&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
ξ	variables
οtrainable_variables
πregularization_losses
ρ	keras_api
ς__call__
+σ&call_and_return_all_conditional_losses
’kernel
	£bias
!τ_jit_compiled_convolution_op"
_tf_keras_layer
A
υ	keras_api
φ_random_generator"
_tf_keras_layer
«
χ	variables
ψtrainable_variables
ωregularization_losses
ϊ	keras_api
ϋ__call__
+ό&call_and_return_all_conditional_losses"
_tf_keras_layer
0
€0
₯1"
trackable_list_wrapper
0
€0
₯1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ύnon_trainable_variables
ώlayers
?metrics
 layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
α
trace_0
trace_12¦
-__inference_upconv_block_1_layer_call_fn_9853
-__inference_upconv_block_1_layer_call_fn_9862Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 ztrace_0ztrace_1

trace_0
trace_12ά
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9900
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9938Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 ztrace_0ztrace_1
ζ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
€kernel
	₯bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
τ
trace_0
trace_12Ή
2__inference_crop_concat_block_1_layer_call_fn_9944
2__inference_crop_concat_block_1_layer_call_fn_9950Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 ztrace_0ztrace_1
¬
trace_0
trace_12ρ
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10003
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10056Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 ztrace_0ztrace_1
@
¦0
§1
¨2
©3"
trackable_list_wrapper
@
¦0
§1
¨2
©3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
Σ
‘trace_0
’trace_12
,__inference_conv_block_4_layer_call_fn_10069
,__inference_conv_block_4_layer_call_fn_10082Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z‘trace_0z’trace_1

£trace_0
€trace_12Ξ
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10100
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10134Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z£trace_0z€trace_1
ζ
₯	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ͺ&call_and_return_all_conditional_losses
¦kernel
	§bias
!«_jit_compiled_convolution_op"
_tf_keras_layer
A
¬	keras_api
­_random_generator"
_tf_keras_layer
«
?	variables
―trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses"
_tf_keras_layer
ζ
΄	variables
΅trainable_variables
Άregularization_losses
·	keras_api
Έ__call__
+Ή&call_and_return_all_conditional_losses
¨kernel
	©bias
!Ί_jit_compiled_convolution_op"
_tf_keras_layer
A
»	keras_api
Ό_random_generator"
_tf_keras_layer
«
½	variables
Ύtrainable_variables
Ώregularization_losses
ΐ	keras_api
Α__call__
+Β&call_and_return_all_conditional_losses"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
΅
Γnon_trainable_variables
Δlayers
Εmetrics
 Ζlayer_regularization_losses
Ηlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ο
Θtrace_02Π
)__inference_conv2d_10_layer_call_fn_10143’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΘtrace_0

Ιtrace_02λ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_10153’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΙtrace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Κnon_trainable_variables
Λlayers
Μmetrics
 Νlayer_regularization_losses
Ξlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
σ
Οtrace_02Τ
-__inference_activation_12_layer_call_fn_10158’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΟtrace_0

Πtrace_02ο
H__inference_activation_12_layer_call_and_return_conditional_losses_10163’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΠtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ρnon_trainable_variables
?layers
Σmetrics
 Τlayer_regularization_losses
Υlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ν
Φtrace_02Ξ
'__inference_outputs_layer_call_fn_10168’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΦtrace_0

Χtrace_02ι
B__inference_outputs_layer_call_and_return_conditional_losses_10173’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΧtrace_0
2:02conv_block/conv2d/kernel
$:"2conv_block/conv2d/bias
4:22conv_block/conv2d_1/kernel
&:$2conv_block/conv2d_1/bias
6:4 2conv_block_1/conv2d_2/kernel
(:& 2conv_block_1/conv2d_2/bias
6:4  2conv_block_1/conv2d_3/kernel
(:& 2conv_block_1/conv2d_3/bias
6:4 @2conv_block_2/conv2d_4/kernel
(:&@2conv_block_2/conv2d_4/bias
6:4@@2conv_block_2/conv2d_5/kernel
(:&@2conv_block_2/conv2d_5/bias
>:< @2$upconv_block/conv2d_transpose/kernel
0:. 2"upconv_block/conv2d_transpose/bias
6:4@ 2conv_block_3/conv2d_6/kernel
(:& 2conv_block_3/conv2d_6/bias
6:4  2conv_block_3/conv2d_7/kernel
(:& 2conv_block_3/conv2d_7/bias
B:@ 2(upconv_block_1/conv2d_transpose_1/kernel
4:22&upconv_block_1/conv2d_transpose_1/bias
6:4 2conv_block_4/conv2d_8/kernel
(:&2conv_block_4/conv2d_8/bias
6:42conv_block_4/conv2d_9/kernel
(:&2conv_block_4/conv2d_9/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
P
Ψ0
Ω1
Ϊ2
Ϋ3
ά4
έ5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
τBρ
#__inference_unet_layer_call_fn_8287inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
τBρ
#__inference_unet_layer_call_fn_9101inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
>__inference_unet_layer_call_and_return_conditional_losses_9171inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
>__inference_unet_layer_call_and_return_conditional_losses_9241inputs"Ώ
Ά²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ΘBΕ
"__inference_signature_wrapper_9300inputs"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
τBρ
)__inference_conv_block_layer_call_fn_9313inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
τBρ
)__inference_conv_block_layer_call_fn_9326inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_conv_block_layer_call_and_return_conditional_losses_9344inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_conv_block_layer_call_and_return_conditional_losses_9378inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ήnon_trainable_variables
ίlayers
ΰmetrics
 αlayer_regularization_losses
βlayer_metrics
½	variables
Ύtrainable_variables
Ώregularization_losses
Α__call__
+Β&call_and_return_all_conditional_losses
'Β"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
γnon_trainable_variables
δlayers
εmetrics
 ζlayer_regularization_losses
ηlayer_metrics
Ζ	variables
Ηtrainable_variables
Θregularization_losses
Κ__call__
+Λ&call_and_return_all_conditional_losses
'Λ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
θnon_trainable_variables
ιlayers
κmetrics
 λlayer_regularization_losses
μlayer_metrics
Μ	variables
Νtrainable_variables
Ξregularization_losses
Π__call__
+Ρ&call_and_return_all_conditional_losses
'Ρ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
νnon_trainable_variables
ξlayers
οmetrics
 πlayer_regularization_losses
ρlayer_metrics
Υ	variables
Φtrainable_variables
Χregularization_losses
Ω__call__
+Ϊ&call_and_return_all_conditional_losses
'Ϊ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΰBέ
,__inference_max_pooling2d_layer_call_fn_9383inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ϋBψ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9388inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
J
10
21
32
43
54
65"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
φBσ
+__inference_conv_block_1_layer_call_fn_9401inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
+__inference_conv_block_1_layer_call_fn_9414inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9432inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9466inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ςnon_trainable_variables
σlayers
τmetrics
 υlayer_regularization_losses
φlayer_metrics
λ	variables
μtrainable_variables
νregularization_losses
ο__call__
+π&call_and_return_all_conditional_losses
'π"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
τ	variables
υtrainable_variables
φregularization_losses
ψ__call__
+ω&call_and_return_all_conditional_losses
'ω"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
όnon_trainable_variables
ύlayers
ώmetrics
 ?layer_regularization_losses
layer_metrics
ϊ	variables
ϋtrainable_variables
όregularization_losses
ώ__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
βBί
.__inference_max_pooling2d_1_layer_call_fn_9471inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ύBϊ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9476inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
J
C0
D1
E2
F3
G4
H5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
φBσ
+__inference_conv_block_2_layer_call_fn_9489inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
+__inference_conv_block_2_layer_call_fn_9502inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9520inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9554inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
’	variables
£trainable_variables
€regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ͺregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
±	variables
²trainable_variables
³regularization_losses
΅__call__
+Ά&call_and_return_all_conditional_losses
'Ά"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B?
+__inference_upconv_block_layer_call_fn_9563inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B?
+__inference_upconv_block_layer_call_fn_9572inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
F__inference_upconv_block_layer_call_and_return_conditional_losses_9610inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
F__inference_upconv_block_layer_call_and_return_conditional_losses_9648inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_conv2d_transpose_layer_call_fn_10182’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0

 trace_02ς
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_10219’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z trace_0
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
Η	variables
Θtrainable_variables
Ιregularization_losses
Λ__call__
+Μ&call_and_return_all_conditional_losses
'Μ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_crop_concat_block_layer_call_fn_9654x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
0__inference_crop_concat_block_layer_call_fn_9660x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
²B―
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9713x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
²B―
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9766x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
 "
trackable_list_wrapper
J
]0
^1
_2
`3
a4
b5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
φBσ
+__inference_conv_block_3_layer_call_fn_9779inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
+__inference_conv_block_3_layer_call_fn_9792inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9810inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9844inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
 0
‘1"
trackable_list_wrapper
0
 0
‘1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
ί	variables
ΰtrainable_variables
αregularization_losses
γ__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
«non_trainable_variables
¬layers
­metrics
 ?layer_regularization_losses
―layer_metrics
θ	variables
ιtrainable_variables
κregularization_losses
μ__call__
+ν&call_and_return_all_conditional_losses
'ν"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
’0
£1"
trackable_list_wrapper
0
’0
£1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
΄layer_metrics
ξ	variables
οtrainable_variables
πregularization_losses
ς__call__
+σ&call_and_return_all_conditional_losses
'σ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
΅non_trainable_variables
Άlayers
·metrics
 Έlayer_regularization_losses
Ήlayer_metrics
χ	variables
ψtrainable_variables
ωregularization_losses
ϋ__call__
+ό&call_and_return_all_conditional_losses
'ό"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_upconv_block_1_layer_call_fn_9853inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
-__inference_upconv_block_1_layer_call_fn_9862inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9900inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9938inputs"Ε
Ό²Έ
FullArgSpec
args
jself
jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
0
€0
₯1"
trackable_list_wrapper
0
€0
₯1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ίnon_trainable_variables
»layers
Όmetrics
 ½layer_regularization_losses
Ύlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ψ
Ώtrace_02Ω
2__inference_conv2d_transpose_1_layer_call_fn_10228’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΏtrace_0

ΐtrace_02τ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_10265’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zΐtrace_0
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Αnon_trainable_variables
Βlayers
Γmetrics
 Δlayer_regularization_losses
Εlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
2__inference_crop_concat_block_1_layer_call_fn_9944x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
B
2__inference_crop_concat_block_1_layer_call_fn_9950x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
΅B²
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10003x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
΅B²
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10056x
down_layer"Ξ
Ε²Α
FullArgSpec&
args
jself
jx
j
down_layer
varargs
 
varkwjkwargs
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsͺ

trainingp 
annotationsͺ *
 
 "
trackable_list_wrapper
J
w0
x1
y2
z3
{4
|5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
χBτ
,__inference_conv_block_4_layer_call_fn_10069inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χBτ
,__inference_conv_block_4_layer_call_fn_10082inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10100inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10134inputs"Ή
°²¬
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
¦0
§1"
trackable_list_wrapper
0
¦0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
₯	variables
¦trainable_variables
§regularization_losses
©__call__
+ͺ&call_and_return_all_conditional_losses
'ͺ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
?	variables
―trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
0
¨0
©1"
trackable_list_wrapper
0
¨0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
΄	variables
΅trainable_variables
Άregularization_losses
Έ__call__
+Ή&call_and_return_all_conditional_losses
'Ή"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
½	variables
Ύtrainable_variables
Ώregularization_losses
Α__call__
+Β&call_and_return_all_conditional_losses
'Β"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_10_layer_call_fn_10143inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ψBυ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_10153inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
αBή
-__inference_activation_12_layer_call_fn_10158inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
όBω
H__inference_activation_12_layer_call_and_return_conditional_losses_10163inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΫBΨ
'__inference_outputs_layer_call_fn_10168inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φBσ
B__inference_outputs_layer_call_and_return_conditional_losses_10173inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
R
Ϊ	variables
Ϋ	keras_api

άtotal

έcount"
_tf_keras_metric
c
ή	variables
ί	keras_api

ΰtotal

αcount
β
_fn_kwargs"
_tf_keras_metric
c
γ	variables
δ	keras_api

εtotal

ζcount
η
_fn_kwargs"
_tf_keras_metric
c
θ	variables
ι	keras_api

κtotal

λcount
μ
_fn_kwargs"
_tf_keras_metric
c
ν	variables
ξ	keras_api

οtotal

πcount
ρ
_fn_kwargs"
_tf_keras_metric

ς	variables
σ	keras_api
τtrue_positives
υtrue_negatives
φfalse_positives
χfalse_negatives"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_conv2d_transpose_layer_call_fn_10182inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?Bό
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_10219inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ζBγ
2__inference_conv2d_transpose_1_layer_call_fn_10228inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Bώ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_10265inputs"’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ά0
έ1"
trackable_list_wrapper
.
Ϊ	variables"
_generic_user_object
:  (2total
:  (2count
0
ΰ0
α1"
trackable_list_wrapper
.
ή	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ε0
ζ1"
trackable_list_wrapper
.
γ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
κ0
λ1"
trackable_list_wrapper
.
θ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ο0
π1"
trackable_list_wrapper
.
ν	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
τ0
υ1
φ2
χ3"
trackable_list_wrapper
.
ς	variables"
_generic_user_object
:Θ (2true_positives
:Θ (2true_negatives
 :Θ (2false_positives
 :Θ (2false_negativesς
__inference__wrapped_model_7734Ξ4 ‘’£€₯¦§¨©I’F
?’<
:7
inputs+???????????????????????????
ͺ "KͺH
F
outputs;8
outputs+???????????????????????????Ω
H__inference_activation_12_layer_call_and_return_conditional_losses_10163I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 °
-__inference_activation_12_layer_call_fn_10158I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????Ϋ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_10153I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 ³
)__inference_conv2d_10_layer_call_fn_10143I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????δ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_10265€₯I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+???????????????????????????
 Ό
2__inference_conv2d_transpose_1_layer_call_fn_10228€₯I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+???????????????????????????β
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_10219I’F
?’<
:7
inputs+???????????????????????????@
ͺ "?’<
52
0+??????????????????????????? 
 Ί
0__inference_conv2d_transpose_layer_call_fn_10182I’F
?’<
:7
inputs+???????????????????????????@
ͺ "2/+??????????????????????????? ε
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9432M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "?’<
52
0+??????????????????????????? 
 ε
F__inference_conv_block_1_layer_call_and_return_conditional_losses_9466M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "?’<
52
0+??????????????????????????? 
 ½
+__inference_conv_block_1_layer_call_fn_9401M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "2/+??????????????????????????? ½
+__inference_conv_block_1_layer_call_fn_9414M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "2/+??????????????????????????? ε
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9520M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "?’<
52
0+???????????????????????????@
 ε
F__inference_conv_block_2_layer_call_and_return_conditional_losses_9554M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "?’<
52
0+???????????????????????????@
 ½
+__inference_conv_block_2_layer_call_fn_9489M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "2/+???????????????????????????@½
+__inference_conv_block_2_layer_call_fn_9502M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "2/+???????????????????????????@ε
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9810 ‘’£M’J
C’@
:7
inputs+???????????????????????????@
p 
ͺ "?’<
52
0+??????????????????????????? 
 ε
F__inference_conv_block_3_layer_call_and_return_conditional_losses_9844 ‘’£M’J
C’@
:7
inputs+???????????????????????????@
p
ͺ "?’<
52
0+??????????????????????????? 
 ½
+__inference_conv_block_3_layer_call_fn_9779 ‘’£M’J
C’@
:7
inputs+???????????????????????????@
p 
ͺ "2/+??????????????????????????? ½
+__inference_conv_block_3_layer_call_fn_9792 ‘’£M’J
C’@
:7
inputs+???????????????????????????@
p
ͺ "2/+??????????????????????????? ζ
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10100¦§¨©M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "?’<
52
0+???????????????????????????
 ζ
G__inference_conv_block_4_layer_call_and_return_conditional_losses_10134¦§¨©M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "?’<
52
0+???????????????????????????
 Ύ
,__inference_conv_block_4_layer_call_fn_10069¦§¨©M’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "2/+???????????????????????????Ύ
,__inference_conv_block_4_layer_call_fn_10082¦§¨©M’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "2/+???????????????????????????γ
D__inference_conv_block_layer_call_and_return_conditional_losses_9344M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "?’<
52
0+???????????????????????????
 γ
D__inference_conv_block_layer_call_and_return_conditional_losses_9378M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "?’<
52
0+???????????????????????????
 »
)__inference_conv_block_layer_call_fn_9313M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "2/+???????????????????????????»
)__inference_conv_block_layer_call_fn_9326M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "2/+???????????????????????????¬
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10003Ω’
z’w
52
x+???????????????????????????
>;

down_layer+???????????????????????????
ͺ

trainingp "?’<
52
0+??????????????????????????? 
 ¬
N__inference_crop_concat_block_1_layer_call_and_return_conditional_losses_10056Ω’
z’w
52
x+???????????????????????????
>;

down_layer+???????????????????????????
ͺ

trainingp"?’<
52
0+??????????????????????????? 
 
2__inference_crop_concat_block_1_layer_call_fn_9944Μ’
z’w
52
x+???????????????????????????
>;

down_layer+???????????????????????????
ͺ

trainingp "2/+??????????????????????????? 
2__inference_crop_concat_block_1_layer_call_fn_9950Μ’
z’w
52
x+???????????????????????????
>;

down_layer+???????????????????????????
ͺ

trainingp"2/+??????????????????????????? ©
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9713Ω’
z’w
52
x+??????????????????????????? 
>;

down_layer+??????????????????????????? 
ͺ

trainingp "?’<
52
0+???????????????????????????@
 ©
K__inference_crop_concat_block_layer_call_and_return_conditional_losses_9766Ω’
z’w
52
x+??????????????????????????? 
>;

down_layer+??????????????????????????? 
ͺ

trainingp"?’<
52
0+???????????????????????????@
 
0__inference_crop_concat_block_layer_call_fn_9654Μ’
z’w
52
x+??????????????????????????? 
>;

down_layer+??????????????????????????? 
ͺ

trainingp "2/+???????????????????????????@
0__inference_crop_concat_block_layer_call_fn_9660Μ’
z’w
52
x+??????????????????????????? 
>;

down_layer+??????????????????????????? 
ͺ

trainingp"2/+???????????????????????????@μ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9476R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Δ
.__inference_max_pooling2d_1_layer_call_fn_9471R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????κ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9388R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Β
,__inference_max_pooling2d_layer_call_fn_9383R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????Σ
B__inference_outputs_layer_call_and_return_conditional_losses_10173I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 ͺ
'__inference_outputs_layer_call_fn_10168I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+????????????????????????????
"__inference_signature_wrapper_9300Ψ4 ‘’£€₯¦§¨©S’P
’ 
IͺF
D
inputs:7
inputs+???????????????????????????"KͺH
F
outputs;8
outputs+???????????????????????????
>__inference_unet_layer_call_and_return_conditional_losses_9171Κ4 ‘’£€₯¦§¨©Q’N
G’D
:7
inputs+???????????????????????????
p 

 
ͺ "?’<
52
0+???????????????????????????
 
>__inference_unet_layer_call_and_return_conditional_losses_9241Κ4 ‘’£€₯¦§¨©Q’N
G’D
:7
inputs+???????????????????????????
p

 
ͺ "?’<
52
0+???????????????????????????
 ε
#__inference_unet_layer_call_fn_8287½4 ‘’£€₯¦§¨©Q’N
G’D
:7
inputs+???????????????????????????
p 

 
ͺ "2/+???????????????????????????ε
#__inference_unet_layer_call_fn_9101½4 ‘’£€₯¦§¨©Q’N
G’D
:7
inputs+???????????????????????????
p

 
ͺ "2/+???????????????????????????ο
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9900’€₯Y’V
?’<
:7
inputs+??????????????????????????? 
ͺ

trainingp "?’<
52
0+???????????????????????????
 ο
H__inference_upconv_block_1_layer_call_and_return_conditional_losses_9938’€₯Y’V
?’<
:7
inputs+??????????????????????????? 
ͺ

trainingp"?’<
52
0+???????????????????????????
 Η
-__inference_upconv_block_1_layer_call_fn_9853€₯Y’V
?’<
:7
inputs+??????????????????????????? 
ͺ

trainingp "2/+???????????????????????????Η
-__inference_upconv_block_1_layer_call_fn_9862€₯Y’V
?’<
:7
inputs+??????????????????????????? 
ͺ

trainingp"2/+???????????????????????????ν
F__inference_upconv_block_layer_call_and_return_conditional_losses_9610’Y’V
?’<
:7
inputs+???????????????????????????@
ͺ

trainingp "?’<
52
0+??????????????????????????? 
 ν
F__inference_upconv_block_layer_call_and_return_conditional_losses_9648’Y’V
?’<
:7
inputs+???????????????????????????@
ͺ

trainingp"?’<
52
0+??????????????????????????? 
 Ε
+__inference_upconv_block_layer_call_fn_9563Y’V
?’<
:7
inputs+???????????????????????????@
ͺ

trainingp "2/+??????????????????????????? Ε
+__inference_upconv_block_layer_call_fn_9572Y’V
?’<
:7
inputs+???????????????????????????@
ͺ

trainingp"2/+??????????????????????????? 