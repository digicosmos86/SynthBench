??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
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
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
z
Hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_nameHidden_1/kernel
s
#Hidden_1/kernel/Read/ReadVariableOpReadVariableOpHidden_1/kernel*
_output_shapes

:*
dtype0
r
Hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameHidden_1/bias
k
!Hidden_1/bias/Read/ReadVariableOpReadVariableOpHidden_1/bias*
_output_shapes
:*
dtype0
z
Hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:|* 
shared_nameHidden_2/kernel
s
#Hidden_2/kernel/Read/ReadVariableOpReadVariableOpHidden_2/kernel*
_output_shapes

:|*
dtype0
r
Hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*
shared_nameHidden_2/bias
k
!Hidden_2/bias/Read/ReadVariableOpReadVariableOpHidden_2/bias*
_output_shapes
:|*
dtype0
v
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:|*
shared_nameOutput/kernel
o
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes

:|*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*
	0

1
2
3
4
5
*
	0

1
2
3
4
5
 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEHidden_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1

	0

1
 
?
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEHidden_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEHidden_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
x
serving_default_InputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasOutput/kernelOutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_41134757
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#Hidden_1/kernel/Read/ReadVariableOp!Hidden_1/bias/Read/ReadVariableOp#Hidden_2/kernel/Read/ReadVariableOp!Hidden_2/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_41134942
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_1/kernelHidden_1/biasHidden_2/kernelHidden_2/biasOutput/kernelOutput/bias*
Tin
	2*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_41134970??
?
?
$__inference__traced_restore_41134970
file_prefix2
 assignvariableop_hidden_1_kernel:.
 assignvariableop_1_hidden_1_bias:4
"assignvariableop_2_hidden_2_kernel:|.
 assignvariableop_3_hidden_2_bias:|2
 assignvariableop_4_output_kernel:|,
assignvariableop_5_output_bias:

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_hidden_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_Output_layer_call_and_return_conditional_losses_41134578

inputs0
matmul_readvariableop_resource:|-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????|: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????|
 
_user_specified_nameinputs
?

?
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561

inputs0
matmul_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????|W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134861

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_generator_layer_call_fn_41134791

inputs
unknown:
	unknown_0:
	unknown_1:|
	unknown_2:|
	unknown_3:|
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_generator_layer_call_and_return_conditional_losses_41134668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134841

