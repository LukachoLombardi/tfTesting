źĻ
õÄ
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
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
H
ShardedFilename
basename	
shard

num_shards
filename
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8Ü
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
}
Adam/v/result/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/result/bias
v
&Adam/v/result/bias/Read/ReadVariableOpReadVariableOpAdam/v/result/bias*
_output_shapes	
:*
dtype0
}
Adam/m/result/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/result/bias
v
&Adam/m/result/bias/Read/ReadVariableOpReadVariableOpAdam/m/result/bias*
_output_shapes	
:*
dtype0

Adam/v/result/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/v/result/kernel

(Adam/v/result/kernel/Read/ReadVariableOpReadVariableOpAdam/v/result/kernel* 
_output_shapes
:
*
dtype0

Adam/m/result/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/m/result/kernel

(Adam/m/result/kernel/Read/ReadVariableOpReadVariableOpAdam/m/result/kernel* 
_output_shapes
:
*
dtype0

Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
x
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes	
:*
dtype0

Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
x
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes	
:*
dtype0

Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel* 
_output_shapes
:
*
dtype0

Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel* 
_output_shapes
:
*
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:*
dtype0

Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	@*
dtype0

Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
o
result/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameresult/bias
h
result/bias/Read/ReadVariableOpReadVariableOpresult/bias*
_output_shapes	
:*
dtype0
x
result/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameresult/kernel
q
!result/kernel/Read/ReadVariableOpReadVariableOpresult/kernel* 
_output_shapes
:
*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@*
dtype0
~
serving_default_board_inputPlaceholder*'
_output_shapes
:’’’’’’’’’@*
dtype0*
shape:’’’’’’’’’@

StatefulPartitionedCallStatefulPartitionedCallserving_default_board_inputdense/kernel
dense/biasdense_1/kerneldense_1/biasresult/kernelresult/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_471090

NoOpNoOp
8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*æ7
valueµ7B²7 B«7

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
'
#_self_saveable_object_factories* 
Ė
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories*
Ź
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
#"_self_saveable_object_factories* 
Ė
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
#+_self_saveable_object_factories*
Ź
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator
#3_self_saveable_object_factories* 
Ė
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
#<_self_saveable_object_factories*
.
0
1
)2
*3
:4
;5*
.
0
1
)2
*3
:4
;5*

=0
>1* 
°
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
* 

L
_variables
M_iterations
N_learning_rate
O_index_dict
P
_momentums
Q_velocities
R_update_step_xla*

Sserving_default* 
* 
* 

0
1*

0
1*
	
=0* 

Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ytrace_0* 

Ztrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

