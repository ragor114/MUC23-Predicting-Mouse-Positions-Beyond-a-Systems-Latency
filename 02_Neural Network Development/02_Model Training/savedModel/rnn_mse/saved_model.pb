дя
ыК
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.8.22v2.8.2-0-g2ea19cbb5758▀╬
{
dense_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	┐* 
shared_namedense_91/kernel
t
#dense_91/kernel/Read/ReadVariableOpReadVariableOpdense_91/kernel*
_output_shapes
:	┐*
dtype0
r
dense_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_91/bias
k
!dense_91/bias/Read/ReadVariableOpReadVariableOpdense_91/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
Д
%simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		┐*6
shared_name'%simple_rnn_1/simple_rnn_cell_1/kernel
а
9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel*
_output_shapes
:		┐*
dtype0
╝
/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
┐┐*@
shared_name1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
х
Csimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel* 
_output_shapes
:
┐┐*
dtype0
Ъ
#simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:┐*4
shared_name%#simple_rnn_1/simple_rnn_cell_1/bias
ў
7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes	
:┐*
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

NoOpNoOp
ё*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┐)
valueх)B▓) BФ)
Д
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ф
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Ц
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses* 
д

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
:
$iter
	%decay
&learning_rate
'momentum*
'
(0
)1
*2
3
4*
'
(0
)1
*2
3
4*
* 
░
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

0serving_default* 
М

(kernel
)recurrent_kernel
*bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses*
* 

(0
)1
*2*

(0
)1
*2*
* 
Ъ

8states
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_91/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_91/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
'
H0
I1
J2
K3
L4*
* 
* 
* 

(0
)1
*2*

(0
)1
*2*
* 
Њ
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
8
	Rtotal
	Scount
T	variables
U	keras_api*
H
	Vtotal
	Wcount
X
_fn_kwargs
Y	variables
Z	keras_api*
8
	[total
	\count
]	variables
^	keras_api*
H
	_total
	`count
a
_fn_kwargs
b	variables
c	keras_api*
H
	dtotal
	ecount
f
_fn_kwargs
g	variables
h	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

T	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

V0
W1*

Y	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

]	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

_0
`1*

b	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

d0
e1*

g	variables*
ѓ
serving_default_input_7Placeholder*+
_output_shapes
:         	*
dtype0* 
shape:         	
П
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7%simple_rnn_1/simple_rnn_cell_1/kernel#simple_rnn_1/simple_rnn_cell_1/bias/simple_rnn_1/simple_rnn_cell_1/recurrent_kerneldense_91/kerneldense_91/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_9230245
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
О
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_91/kernel/Read/ReadVariableOp!dense_91/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpCsimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOp7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOpConst* 
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_9230909
о
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_91/kerneldense_91/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum%simple_rnn_1/simple_rnn_cell_1/kernel/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel#simple_rnn_1/simple_rnn_cell_1/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_9230976╗ы
А
Й
.__inference_simple_rnn_1_layer_call_fn_9230267
inputs_0
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229530p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs/0
▀,
Л
while_body_9229587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
┼=
└
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230721

inputsC
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9230655*
condR
while_cond_9230654*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
р
»
while_cond_9229586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9229586___redundant_placeholder05
1while_while_cond_9229586___redundant_placeholder15
1while_while_cond_9229586___redundant_placeholder25
1while_while_cond_9229586___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
┴

д
simple_rnn_1_while_cond_92301476
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230147___redundant_placeholder0O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230147___redundant_placeholder1O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230147___redundant_placeholder2O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230147___redundant_placeholder3
simple_rnn_1_while_identity
ќ
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
»
Њ
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229895

inputs'
simple_rnn_1_9229881:		┐#
simple_rnn_1_9229883:	┐(
simple_rnn_1_9229885:
┐┐#
dense_91_9229889:	┐
dense_91_9229891:
identityѕб dense_91/StatefulPartitionedCallб!dropout_6/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallЪ
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1_9229881simple_rnn_1_9229883simple_rnn_1_9229885*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229852Ш
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229728џ
 dense_91/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_91_9229889dense_91_9229891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678x
IdentityIdentity)dense_91/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp!^dense_91/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
»
в
%__inference_signature_wrapper_9230245
input_7
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
	unknown_2:	┐
	unknown_3:
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_9229247o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
▀,
Л
while_body_9230439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
▓
ћ
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229957
input_7'
simple_rnn_1_9229943:		┐#
simple_rnn_1_9229945:	┐(
simple_rnn_1_9229947:
┐┐#
dense_91_9229951:	┐
dense_91_9229953:
identityѕб dense_91/StatefulPartitionedCallб!dropout_6/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallа
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinput_7simple_rnn_1_9229943simple_rnn_1_9229945simple_rnn_1_9229947*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229852Ш
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229728џ
 dense_91/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_91_9229951dense_91_9229953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678x
IdentityIdentity)dense_91/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp!^dense_91/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
з8
О
simple_rnn_1_while_body_92300336
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpб<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpЋ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   у
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0┴
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0в
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐┐
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0Т
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐к
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0м
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐н
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐ў
,simple_rnn_1/while/simple_rnn_cell_1/SigmoidSigmoid,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐ђ
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder0simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмZ
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ђ
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ъ
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ђ
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: └
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: :жУме
simple_rnn_1/while/Identity_4Identity0simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:         ┐Њ
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"ј
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"љ
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"ї
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"▄
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
Щ
d
+__inference_dropout_6_layer_call_fn_9230731