inputs9
'hidden_1_matmul_readvariableop_resource:6
(hidden_1_biasadd_readvariableop_resource:9
'hidden_2_matmul_readvariableop_resource:|6
(hidden_2_biasadd_readvariableop_resource:|7
%output_matmul_readvariableop_resource:|4
&output_biasadd_readvariableop_resource:
identity??Hidden_1/BiasAdd/ReadVariableOp?Hidden_1/MatMul/ReadVariableOp?Hidden_2/BiasAdd/ReadVariableOp?Hidden_2/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
Hidden_1/TanhTanhHidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
Hidden_2/MatMulMatMulHidden_1/Tanh:y:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|?
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|b
Hidden_2/TanhTanhHidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
Output/MatMulMatMulHidden_2/Tanh:y:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityOutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden_1/BiasAdd/ReadVariableOp^Hidden_1/MatMul/ReadVariableOp ^Hidden_2/BiasAdd/ReadVariableOp^Hidden_2/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2B
Hidden_1/BiasAdd/ReadVariableOpHidden_1/BiasAdd/ReadVariableOp2@
Hidden_1/MatMul/ReadVariableOpHidden_1/MatMul/ReadVariableOp2B
Hidden_2/BiasAdd/ReadVariableOpHidden_2/BiasAdd/ReadVariableOp2@
Hidden_2/MatMul/ReadVariableOpHidden_2/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_generator_layer_call_fn_41134600	
input
unknown:
	unknown_0:
	unknown_1:|
	unknown_2:|
	unknown_3:|
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_generator_layer_call_and_return_conditional_losses_41134585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????

_user_specified_nameInput
?
?
)__inference_Output_layer_call_fn_41134890

inputs
unknown:|
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_41134578o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????|: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????|
 
_user_specified_nameinputs
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134738	
input#
hidden_1_41134722:
hidden_1_41134724:#
hidden_2_41134727:|
hidden_2_41134729:|!
output_41134732:|
output_41134734:
identity?? Hidden_1/StatefulPartitionedCall? Hidden_2/StatefulPartitionedCall?Output/StatefulPartitionedCall?
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_41134722hidden_1_41134724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544?
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_41134727hidden_2_41134729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561?
Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0output_41134732output_41134734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_41134578v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:N J
'
_output_shapes
:?????????

_user_specified_nameInput
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134668

inputs#
hidden_1_41134652:
hidden_1_41134654:#
hidden_2_41134657:|
hidden_2_41134659:|!
output_41134662:|
output_41134664:
identity?? Hidden_1/StatefulPartitionedCall? Hidden_2/StatefulPartitionedCall?Output/StatefulPartitionedCall?
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_41134652hidden_1_41134654*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544?
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_41134657hidden_2_41134659*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561?
Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0output_41134662output_41134664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_41134578v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134719	
input#
hidden_1_41134703:
hidden_1_41134705:#
hidden_2_41134708:|
hidden_2_41134710:|!
output_41134713:|
output_41134715:
identity?? Hidden_1/StatefulPartitionedCall? Hidden_2/StatefulPartitionedCall?Output/StatefulPartitionedCall?
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputhidden_1_41134703hidden_1_41134705*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544?
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_41134708hidden_2_41134710*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561?
Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0output_41134713output_41134715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_41134578v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:N J
'
_output_shapes
:?????????

_user_specified_nameInput
?
?
+__inference_Hidden_1_layer_call_fn_41134850

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
!__inference__traced_save_41134942
file_prefix.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*G
_input_shapes6
4: :::|:|:|:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:|: 

_output_shapes
:|:$ 

_output_shapes

:|: 

_output_shapes
::

_output_shapes
: 
?

?
D__inference_Output_layer_call_and_return_conditional_losses_41134901

inputs0
matmul_readvariableop_resource:|-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????|: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????|
 
_user_specified_nameinputs
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134816

inputs9
'hidden_1_matmul_readvariableop_resource:6
(hidden_1_biasadd_readvariableop_resource:9
'hidden_2_matmul_readvariableop_resource:|6
(hidden_2_biasadd_readvariableop_resource:|7
%output_matmul_readvariableop_resource:|4
&output_biasadd_readvariableop_resource:
identity??Hidden_1/BiasAdd/ReadVariableOp?Hidden_1/MatMul/ReadVariableOp?Hidden_2/BiasAdd/ReadVariableOp?Hidden_2/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
Hidden_1/MatMulMatMulinputs&Hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Hidden_1/BiasAddBiasAddHidden_1/MatMul:product:0'Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
Hidden_1/TanhTanhHidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
Hidden_2/MatMulMatMulHidden_1/Tanh:y:0&Hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|?
Hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
Hidden_2/BiasAddBiasAddHidden_2/MatMul:product:0'Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|b
Hidden_2/TanhTanhHidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
Output/MatMulMatMulHidden_2/Tanh:y:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
Output/SigmoidSigmoidOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityOutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^Hidden_1/BiasAdd/ReadVariableOp^Hidden_1/MatMul/ReadVariableOp ^Hidden_2/BiasAdd/ReadVariableOp^Hidden_2/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2B
Hidden_1/BiasAdd/ReadVariableOpHidden_1/BiasAdd/ReadVariableOp2@
Hidden_1/MatMul/ReadVariableOpHidden_1/MatMul/ReadVariableOp2B
Hidden_2/BiasAdd/ReadVariableOpHidden_2/BiasAdd/ReadVariableOp2@
Hidden_2/MatMul/ReadVariableOpHidden_2/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
#__inference__wrapped_model_41134526	
inputC
1generator_hidden_1_matmul_readvariableop_resource:@
2generator_hidden_1_biasadd_readvariableop_resource:C
1generator_hidden_2_matmul_readvariableop_resource:|@
2generator_hidden_2_biasadd_readvariableop_resource:|A
/generator_output_matmul_readvariableop_resource:|>
0generator_output_biasadd_readvariableop_resource:
identity??)generator/Hidden_1/BiasAdd/ReadVariableOp?(generator/Hidden_1/MatMul/ReadVariableOp?)generator/Hidden_2/BiasAdd/ReadVariableOp?(generator/Hidden_2/MatMul/ReadVariableOp?'generator/Output/BiasAdd/ReadVariableOp?&generator/Output/MatMul/ReadVariableOp?
(generator/Hidden_1/MatMul/ReadVariableOpReadVariableOp1generator_hidden_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
generator/Hidden_1/MatMulMatMulinput0generator/Hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)generator/Hidden_1/BiasAdd/ReadVariableOpReadVariableOp2generator_hidden_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
generator/Hidden_1/BiasAddBiasAdd#generator/Hidden_1/MatMul:product:01generator/Hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
generator/Hidden_1/TanhTanh#generator/Hidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(generator/Hidden_2/MatMul/ReadVariableOpReadVariableOp1generator_hidden_2_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
generator/Hidden_2/MatMulMatMulgenerator/Hidden_1/Tanh:y:00generator/Hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|?
)generator/Hidden_2/BiasAdd/ReadVariableOpReadVariableOp2generator_hidden_2_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0?
generator/Hidden_2/BiasAddBiasAdd#generator/Hidden_2/MatMul:product:01generator/Hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|v
generator/Hidden_2/TanhTanh#generator/Hidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|?
&generator/Output/MatMul/ReadVariableOpReadVariableOp/generator_output_matmul_readvariableop_resource*
_output_shapes

:|*
dtype0?
generator/Output/MatMulMatMulgenerator/Hidden_2/Tanh:y:0.generator/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'generator/Output/BiasAdd/ReadVariableOpReadVariableOp0generator_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
generator/Output/BiasAddBiasAdd!generator/Output/MatMul:product:0/generator/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
generator/Output/SigmoidSigmoid!generator/Output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitygenerator/Output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp*^generator/Hidden_1/BiasAdd/ReadVariableOp)^generator/Hidden_1/MatMul/ReadVariableOp*^generator/Hidden_2/BiasAdd/ReadVariableOp)^generator/Hidden_2/MatMul/ReadVariableOp(^generator/Output/BiasAdd/ReadVariableOp'^generator/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2V
)generator/Hidden_1/BiasAdd/ReadVariableOp)generator/Hidden_1/BiasAdd/ReadVariableOp2T
(generator/Hidden_1/MatMul/ReadVariableOp(generator/Hidden_1/MatMul/ReadVariableOp2V
)generator/Hidden_2/BiasAdd/ReadVariableOp)generator/Hidden_2/BiasAdd/ReadVariableOp2T
(generator/Hidden_2/MatMul/ReadVariableOp(generator/Hidden_2/MatMul/ReadVariableOp2R
'generator/Output/BiasAdd/ReadVariableOp'generator/Output/BiasAdd/ReadVariableOp2P
&generator/Output/MatMul/ReadVariableOp&generator/Output/MatMul/ReadVariableOp:N J
'
_output_shapes
:?????????

_user_specified_nameInput
?
?
,__inference_generator_layer_call_fn_41134774

inputs
unknown:
	unknown_0:
	unknown_1:|
	unknown_2:|
	unknown_3:|
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_generator_layer_call_and_return_conditional_losses_41134585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_generator_layer_call_and_return_conditional_losses_41134585

inputs#
hidden_1_41134545:
hidden_1_41134547:#
hidden_2_41134562:|
hidden_2_41134564:|!
output_41134579:|
output_41134581:
identity?? Hidden_1/StatefulPartitionedCall? Hidden_2/StatefulPartitionedCall?Output/StatefulPartitionedCall?
 Hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_41134545hidden_1_41134547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134544?
 Hidden_2/StatefulPartitionedCallStatefulPartitionedCall)Hidden_1/StatefulPartitionedCall:output:0hidden_2_41134562hidden_2_41134564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561?
Output/StatefulPartitionedCallStatefulPartitionedCall)Hidden_2/StatefulPartitionedCall:output:0output_41134579output_41134581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_Output_layer_call_and_return_conditional_losses_41134578v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Hidden_1/StatefulPartitionedCall!^Hidden_2/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 Hidden_1/StatefulPartitionedCall Hidden_1/StatefulPartitionedCall2D
 Hidden_2/StatefulPartitionedCall Hidden_2/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_41134757	