`trace_0
atrace_1* 

btrace_0
ctrace_1* 
'
#d_self_saveable_object_factories* 
* 

)0
*1*

)0
*1*
	
>0* 

enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

qtrace_0
rtrace_1* 

strace_0
ttrace_1* 
'
#u_self_saveable_object_factories* 
* 

:0
;1*

:0
;1*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
]W
VARIABLE_VALUEresult/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEresult/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

}trace_0* 

~trace_0* 
* 
.
0
1
2
3
4
5*

0
1*
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
n
M0
1
2
3
4
5
6
7
8
9
10
11
12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
0
1
2
3
4
5*
4
0
1
2
3
4
5*
* 
* 
* 
* 
* 
	
=0* 
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
	
>0* 
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
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/result/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/result/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/result/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/result/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!result/kernel/Read/ReadVariableOpresult/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOp(Adam/m/result/kernel/Read/ReadVariableOp(Adam/v/result/kernel/Read/ReadVariableOp&Adam/m/result/bias/Read/ReadVariableOp&Adam/v/result/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_471448
ø
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasresult/kernelresult/bias	iterationlearning_rateAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/result/kernelAdam/v/result/kernelAdam/m/result/biasAdam/v/result/biastotal_1count_1totalcount*$
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_471530
Š	
ö
B__inference_result_layer_call_and_return_conditional_losses_471335

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ē

(__inference_dense_1_layer_call_fn_471274

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallŁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_470794p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
£
 
__inference_loss_fn_0_471344D
1kernel_regularizer_l2loss_readvariableop_resource:	@
identity¢(kernel/Regularizer/L2Loss/ReadVariableOp
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp
¾
¢
C__inference_dense_1_layer_call_and_return_conditional_losses_470794

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¢
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
$
Ø
A__inference_model_layer_call_and_return_conditional_losses_471061
board_input
dense_471035:	@
dense_471037:	"
dense_1_471041:

dense_1_471043:	!
result_471047:

result_471049:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/StatefulPartitionedCallź
dense/StatefulPartitionedCallStatefulPartitionedCallboard_inputdense_471035dense_471037*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_470766ē
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470910
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_471041dense_1_471043*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_470794
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470877
result/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0result_471047result_471049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_470817v
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_471035*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpdense_1_471041* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity'result/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input


d
E__inference_dropout_1_layer_call_and_return_conditional_losses_471316

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
õ
c
*__inference_dropout_1_layer_call_fn_471299

inputs
identity¢StatefulPartitionedCallĮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470877p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Š	
ö
B__inference_result_layer_call_and_return_conditional_losses_470817

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ŗ5
Ž	
__inference__traced_save_471448
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_result_kernel_read_readvariableop*
&savev2_result_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableop3
/savev2_adam_m_result_kernel_read_readvariableop3
/savev2_adam_v_result_kernel_read_readvariableop1
-savev2_adam_m_result_bias_read_readvariableop1
-savev2_adam_v_result_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: ś

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

value
B
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_result_kernel_read_readvariableop&savev2_result_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop/savev2_adam_m_result_kernel_read_readvariableop/savev2_adam_v_result_kernel_read_readvariableop-savev2_adam_m_result_bias_read_readvariableop-savev2_adam_v_result_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*Ķ
_input_shapes»
ø: :	@::
::
:: : :	@:	@:::
:
:::
:
::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	@:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	@:%
!

_output_shapes
:	@:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
6
Ź
A__inference_model_layer_call_and_return_conditional_losses_471214

inputs7
$dense_matmul_readvariableop_resource:	@4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
%result_matmul_readvariableop_resource:
5
&result_biasadd_readvariableop_resource:	
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/BiasAdd/ReadVariableOp¢result/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    “
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMul!dropout/dropout/SelectV2:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_1/dropout/MulMuldense_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’a
dropout_1/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:”
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ¼
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
result/MatMul/ReadVariableOpReadVariableOp%result_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
result/MatMulMatMul#dropout_1/dropout/SelectV2:output:0$result/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
result/BiasAdd/ReadVariableOpReadVariableOp&result_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
result/BiasAddBiasAddresult/MatMul:product:0%result/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityresult/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/BiasAdd/ReadVariableOp^result/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2>
result/BiasAdd/ReadVariableOpresult/BiasAdd/ReadVariableOp2<
result/MatMul/ReadVariableOpresult/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
„
”
__inference_loss_fn_1_471353E
1kernel_regularizer_l2loss_readvariableop_resource:

identity¢(kernel/Regularizer/L2Loss/ReadVariableOp
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp

D
(__inference_dropout_layer_call_fn_471243

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470777a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


d
E__inference_dropout_1_layer_call_and_return_conditional_losses_470877

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
·

A__inference_dense_layer_call_and_return_conditional_losses_470766

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¢
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs


b
C__inference_dropout_layer_call_and_return_conditional_losses_471265

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Å

'__inference_result_layer_call_fn_471325

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallŲ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_470817p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
µ

!__inference__wrapped_model_470744
board_input=
*model_dense_matmul_readvariableop_resource:	@:
+model_dense_biasadd_readvariableop_resource:	@
,model_dense_1_matmul_readvariableop_resource:
<
-model_dense_1_biasadd_readvariableop_resource:	?
+model_result_matmul_readvariableop_resource:
;
,model_result_biasadd_readvariableop_resource:	
identity¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¢$model/dense_1/BiasAdd/ReadVariableOp¢#model/dense_1/MatMul/ReadVariableOp¢#model/result/BiasAdd/ReadVariableOp¢"model/result/MatMul/ReadVariableOp
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
model/dense/MatMulMatMulboard_input)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
model/dropout/IdentityIdentitymodel/dense/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0”
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’y
model/dropout_1/IdentityIdentity model/dense_1/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
"model/result/MatMul/ReadVariableOpReadVariableOp+model_result_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
model/result/MatMulMatMul!model/dropout_1/Identity:output:0*model/result/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
#model/result/BiasAdd/ReadVariableOpReadVariableOp,model_result_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
model/result/BiasAddBiasAddmodel/result/MatMul:product:0+model/result/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
IdentityIdentitymodel/result/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp$^model/result/BiasAdd/ReadVariableOp#^model/result/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2J
#model/result/BiasAdd/ReadVariableOp#model/result/BiasAdd/ReadVariableOp2H
"model/result/MatMul/ReadVariableOp"model/result/MatMul/ReadVariableOp:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input
»f

"__inference__traced_restore_471530
file_prefix0
assignvariableop_dense_kernel:	@,
assignvariableop_1_dense_bias:	5
!assignvariableop_2_dense_1_kernel:
.
assignvariableop_3_dense_1_bias:	4
 assignvariableop_4_result_kernel:
-
assignvariableop_5_result_bias:	&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: 9
&assignvariableop_8_adam_m_dense_kernel:	@9
&assignvariableop_9_adam_v_dense_kernel:	@4
%assignvariableop_10_adam_m_dense_bias:	4
%assignvariableop_11_adam_v_dense_bias:	=
)assignvariableop_12_adam_m_dense_1_kernel:
=
)assignvariableop_13_adam_v_dense_1_kernel:
6
'assignvariableop_14_adam_m_dense_1_bias:	6
'assignvariableop_15_adam_v_dense_1_bias:	<
(assignvariableop_16_adam_m_result_kernel:
<
(assignvariableop_17_adam_v_result_kernel:
5
&assignvariableop_18_adam_m_result_bias:	5
&assignvariableop_19_adam_v_result_bias:	%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ż

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

value
B
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¢
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOp assignvariableop_4_result_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_5AssignVariableOpassignvariableop_5_result_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:³
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_8AssignVariableOp&assignvariableop_8_adam_m_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_9AssignVariableOp&assignvariableop_9_adam_v_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_10AssignVariableOp%assignvariableop_10_adam_m_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_11AssignVariableOp%assignvariableop_11_adam_v_dense_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_dense_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_dense_1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_m_dense_1_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_v_dense_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_result_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_result_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_m_result_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_v_result_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ß
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: Ģ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
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
!
Ż
A__inference_model_layer_call_and_return_conditional_losses_470832

inputs
dense_470767:	@
dense_470769:	"
dense_1_470795:

dense_1_470797:	!
result_470818:

result_470820:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/StatefulPartitionedCallå
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_470767dense_470769*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_470766×
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470777
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_470795dense_1_470797*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_470794Ż
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470805
result/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0result_470818result_470820*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_470817v
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_470767*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpdense_1_470795* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity'result/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
Ū

$__inference_signature_wrapper_471090
board_input
unknown:	@
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCallš
StatefulPartitionedCallStatefulPartitionedCallboard_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_470744p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input
ż

&__inference_model_layer_call_fn_471003
board_input
unknown:	@
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallboard_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_470971p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input
ž#
£
A__inference_model_layer_call_and_return_conditional_losses_470971

inputs
dense_470945:	@
dense_470947:	"
dense_1_470951:

dense_1_470953:	!
result_470957:

result_470959:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/StatefulPartitionedCallå
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_470945dense_470947*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_470766ē
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470910
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_470951dense_1_470953*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_470794
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470877
result/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0result_470957result_470959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_470817v
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_470945*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpdense_1_470951* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity'result/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ē
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
ī

&__inference_model_layer_call_fn_471115

inputs
unknown:	@
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_470832p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_470805

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:’’’’’’’’’\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:’’’’’’’’’"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
·

A__inference_dense_layer_call_and_return_conditional_losses_471238

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¢
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs


b
C__inference_dropout_layer_call_and_return_conditional_losses_470910

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:’’’’’’’’’T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ą

&__inference_dense_layer_call_fn_471223

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_470766p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
ż&
Ź
A__inference_model_layer_call_and_return_conditional_losses_471166

inputs7
$dense_matmul_readvariableop_resource:	@4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	9
%result_matmul_readvariableop_resource:
5
&result_biasadd_readvariableop_resource:	
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/BiasAdd/ReadVariableOp¢result/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’m
dropout_1/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
result/MatMul/ReadVariableOpReadVariableOp%result_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
result/MatMulMatMuldropout_1/Identity:output:0$result/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
result/BiasAdd/ReadVariableOpReadVariableOp&result_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
result/BiasAddBiasAddresult/MatMul:product:0%result/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityresult/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/BiasAdd/ReadVariableOp^result/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2>
result/BiasAdd/ReadVariableOpresult/BiasAdd/ReadVariableOp2<
result/MatMul/ReadVariableOpresult/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
ń
a
(__inference_dropout_layer_call_fn_471248

inputs
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470910p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ś
a
C__inference_dropout_layer_call_and_return_conditional_losses_471253

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:’’’’’’’’’\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:’’’’’’’’’"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_471304

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:’’’’’’’’’\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:’’’’’’’’’"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
£!
ā
A__inference_model_layer_call_and_return_conditional_losses_471032
board_input
dense_471006:	@
dense_471008:	"
dense_1_471012:

dense_1_471014:	!
result_471018:

result_471020:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢(kernel/Regularizer/L2Loss/ReadVariableOp¢*kernel/Regularizer_1/L2Loss/ReadVariableOp¢result/StatefulPartitionedCallź
dense/StatefulPartitionedCallStatefulPartitionedCallboard_inputdense_471006dense_471008*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_470766×
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_470777
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_471012dense_1_471014*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_470794Ż
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470805
result/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0result_471018result_471020*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_470817v
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_471006*
_output_shapes
:	@*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
*kernel/Regularizer_1/L2Loss/ReadVariableOpReadVariableOpdense_1_471012* 
_output_shapes
:
*
dtype0z
kernel/Regularizer_1/L2LossL2Loss2kernel/Regularizer_1/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0$kernel/Regularizer_1/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity'result/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall)^kernel/Regularizer/L2Loss/ReadVariableOp+^kernel/Regularizer_1/L2Loss/ReadVariableOp^result/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp2X
*kernel/Regularizer_1/L2Loss/ReadVariableOp*kernel/Regularizer_1/L2Loss/ReadVariableOp2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input
ī

&__inference_model_layer_call_fn_471132

inputs
unknown:	@
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_470971p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
¾
¢
C__inference_dense_1_layer_call_and_return_conditional_losses_471289

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0v
kernel/Regularizer/L2LossL2Loss0kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0"kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¢
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/L2Loss/ReadVariableOp(kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ś
a
C__inference_dropout_layer_call_and_return_conditional_losses_470777

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:’’’’’’’’’\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:’’’’’’’’’"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ż

&__inference_model_layer_call_fn_470847
board_input
unknown:	@
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallboard_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_470832p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:’’’’’’’’’@
%
_user_specified_nameboard_input
£
F
*__inference_dropout_1_layer_call_fn_471294

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_470805a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
C
board_input4
serving_default_board_input:0’’’’’’’’’@;
result1
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:ŖÆ
¤
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
ą
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories"
_tf_keras_layer
į
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
#"_self_saveable_object_factories"
_tf_keras_layer
ą
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias
#+_self_saveable_object_factories"
_tf_keras_layer
į
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator
#3_self_saveable_object_factories"
_tf_keras_layer
ą
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
#<_self_saveable_object_factories"
_tf_keras_layer
J
0
1
)2
*3
:4
;5"
trackable_list_wrapper
J
0
1
)2
*3
:4
;5"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
Ź
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ķ
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32ā
&__inference_model_layer_call_fn_470847
&__inference_model_layer_call_fn_471115
&__inference_model_layer_call_fn_471132
&__inference_model_layer_call_fn_471003æ
¶²²
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
annotationsŖ *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
¹
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32Ī
A__inference_model_layer_call_and_return_conditional_losses_471166
A__inference_model_layer_call_and_return_conditional_losses_471214
A__inference_model_layer_call_and_return_conditional_losses_471032
A__inference_model_layer_call_and_return_conditional_losses_471061æ
¶²²
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
annotationsŖ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
ŠBĶ
!__inference__wrapped_model_470744board_input"
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
annotationsŖ *
 

L
_variables
M_iterations
N_learning_rate
O_index_dict
P
_momentums
Q_velocities
R_update_step_xla"
experimentalOptimizer
,
Sserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ź
Ytrace_02Ķ
&__inference_dense_layer_call_fn_471223¢
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
annotationsŖ *
 zYtrace_0

Ztrace_02č
A__inference_dense_layer_call_and_return_conditional_losses_471238¢
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
annotationsŖ *
 zZtrace_0
:	@2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Į
`trace_0
atrace_12
(__inference_dropout_layer_call_fn_471243
(__inference_dropout_layer_call_fn_471248³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z`trace_0zatrace_1
÷
btrace_0
ctrace_12Ą
C__inference_dropout_layer_call_and_return_conditional_losses_471253
C__inference_dropout_layer_call_and_return_conditional_losses_471265³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zbtrace_0zctrace_1
C
#d_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
'
>0"
trackable_list_wrapper
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ģ
jtrace_02Ļ
(__inference_dense_1_layer_call_fn_471274¢
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
annotationsŖ *
 zjtrace_0

ktrace_02ź
C__inference_dense_1_layer_call_and_return_conditional_losses_471289¢
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
annotationsŖ *
 zktrace_0
": 
2dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Å
qtrace_0
rtrace_12
*__inference_dropout_1_layer_call_fn_471294
*__inference_dropout_1_layer_call_fn_471299³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zqtrace_0zrtrace_1
ū
strace_0
ttrace_12Ä
E__inference_dropout_1_layer_call_and_return_conditional_losses_471304
E__inference_dropout_1_layer_call_and_return_conditional_losses_471316³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zstrace_0zttrace_1
C
#u_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ė
{trace_02Ī
'__inference_result_layer_call_fn_471325¢
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
annotationsŖ *
 z{trace_0

|trace_02é
B__inference_result_layer_call_and_return_conditional_losses_471335¢
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
annotationsŖ *
 z|trace_0
!:
2result/kernel
:2result/bias
 "
trackable_dict_wrapper
Ķ
}trace_02°
__inference_loss_fn_0_471344
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *¢ z}trace_0
Ķ
~trace_02°
__inference_loss_fn_1_471353
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *¢ z~trace_0
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
üBł
&__inference_model_layer_call_fn_470847board_input"æ
¶²²
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
annotationsŖ *
 
÷Bō
&__inference_model_layer_call_fn_471115inputs"æ
¶²²
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
annotationsŖ *
 
÷Bō
&__inference_model_layer_call_fn_471132inputs"æ
¶²²
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
annotationsŖ *
 
üBł
&__inference_model_layer_call_fn_471003board_input"æ
¶²²
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
annotationsŖ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_471166inputs"æ
¶²²
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
annotationsŖ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_471214inputs"æ
¶²²
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
annotationsŖ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_471032board_input"æ
¶²²
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
annotationsŖ *
 
B
A__inference_model_layer_call_and_return_conditional_losses_471061board_input"æ
¶²²
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
annotationsŖ *
 

M0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
æ2¼¹
®²Ŗ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
ĻBĢ
$__inference_signature_wrapper_471090board_input"
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
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ŚB×
&__inference_dense_layer_call_fn_471223inputs"¢
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
annotationsŖ *
 
õBņ
A__inference_dense_layer_call_and_return_conditional_losses_471238inputs"¢
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
annotationsŖ *
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
ķBź
(__inference_dropout_layer_call_fn_471243inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķBź
(__inference_dropout_layer_call_fn_471248inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
C__inference_dropout_layer_call_and_return_conditional_losses_471253inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
C__inference_dropout_layer_call_and_return_conditional_losses_471265inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
>0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBŁ
(__inference_dense_1_layer_call_fn_471274inputs"¢
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
annotationsŖ *
 
÷Bō
C__inference_dense_1_layer_call_and_return_conditional_losses_471289inputs"¢
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
annotationsŖ *
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
ļBģ
*__inference_dropout_1_layer_call_fn_471294inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ļBģ
*__inference_dropout_1_layer_call_fn_471299inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
E__inference_dropout_1_layer_call_and_return_conditional_losses_471304inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
E__inference_dropout_1_layer_call_and_return_conditional_losses_471316inputs"³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
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
ŪBŲ
'__inference_result_layer_call_fn_471325inputs"¢
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
annotationsŖ *
 
öBó
B__inference_result_layer_call_and_return_conditional_losses_471335inputs"¢
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
annotationsŖ *
 
³B°
__inference_loss_fn_0_471344"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *¢ 
³B°
__inference_loss_fn_1_471353"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *¢ 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
$:"	@2Adam/m/dense/kernel
$:"	@2Adam/v/dense/kernel
:2Adam/m/dense/bias
:2Adam/v/dense/bias
':%
2Adam/m/dense_1/kernel
':%
2Adam/v/dense_1/kernel
 :2Adam/m/dense_1/bias
 :2Adam/v/dense_1/bias
&:$
2Adam/m/result/kernel
&:$
2Adam/v/result/kernel
:2Adam/m/result/bias
:2Adam/v/result/bias
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
!__inference__wrapped_model_470744p)*:;4¢1
*¢'
%"
board_input’’’’’’’’’@
Ŗ "0Ŗ-
+
result!
result’’’’’’’’’¬
C__inference_dense_1_layer_call_and_return_conditional_losses_471289e)*0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
(__inference_dense_1_layer_call_fn_471274Z)*0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ ""
unknown’’’’’’’’’©
A__inference_dense_layer_call_and_return_conditional_losses_471238d/¢,
%¢"
 
inputs’’’’’’’’’@
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
&__inference_dense_layer_call_fn_471223Y/¢,
%¢"
 
inputs’’’’’’’’’@
Ŗ ""
unknown’’’’’’’’’®
E__inference_dropout_1_layer_call_and_return_conditional_losses_471304e4¢1
*¢'
!
inputs’’’’’’’’’
p 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 ®
E__inference_dropout_1_layer_call_and_return_conditional_losses_471316e4¢1
*¢'
!
inputs’’’’’’’’’
p
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
*__inference_dropout_1_layer_call_fn_471294Z4¢1
*¢'
!
inputs’’’’’’’’’
p 
Ŗ ""
unknown’’’’’’’’’
*__inference_dropout_1_layer_call_fn_471299Z4¢1
*¢'
!
inputs’’’’’’’’’
p
Ŗ ""
unknown’’’’’’’’’¬
C__inference_dropout_layer_call_and_return_conditional_losses_471253e4¢1
*¢'
!
inputs’’’’’’’’’
p 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 ¬
C__inference_dropout_layer_call_and_return_conditional_losses_471265e4¢1
*¢'
!
inputs’’’’’’’’’
p
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
(__inference_dropout_layer_call_fn_471243Z4¢1
*¢'
!
inputs’’’’’’’’’
p 
Ŗ ""
unknown’’’’’’’’’
(__inference_dropout_layer_call_fn_471248Z4¢1
*¢'
!
inputs’’’’’’’’’
p
Ŗ ""
unknown’’’’’’’’’D
__inference_loss_fn_0_471344$¢

¢ 
Ŗ "
unknown D
__inference_loss_fn_1_471353$)¢

¢ 
Ŗ "
unknown ŗ
A__inference_model_layer_call_and_return_conditional_losses_471032u)*:;<¢9
2¢/
%"
board_input’’’’’’’’’@
p 

 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 ŗ
A__inference_model_layer_call_and_return_conditional_losses_471061u)*:;<¢9
2¢/
%"
board_input’’’’’’’’’@
p

 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 µ
A__inference_model_layer_call_and_return_conditional_losses_471166p)*:;7¢4
-¢*
 
inputs’’’’’’’’’@
p 

 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 µ
A__inference_model_layer_call_and_return_conditional_losses_471214p)*:;7¢4
-¢*
 
inputs’’’’’’’’’@
p

 
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
&__inference_model_layer_call_fn_470847j)*:;<¢9
2¢/
%"
board_input’’’’’’’’’@
p 

 
Ŗ ""
unknown’’’’’’’’’
&__inference_model_layer_call_fn_471003j)*:;<¢9
2¢/
%"
board_input’’’’’’’’’@
p

 
Ŗ ""
unknown’’’’’’’’’
&__inference_model_layer_call_fn_471115e)*:;7¢4
-¢*
 
inputs’’’’’’’’’@
p 

 
Ŗ ""
unknown’’’’’’’’’
&__inference_model_layer_call_fn_471132e)*:;7¢4
-¢*
 
inputs’’’’’’’’’@
p

 
Ŗ ""
unknown’’’’’’’’’«
B__inference_result_layer_call_and_return_conditional_losses_471335e:;0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
'__inference_result_layer_call_fn_471325Z:;0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ ""
unknown’’’’’’’’’§
$__inference_signature_wrapper_471090)*:;C¢@
¢ 
9Ŗ6
4
board_input%"
board_input’’’’’’’’’@"0Ŗ-
+
result!
result’’’’’’’’’