inputs
identityѕбStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229728p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
╚

▀
3__inference_simple_rnn_cell_1_layer_call_fn_9230781

inputs
states_0
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identity

identity_1ѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229295p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ┐
"
_user_specified_name
states/0
а
Ю
,sequential_6_simple_rnn_1_while_cond_9229173P
Lsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_loop_counterV
Rsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_maximum_iterations/
+sequential_6_simple_rnn_1_while_placeholder1
-sequential_6_simple_rnn_1_while_placeholder_11
-sequential_6_simple_rnn_1_while_placeholder_2R
Nsequential_6_simple_rnn_1_while_less_sequential_6_simple_rnn_1_strided_slice_1i
esequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_cond_9229173___redundant_placeholder0i
esequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_cond_9229173___redundant_placeholder1i
esequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_cond_9229173___redundant_placeholder2i
esequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_cond_9229173___redundant_placeholder3,
(sequential_6_simple_rnn_1_while_identity
╩
$sequential_6/simple_rnn_1/while/LessLess+sequential_6_simple_rnn_1_while_placeholderNsequential_6_simple_rnn_1_while_less_sequential_6_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
(sequential_6/simple_rnn_1/while/IdentityIdentity(sequential_6/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_6_simple_rnn_1_while_identity1sequential_6/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
ф!
Я
while_body_9229467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!while_simple_rnn_cell_1_9229489_0:		┐0
!while_simple_rnn_cell_1_9229491_0:	┐5
!while_simple_rnn_cell_1_9229493_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
while_simple_rnn_cell_1_9229489:		┐.
while_simple_rnn_cell_1_9229491:	┐3
while_simple_rnn_cell_1_9229493:
┐┐ѕб/while/simple_rnn_cell_1/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ф
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_1_9229489_0!while_simple_rnn_cell_1_9229491_0!while_simple_rnn_cell_1_9229493_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229415р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмќ
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ┐~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_1_9229489!while_simple_rnn_cell_1_9229489_0"D
while_simple_rnn_cell_1_9229491!while_simple_rnn_cell_1_9229491_0"D
while_simple_rnn_cell_1_9229493!while_simple_rnn_cell_1_9229493_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
╩
ў
*__inference_dense_91_layer_call_fn_9230757

inputs
unknown:	┐
	unknown_0:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┐: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
▀
З
.__inference_sequential_6_layer_call_fn_9229923
input_7
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
	unknown_2:	┐
	unknown_3:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
┼=
└
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230613

inputsC
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9230547*
condR
while_cond_9230546*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
р
»
while_cond_9230330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9230330___redundant_placeholder05
1while_while_cond_9230330___redundant_placeholder15
1while_while_cond_9230330___redundant_placeholder25
1while_while_cond_9230330___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
р
»
while_cond_9229466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9229466___redundant_placeholder05
1while_while_cond_9229466___redundant_placeholder15
1while_while_cond_9229466___redundant_placeholder25
1while_while_cond_9229466___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
р
»
while_cond_9230654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9230654___redundant_placeholder05
1while_while_cond_9230654___redundant_placeholder15
1while_while_cond_9230654___redundant_placeholder25
1while_while_cond_9230654___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
Џ
ь
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229415

inputs

states1
matmul_readvariableop_resource:		┐.
biasadd_readvariableop_resource:	┐4
 matmul_1_readvariableop_resource:
┐┐
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ┐N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ┐[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐]

Identity_1IdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ┐
 
_user_specified_namestates
Д4
Б
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229530

inputs,
simple_rnn_cell_1_9229455:		┐(
simple_rnn_cell_1_9229457:	┐-
simple_rnn_cell_1_9229459:
┐┐
identityѕб)simple_rnn_cell_1/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask­
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_9229455simple_rnn_cell_1_9229457simple_rnn_cell_1_9229459*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229415n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ћ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_9229455simple_rnn_cell_1_9229457simple_rnn_cell_1_9229459*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9229467*
condR
while_cond_9229466*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
П
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230736

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ┐\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ┐"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
р
»
while_cond_9229307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9229307___redundant_placeholder05
1while_while_cond_9229307___redundant_placeholder15
1while_while_cond_9229307___redundant_placeholder25
1while_while_cond_9229307___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
Д4
Б
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229371

inputs,
simple_rnn_cell_1_9229296:		┐(
simple_rnn_cell_1_9229298:	┐-
simple_rnn_cell_1_9229300:
┐┐
identityѕб)simple_rnn_cell_1/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask­
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_9229296simple_rnn_cell_1_9229298simple_rnn_cell_1_9229300*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229295n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ћ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_9229296simple_rnn_cell_1_9229298simple_rnn_cell_1_9229300*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9229308*
condR
while_cond_9229307*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  	
 
_user_specified_nameinputs
┼=
└
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229653

inputsC
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9229587*
condR
while_cond_9229586*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
А
Й
.__inference_simple_rnn_1_layer_call_fn_9230256
inputs_0
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229371p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs/0
╚

▀
3__inference_simple_rnn_cell_1_layer_call_fn_9230795

inputs
states_0
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identity

identity_1ѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229415p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ┐
"
_user_specified_name
states/0
Є
№
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229685

inputs'
simple_rnn_1_9229654:		┐#
simple_rnn_1_9229656:	┐(
simple_rnn_1_9229658:
┐┐#
dense_91_9229679:	┐
dense_91_9229681:
identityѕб dense_91/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallЪ
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1_9229654simple_rnn_1_9229656simple_rnn_1_9229658*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229653Т
dropout_6/PartitionedCallPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229666њ
 dense_91/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_91_9229679dense_91_9229681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678x
IdentityIdentity)dense_91/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp!^dense_91/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
М+
с
 __inference__traced_save_9230909
file_prefix.
*savev2_dense_91_kernel_read_readvariableop,
(savev2_dense_91_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableopD
@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopN
Jsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: к
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*№
valueтBРB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ь
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_91_kernel_read_readvariableop(savev2_dense_91_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopJsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableop>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*b
_input_shapesQ
O: :	┐:: : : : :		┐:
┐┐:┐: : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	┐: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:		┐:&"
 
_output_shapes
:
┐┐:!	

_output_shapes	
:┐:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┴

д
simple_rnn_1_while_cond_92300326
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230032___redundant_placeholder0O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230032___redundant_placeholder1O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230032___redundant_placeholder2O
Ksimple_rnn_1_while_simple_rnn_1_while_cond_9230032___redundant_placeholder3
simple_rnn_1_while_identity
ќ
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
з8
О
simple_rnn_1_while_body_92301486
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐U
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐[
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐S
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐Y
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpб<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpЋ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   у
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0┴
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0в
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐┐
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0Т
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐к
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0м
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐н
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐ў
,simple_rnn_1/while/simple_rnn_cell_1/SigmoidSigmoid,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐ђ
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder0simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмZ
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ђ
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ъ
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ђ
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: └
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: :жУме
simple_rnn_1/while/Identity_4Identity0simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0^simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:         ┐Њ
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"ј
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"љ
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"ї
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"▄
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
▀,
Л
while_body_9230331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
р
»
while_cond_9230438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9230438___redundant_placeholder05
1while_while_cond_9230438___redundant_placeholder15
1while_while_cond_9230438___redundant_placeholder25
1while_while_cond_9230438___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
▀,
Л
while_body_9230547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
А
№
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230829

inputs
states_01
matmul_readvariableop_resource:		┐.
biasadd_readvariableop_resource:	┐4
 matmul_1_readvariableop_resource:
┐┐
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ┐N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ┐[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐]

Identity_1IdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ┐
"
_user_specified_name
states/0
Ѕ
╝
.__inference_simple_rnn_1_layer_call_fn_9230289

inputs
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229852p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
ф!
Я
while_body_9229308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!while_simple_rnn_cell_1_9229330_0:		┐0
!while_simple_rnn_cell_1_9229332_0:	┐5
!while_simple_rnn_cell_1_9229334_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
while_simple_rnn_cell_1_9229330:		┐.
while_simple_rnn_cell_1_9229332:	┐3
while_simple_rnn_cell_1_9229334:
┐┐ѕб/while/simple_rnn_cell_1/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Ф
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_1_9229330_0!while_simple_rnn_cell_1_9229332_0!while_simple_rnn_cell_1_9229334_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:         ┐:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *W
fRRP
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229295р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмќ
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ┐~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_1_9229330!while_simple_rnn_cell_1_9229330_0"D
while_simple_rnn_cell_1_9229332!while_simple_rnn_cell_1_9229332_0"D
while_simple_rnn_cell_1_9229334!while_simple_rnn_cell_1_9229334_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
Ч	
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229728

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЪІ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ┐C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ┐*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 **Б=Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ┐p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ┐j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ┐Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ┐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
ШY
м
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230228

inputsP
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:		┐M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐:
'dense_91_matmul_readvariableop_resource:	┐6
(dense_91_biasadd_readvariableop_resource:
identityѕбdense_91/BiasAdd/ReadVariableOpбdense_91/MatMul/ReadVariableOpб5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpб4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpб6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpбsimple_rnn_1/whileH
simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐џ
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ћ
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:         ┐p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Є
simple_rnn_1/transpose	Transposeinputs$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:         	^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         █
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЊ
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Є
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмl
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask│
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0К
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐▒
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0н
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐И
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0┴
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐┬
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐ї
&simple_rnn_1/simple_rnn_cell_1/SigmoidSigmoid&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ▀
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмS
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_1_while_body_9230148*+
cond#R!
simple_rnn_1_while_cond_9230147*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations ј
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   Ж
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЪІ?ў
dropout_6/dropout/MulMul%simple_rnn_1/strided_slice_3:output:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:         ┐l
dropout_6/dropout/ShapeShape%simple_rnn_1/strided_slice_3:output:0*
T0*
_output_shapes
:А
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:         ┐*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 **Б=┼
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ┐ё
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ┐ѕ
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:         ┐Є
dense_91/MatMul/ReadVariableOpReadVariableOp'dense_91_matmul_readvariableop_resource*
_output_shapes
:	┐*
dtype0љ
dense_91/MatMulMatMuldropout_6/dropout/Mul_1:z:0&dense_91/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_91/BiasAdd/ReadVariableOpReadVariableOp(dense_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_91/BiasAddBiasAdddense_91/MatMul:product:0'dense_91/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_91/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp ^dense_91/BiasAdd/ReadVariableOp^dense_91/MatMul/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2B
dense_91/BiasAdd/ReadVariableOpdense_91/BiasAdd/ReadVariableOp2@
dense_91/MatMul/ReadVariableOpdense_91/MatMul/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▄
з
.__inference_sequential_6_layer_call_fn_9229976

inputs
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
	unknown_2:	┐
	unknown_3:
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229685o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
і
­
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229940
input_7'
simple_rnn_1_9229926:		┐#
simple_rnn_1_9229928:	┐(
simple_rnn_1_9229930:
┐┐#
dense_91_9229934:	┐
dense_91_9229936:
identityѕб dense_91/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallа
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinput_7simple_rnn_1_9229926simple_rnn_1_9229928simple_rnn_1_9229930*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229653Т
dropout_6/PartitionedCallPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229666њ
 dense_91/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_91_9229934dense_91_9229936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678x
IdentityIdentity)dense_91/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp!^dense_91/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2D
 dense_91/StatefulPartitionedCall dense_91/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
цR
м
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230106

inputsP
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:		┐M
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐S
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐:
'dense_91_matmul_readvariableop_resource:	┐6
(dense_91_biasadd_readvariableop_resource:
identityѕбdense_91/BiasAdd/ReadVariableOpбdense_91/MatMul/ReadVariableOpб5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpб4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpб6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpбsimple_rnn_1/whileH
simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐џ
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ћ
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:         ┐p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Є
simple_rnn_1/transpose	Transposeinputs$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:         	^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         █
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЊ
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Є
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмl
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask│
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0К
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐▒
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0н
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐И
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0┴
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐┬
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐ї
&simple_rnn_1/simple_rnn_cell_1/SigmoidSigmoid&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ▀
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмS
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_1_while_body_9230033*+
cond#R!
simple_rnn_1_while_cond_9230032*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations ј
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   Ж
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         n
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐x
dropout_6/IdentityIdentity%simple_rnn_1/strided_slice_3:output:0*
T0*(
_output_shapes
:         ┐Є
dense_91/MatMul/ReadVariableOpReadVariableOp'dense_91_matmul_readvariableop_resource*
_output_shapes
:	┐*
dtype0љ
dense_91/MatMulMatMuldropout_6/Identity:output:0&dense_91/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_91/BiasAdd/ReadVariableOpReadVariableOp(dense_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_91/BiasAddBiasAdddense_91/MatMul:product:0'dense_91/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_91/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp ^dense_91/BiasAdd/ReadVariableOp^dense_91/MatMul/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2B
dense_91/BiasAdd/ReadVariableOpdense_91/BiasAdd/ReadVariableOp2@
dense_91/MatMul/ReadVariableOpdense_91/MatMul/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
┼=
└
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229852

inputsC
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9229786*
condR
while_cond_9229785*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
▀
З
.__inference_sequential_6_layer_call_fn_9229698
input_7
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
	unknown_2:	┐
	unknown_3:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229685o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
▄
з
.__inference_sequential_6_layer_call_fn_9229991

inputs
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
	unknown_2:	┐
	unknown_3:
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
П
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229666

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ┐\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ┐"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
╠	
э
E__inference_dense_91_layer_call_and_return_conditional_losses_9230767

inputs1
matmul_readvariableop_resource:	┐-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	┐*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┐: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
е
G
+__inference_dropout_6_layer_call_fn_9230726

inputs
identityх
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_9229666a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ┐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
п`
╗
"__inference__wrapped_model_9229247
input_7]
Jsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:		┐Z
Ksequential_6_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐`
Lsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐G
4sequential_6_dense_91_matmul_readvariableop_resource:	┐C
5sequential_6_dense_91_biasadd_readvariableop_resource:
identityѕб,sequential_6/dense_91/BiasAdd/ReadVariableOpб+sequential_6/dense_91/MatMul/ReadVariableOpбBsequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpбAsequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpбCsequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpбsequential_6/simple_rnn_1/whileV
sequential_6/simple_rnn_1/ShapeShapeinput_7*
T0*
_output_shapes
:w
-sequential_6/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_6/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_6/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_6/simple_rnn_1/strided_sliceStridedSlice(sequential_6/simple_rnn_1/Shape:output:06sequential_6/simple_rnn_1/strided_slice/stack:output:08sequential_6/simple_rnn_1/strided_slice/stack_1:output:08sequential_6/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(sequential_6/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐┴
&sequential_6/simple_rnn_1/zeros/packedPack0sequential_6/simple_rnn_1/strided_slice:output:01sequential_6/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_6/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╗
sequential_6/simple_rnn_1/zerosFill/sequential_6/simple_rnn_1/zeros/packed:output:0.sequential_6/simple_rnn_1/zeros/Const:output:0*
T0*(
_output_shapes
:         ┐}
(sequential_6/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          б
#sequential_6/simple_rnn_1/transpose	Transposeinput_71sequential_6/simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:         	x
!sequential_6/simple_rnn_1/Shape_1Shape'sequential_6/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:y
/sequential_6/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_6/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
)sequential_6/simple_rnn_1/strided_slice_1StridedSlice*sequential_6/simple_rnn_1/Shape_1:output:08sequential_6/simple_rnn_1/strided_slice_1/stack:output:0:sequential_6/simple_rnn_1/strided_slice_1/stack_1:output:0:sequential_6/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskђ
5sequential_6/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ѓ
'sequential_6/simple_rnn_1/TensorArrayV2TensorListReserve>sequential_6/simple_rnn_1/TensorArrayV2/element_shape:output:02sequential_6/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУма
Osequential_6/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   «
Asequential_6/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_6/simple_rnn_1/transpose:y:0Xsequential_6/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмy
/sequential_6/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_6/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
)sequential_6/simple_rnn_1/strided_slice_2StridedSlice'sequential_6/simple_rnn_1/transpose:y:08sequential_6/simple_rnn_1/strided_slice_2/stack:output:0:sequential_6/simple_rnn_1/strided_slice_2/stack_1:output:0:sequential_6/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_mask═
Asequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpJsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0Ь
2sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul2sequential_6/simple_rnn_1/strided_slice_2:output:0Isequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐╦
Bsequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpKsequential_6_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0ч
3sequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd<sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Jsequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐м
Csequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpLsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0У
4sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul(sequential_6/simple_rnn_1/zeros:output:0Ksequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ж
/sequential_6/simple_rnn_1/simple_rnn_cell_1/addAddV2<sequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0>sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐д
3sequential_6/simple_rnn_1/simple_rnn_cell_1/SigmoidSigmoid3sequential_6/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐ѕ
7sequential_6/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   є
)sequential_6/simple_rnn_1/TensorArrayV2_1TensorListReserve@sequential_6/simple_rnn_1/TensorArrayV2_1/element_shape:output:02sequential_6/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм`
sequential_6/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_6/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         n
,sequential_6/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : «
sequential_6/simple_rnn_1/whileWhile5sequential_6/simple_rnn_1/while/loop_counter:output:0;sequential_6/simple_rnn_1/while/maximum_iterations:output:0'sequential_6/simple_rnn_1/time:output:02sequential_6/simple_rnn_1/TensorArrayV2_1:handle:0(sequential_6/simple_rnn_1/zeros:output:02sequential_6/simple_rnn_1/strided_slice_1:output:0Qsequential_6/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceKsequential_6_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceLsequential_6_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *8
body0R.
,sequential_6_simple_rnn_1_while_body_9229174*8
cond0R.
,sequential_6_simple_rnn_1_while_cond_9229173*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Џ
Jsequential_6/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   Љ
<sequential_6/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_6/simple_rnn_1/while:output:3Ssequential_6/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ┐*
element_dtype0ѓ
/sequential_6/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         {
1sequential_6/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
)sequential_6/simple_rnn_1/strided_slice_3StridedSliceEsequential_6/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:08sequential_6/simple_rnn_1/strided_slice_3/stack:output:0:sequential_6/simple_rnn_1/strided_slice_3/stack_1:output:0:sequential_6/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_mask
*sequential_6/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          т
%sequential_6/simple_rnn_1/transpose_1	TransposeEsequential_6/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ┐њ
sequential_6/dropout_6/IdentityIdentity2sequential_6/simple_rnn_1/strided_slice_3:output:0*
T0*(
_output_shapes
:         ┐А
+sequential_6/dense_91/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_91_matmul_readvariableop_resource*
_output_shapes
:	┐*
dtype0и
sequential_6/dense_91/MatMulMatMul(sequential_6/dropout_6/Identity:output:03sequential_6/dense_91/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_6/dense_91/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_6/dense_91/BiasAddBiasAdd&sequential_6/dense_91/MatMul:product:04sequential_6/dense_91/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_6/dense_91/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ћ
NoOpNoOp-^sequential_6/dense_91/BiasAdd/ReadVariableOp,^sequential_6/dense_91/MatMul/ReadVariableOpC^sequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpB^sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpD^sequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp ^sequential_6/simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         	: : : : : 2\
,sequential_6/dense_91/BiasAdd/ReadVariableOp,sequential_6/dense_91/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_91/MatMul/ReadVariableOp+sequential_6/dense_91/MatMul/ReadVariableOp2ѕ
Bsequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpBsequential_6/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2є
Asequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpAsequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2і
Csequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpCsequential_6/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2B
sequential_6/simple_rnn_1/whilesequential_6/simple_rnn_1/while:T P
+
_output_shapes
:         	
!
_user_specified_name	input_7
А
№
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230812

inputs
states_01
matmul_readvariableop_resource:		┐.
biasadd_readvariableop_resource:	┐4
 matmul_1_readvariableop_resource:
┐┐
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ┐N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ┐[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐]

Identity_1IdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ┐
"
_user_specified_name
states/0
ЊK
▄

#__inference__traced_restore_9230976
file_prefix3
 assignvariableop_dense_91_kernel:	┐.
 assignvariableop_1_dense_91_bias:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: K
8assignvariableop_6_simple_rnn_1_simple_rnn_cell_1_kernel:		┐V
Bassignvariableop_7_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel:
┐┐E
6assignvariableop_8_simple_rnn_1_simple_rnn_cell_1_bias:	┐"
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: %
assignvariableop_13_total_2: %
assignvariableop_14_count_2: %
assignvariableop_15_total_3: %
assignvariableop_16_count_3: %
assignvariableop_17_total_4: %
assignvariableop_18_count_4: 
identity_20ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╔
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*№
valueтBРB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHў
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ѓ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_91_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_91_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:і
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_1_simple_rnn_cell_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_7AssignVariableOpBassignvariableop_7_simple_rnn_1_simple_rnn_cell_1_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_8AssignVariableOp6assignvariableop_8_simple_rnn_1_simple_rnn_cell_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_3Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_3Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_4Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_4Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ы
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: я
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
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
Щ=
┬
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230397
inputs_0C
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9230331*
condR
while_cond_9230330*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs/0
▀,
Л
while_body_9230655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
▀,
Л
while_body_9229786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐H
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐N
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐F
7while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐L
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕб.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpб-while/simple_rnn_cell_1/MatMul/ReadVariableOpб/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0Д
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0─
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ц
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0┐
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐г
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0Ф
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Г
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐~
while/simple_rnn_cell_1/SigmoidSigmoidwhile/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐╠
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder#while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЂ
while/Identity_4Identity#while/simple_rnn_cell_1/Sigmoid:y:0^while/NoOp*
T0*(
_output_shapes
:         ┐▀

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
Џ
ь
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9229295

inputs

states1
matmul_readvariableop_resource:		┐.
biasadd_readvariableop_resource:	┐4
 matmul_1_readvariableop_resource:
┐┐
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:         ┐N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ┐[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐]

Identity_1IdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:         ┐Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         	:         ┐: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         	
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ┐
 
_user_specified_namestates
╠	
э
E__inference_dense_91_layer_call_and_return_conditional_losses_9229678

inputs1
matmul_readvariableop_resource:	┐-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	┐*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┐: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs
Ѕ
╝
.__inference_simple_rnn_1_layer_call_fn_9230278

inputs
unknown:		┐
	unknown_0:	┐
	unknown_1:
┐┐
identityѕбStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ┐*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9229653p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ┐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         	
 
_user_specified_nameinputs
р
»
while_cond_9229785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9229785___redundant_placeholder05
1while_while_cond_9229785___redundant_placeholder15
1while_while_cond_9229785___redundant_placeholder25
1while_while_cond_9229785___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
ЅE
р
,sequential_6_simple_rnn_1_while_body_9229174P
Lsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_loop_counterV
Rsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_maximum_iterations/
+sequential_6_simple_rnn_1_while_placeholder1
-sequential_6_simple_rnn_1_while_placeholder_11
-sequential_6_simple_rnn_1_while_placeholder_2O
Ksequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_strided_slice_1_0ї
Єsequential_6_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0e
Rsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:		┐b
Ssequential_6_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0:	┐h
Tsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:
┐┐,
(sequential_6_simple_rnn_1_while_identity.
*sequential_6_simple_rnn_1_while_identity_1.
*sequential_6_simple_rnn_1_while_identity_2.
*sequential_6_simple_rnn_1_while_identity_3.
*sequential_6_simple_rnn_1_while_identity_4M
Isequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_strided_slice_1і
Ёsequential_6_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorc
Psequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:		┐`
Qsequential_6_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource:	┐f
Rsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐ѕбHsequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpбGsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpбIsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpб
Qsequential_6/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Е
Csequential_6/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЄsequential_6_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0+sequential_6_simple_rnn_1_while_placeholderZsequential_6/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         	*
element_dtype0█
Gsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpRsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:		┐*
dtype0њ
8sequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulJsequential_6/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐┘
Hsequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpSsequential_6_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:┐*
dtype0Ї
9sequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAddBsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Psequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Я
Isequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpTsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
┐┐*
dtype0щ
:sequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul-sequential_6_simple_rnn_1_while_placeholder_2Qsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ч
5sequential_6/simple_rnn_1/while/simple_rnn_cell_1/addAddV2Bsequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Dsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐▓
9sequential_6/simple_rnn_1/while/simple_rnn_cell_1/SigmoidSigmoid9sequential_6/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐┤
Dsequential_6/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_6_simple_rnn_1_while_placeholder_1+sequential_6_simple_rnn_1_while_placeholder=sequential_6/simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0*
_output_shapes
: *
element_dtype0:жУмg
%sequential_6/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ф
#sequential_6/simple_rnn_1/while/addAddV2+sequential_6_simple_rnn_1_while_placeholder.sequential_6/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_6/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¤
%sequential_6/simple_rnn_1/while/add_1AddV2Lsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_loop_counter0sequential_6/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Д
(sequential_6/simple_rnn_1/while/IdentityIdentity)sequential_6/simple_rnn_1/while/add_1:z:0%^sequential_6/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: м
*sequential_6/simple_rnn_1/while/Identity_1IdentityRsequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_while_maximum_iterations%^sequential_6/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Д
*sequential_6/simple_rnn_1/while/Identity_2Identity'sequential_6/simple_rnn_1/while/add:z:0%^sequential_6/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: у
*sequential_6/simple_rnn_1/while/Identity_3IdentityTsequential_6/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_6/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: :жУм¤
*sequential_6/simple_rnn_1/while/Identity_4Identity=sequential_6/simple_rnn_1/while/simple_rnn_cell_1/Sigmoid:y:0%^sequential_6/simple_rnn_1/while/NoOp*
T0*(
_output_shapes
:         ┐К
$sequential_6/simple_rnn_1/while/NoOpNoOpI^sequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpH^sequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpJ^sequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_6_simple_rnn_1_while_identity1sequential_6/simple_rnn_1/while/Identity:output:0"a
*sequential_6_simple_rnn_1_while_identity_13sequential_6/simple_rnn_1/while/Identity_1:output:0"a
*sequential_6_simple_rnn_1_while_identity_23sequential_6/simple_rnn_1/while/Identity_2:output:0"a
*sequential_6_simple_rnn_1_while_identity_33sequential_6/simple_rnn_1/while/Identity_3:output:0"a
*sequential_6_simple_rnn_1_while_identity_43sequential_6/simple_rnn_1/while/Identity_4:output:0"ў
Isequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_strided_slice_1Ksequential_6_simple_rnn_1_while_sequential_6_simple_rnn_1_strided_slice_1_0"е
Qsequential_6_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceSsequential_6_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"ф
Rsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceTsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"д
Psequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceRsequential_6_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"њ
Ёsequential_6_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЄsequential_6_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :         ┐: : : : : 2ћ
Hsequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpHsequential_6/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2њ
Gsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpGsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2ќ
Isequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpIsequential_6/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
: 
Щ=
┬
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230505
inputs_0C
0simple_rnn_cell_1_matmul_readvariableop_resource:		┐@
1simple_rnn_cell_1_biasadd_readvariableop_resource:	┐F
2simple_rnn_cell_1_matmul_1_readvariableop_resource:
┐┐
identityѕб(simple_rnn_cell_1/BiasAdd/ReadVariableOpб'simple_rnn_cell_1/MatMul/ReadVariableOpб)simple_rnn_cell_1/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :┐s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ┐c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  	D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    	   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         	*
shrink_axis_maskЎ
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes
:		┐*
dtype0а
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Ќ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:┐*
dtype0Г
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐ъ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
┐┐*
dtype0џ
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ┐Џ
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ┐r
simple_rnn_cell_1/SigmoidSigmoidsimple_rnn_cell_1/add:z:0*
T0*(
_output_shapes
:         ┐n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :         ┐: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9230439*
condR
while_cond_9230438*9
output_shapes(
&: : : : :         ┐: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ┐   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ┐*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ┐*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ┐h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         ┐¤
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  	: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  	
"
_user_specified_name
inputs/0
р
»
while_cond_9230546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_9230546___redundant_placeholder05
1while_while_cond_9230546___redundant_placeholder15
1while_while_cond_9230546___redundant_placeholder25
1while_while_cond_9230546___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :         ┐: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ┐:

_output_shapes
: :

_output_shapes
:
Ч	
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230748

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЪІ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ┐C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ┐*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 **Б=Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ┐p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ┐j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ┐Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ┐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ┐:P L
(
_output_shapes
:         ┐
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultЏ
?
input_74
serving_default_input_7:0         	<
dense_910
StatefulPartitionedCall:0         tensorflow/serving/predict:вu
┴
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
├
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
I
$iter
	%decay
&learning_rate
'momentum"
	optimizer
C
(0
)1
*2
3
4"
trackable_list_wrapper
C
(0
)1
*2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
є2Ѓ
.__inference_sequential_6_layer_call_fn_9229698
.__inference_sequential_6_layer_call_fn_9229976
.__inference_sequential_6_layer_call_fn_9229991
.__inference_sequential_6_layer_call_fn_9229923└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ы2№
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230106
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230228
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229940
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229957└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
═B╩
"__inference__wrapped_model_9229247input_7"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
0serving_default"
signature_map
У

(kernel
)recurrent_kernel
*bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

8states
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Џ2ў
.__inference_simple_rnn_1_layer_call_fn_9230256
.__inference_simple_rnn_1_layer_call_fn_9230267
.__inference_simple_rnn_1_layer_call_fn_9230278
.__inference_simple_rnn_1_layer_call_fn_9230289Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Є2ё
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230397
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230505
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230613
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230721Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ћ2Љ
+__inference_dropout_6_layer_call_fn_9230726
+__inference_dropout_6_layer_call_fn_9230731┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230736
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230748┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
": 	┐2dense_91/kernel
:2dense_91/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_91_layer_call_fn_9230757б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_91_layer_call_and_return_conditional_losses_9230767б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
8:6		┐2%simple_rnn_1/simple_rnn_cell_1/kernel
C:A
┐┐2/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
2:0┐2#simple_rnn_1/simple_rnn_cell_1/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
C
H0
I1
J2
K3
L4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╠B╔
%__inference_signature_wrapper_9230245input_7"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
«2Ф
3__inference_simple_rnn_cell_1_layer_call_fn_9230781
3__inference_simple_rnn_cell_1_layer_call_fn_9230795Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
С2р
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230812
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230829Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Rtotal
	Scount
T	variables
U	keras_api"
_tf_keras_metric
^
	Vtotal
	Wcount
X
_fn_kwargs
Y	variables
Z	keras_api"
_tf_keras_metric
N
	[total
	\count
]	variables
^	keras_api"
_tf_keras_metric
^
	_total
	`count
a
_fn_kwargs
b	variables
c	keras_api"
_tf_keras_metric
^
	dtotal
	ecount
f
_fn_kwargs
g	variables
h	keras_api"
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
:  (2total
:  (2count
.
R0
S1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
V0
W1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
.
[0
\1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
-
b	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
-
g	variables"
_generic_user_objectў
"__inference__wrapped_model_9229247r(*)4б1
*б'
%і"
input_7         	
ф "3ф0
.
dense_91"і
dense_91         д
E__inference_dense_91_layer_call_and_return_conditional_losses_9230767]0б-
&б#
!і
inputs         ┐
ф "%б"
і
0         
џ ~
*__inference_dense_91_layer_call_fn_9230757P0б-
&б#
!і
inputs         ┐
ф "і         е
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230736^4б1
*б'
!і
inputs         ┐
p 
ф "&б#
і
0         ┐
џ е
F__inference_dropout_6_layer_call_and_return_conditional_losses_9230748^4б1
*б'
!і
inputs         ┐
p
ф "&б#
і
0         ┐
џ ђ
+__inference_dropout_6_layer_call_fn_9230726Q4б1
*б'
!і
inputs         ┐
p 
ф "і         ┐ђ
+__inference_dropout_6_layer_call_fn_9230731Q4б1
*б'
!і
inputs         ┐
p
ф "і         ┐╣
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229940l(*)<б9
2б/
%і"
input_7         	
p 

 
ф "%б"
і
0         
џ ╣
I__inference_sequential_6_layer_call_and_return_conditional_losses_9229957l(*)<б9
2б/
%і"
input_7         	
p

 
ф "%б"
і
0         
џ И
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230106k(*);б8
1б.
$і!
inputs         	
p 

 
ф "%б"
і
0         
џ И
I__inference_sequential_6_layer_call_and_return_conditional_losses_9230228k(*);б8
1б.
$і!
inputs         	
p

 
ф "%б"
і
0         
џ Љ
.__inference_sequential_6_layer_call_fn_9229698_(*)<б9
2б/
%і"
input_7         	
p 

 
ф "і         Љ
.__inference_sequential_6_layer_call_fn_9229923_(*)<б9
2б/
%і"
input_7         	
p

 
ф "і         љ
.__inference_sequential_6_layer_call_fn_9229976^(*);б8
1б.
$і!
inputs         	
p 

 
ф "і         љ
.__inference_sequential_6_layer_call_fn_9229991^(*);б8
1б.
$і!
inputs         	
p

 
ф "і         д
%__inference_signature_wrapper_9230245}(*)?б<
б 
5ф2
0
input_7%і"
input_7         	"3ф0
.
dense_91"і
dense_91         ╦
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230397~(*)OбL
EбB
4џ1
/і,
inputs/0                  	

 
p 

 
ф "&б#
і
0         ┐
џ ╦
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230505~(*)OбL
EбB
4џ1
/і,
inputs/0                  	

 
p

 
ф "&б#
і
0         ┐
џ ╗
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230613n(*)?б<
5б2
$і!
inputs         	

 
p 

 
ф "&б#
і
0         ┐
џ ╗
I__inference_simple_rnn_1_layer_call_and_return_conditional_losses_9230721n(*)?б<
5б2
$і!
inputs         	

 
p

 
ф "&б#
і
0         ┐
џ Б
.__inference_simple_rnn_1_layer_call_fn_9230256q(*)OбL
EбB
4џ1
/і,
inputs/0                  	

 
p 

 
ф "і         ┐Б
.__inference_simple_rnn_1_layer_call_fn_9230267q(*)OбL
EбB
4џ1
/і,
inputs/0                  	

 
p

 
ф "і         ┐Њ
.__inference_simple_rnn_1_layer_call_fn_9230278a(*)?б<
5б2
$і!
inputs         	

 
p 

 
ф "і         ┐Њ
.__inference_simple_rnn_1_layer_call_fn_9230289a(*)?б<
5б2
$і!
inputs         	

 
p

 
ф "і         ┐Ї
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230812║(*)]бZ
SбP
 і
inputs         	
(б%
#і 
states/0         ┐
p 
ф "TбQ
JбG
і
0/0         ┐
%џ"
 і
0/1/0         ┐
џ Ї
N__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_9230829║(*)]бZ
SбP
 і
inputs         	
(б%
#і 
states/0         ┐
p
ф "TбQ
JбG
і
0/0         ┐
%џ"
 і
0/1/0         ┐
џ С
3__inference_simple_rnn_cell_1_layer_call_fn_9230781г(*)]бZ
SбP
 і
inputs         	
(б%
#і 
states/0         ┐
p 
ф "FбC
і
0         ┐
#џ 
і
1/0         ┐С
3__inference_simple_rnn_cell_1_layer_call_fn_9230795г(*)]бZ
SбP
 і
inputs         	
(б%
#і 
states/0         ┐
p
ф "FбC
і
0         ┐
#џ 
і
1/0         ┐