input
unknown:
	unknown_0:
	unknown_1:|
	unknown_2:|
	unknown_3:|
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_41134526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????

_user_specified_nameInput
?
?
+__inference_Hidden_2_layer_call_fn_41134870

inputs
unknown:|
	unknown_0:|
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134881

inputs0
matmul_readvariableop_resource:|-
biasadd_readvariableop_resource:|
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????|W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_generator_layer_call_fn_41134700	
input
unknown:
	unknown_0:
	unknown_1:|
	unknown_2:|
	unknown_3:|
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_generator_layer_call_and_return_conditional_losses_41134668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????

_user_specified_nameInput"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
Input.
serving_default_Input:0?????????:
Output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?D
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
/__call__
*0&call_and_return_all_conditional_losses
1_default_save_signature"
_tf_keras_sequential
?

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
J
	0

1
2
3
4
5"
trackable_list_wrapper
J
	0

1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
/__call__
1_default_save_signature
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
,
8serving_default"
signature_map
!:2Hidden_1/kernel
:2Hidden_1/bias
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
!:|2Hidden_2/kernel
:|2Hidden_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
:|2Output/kernel
:2Output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
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
?2?
,__inference_generator_layer_call_fn_41134600
,__inference_generator_layer_call_fn_41134774
,__inference_generator_layer_call_fn_41134791
,__inference_generator_layer_call_fn_41134700?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_generator_layer_call_and_return_conditional_losses_41134816
G__inference_generator_layer_call_and_return_conditional_losses_41134841
G__inference_generator_layer_call_and_return_conditional_losses_41134719
G__inference_generator_layer_call_and_return_conditional_losses_41134738?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_41134526Input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_Hidden_1_layer_call_fn_41134850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134861?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_Hidden_2_layer_call_fn_41134870?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_Output_layer_call_fn_41134890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_Output_layer_call_and_return_conditional_losses_41134901?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_41134757Input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
F__inference_Hidden_1_layer_call_and_return_conditional_losses_41134861\	
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_Hidden_1_layer_call_fn_41134850O	
/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_Hidden_2_layer_call_and_return_conditional_losses_41134881\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????|
? ~
+__inference_Hidden_2_layer_call_fn_41134870O/?,
%?"
 ?
inputs?????????
? "??????????|?
D__inference_Output_layer_call_and_return_conditional_losses_41134901\/?,
%?"
 ?
inputs?????????|
? "%?"
?
0?????????
? |
)__inference_Output_layer_call_fn_41134890O/?,
%?"
 ?
inputs?????????|
? "???????????
#__inference__wrapped_model_41134526i	
.?+
$?!
?
Input?????????
? "/?,
*
Output ?
Output??????????
G__inference_generator_layer_call_and_return_conditional_losses_41134719g	
6?3
,?)
?
Input?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_generator_layer_call_and_return_conditional_losses_41134738g	
6?3
,?)
?
Input?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_generator_layer_call_and_return_conditional_losses_41134816h	
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_generator_layer_call_and_return_conditional_losses_41134841h	
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
,__inference_generator_layer_call_fn_41134600Z	
6?3
,?)
?
Input?????????
p 

 
? "???????????
,__inference_generator_layer_call_fn_41134700Z	
6?3
,?)
?
Input?????????
p

 
? "???????????
,__inference_generator_layer_call_fn_41134774[	
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
,__inference_generator_layer_call_fn_41134791[	
7?4
-?*
 ?
inputs?????????
p

 
? "???????????
&__inference_signature_wrapper_41134757r	
7?4
? 
-?*
(
Input?
Input?????????"/?,
*
Output ?
Output?????????