ȵ!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
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
2
StopGradient

input"T
output"T"	
Ttype
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ި
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:@*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:@*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
,token_and_pos_embed_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,token_and_pos_embed_1/embedding_2/embeddings
?
@token_and_pos_embed_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp,token_and_pos_embed_1/embedding_2/embeddings* 
_output_shapes
:
??*
dtype0
?
,token_and_pos_embed_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*=
shared_name.,token_and_pos_embed_1/embedding_3/embeddings
?
@token_and_pos_embed_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp,token_and_pos_embed_1/embedding_3/embeddings*
_output_shapes
:	?*
dtype0
?
3encoder_block_1/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53encoder_block_1/multi_head_attention_1/query/kernel
?
Gencoder_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp3encoder_block_1/multi_head_attention_1/query/kernel*"
_output_shapes
:*
dtype0
?
1encoder_block_1/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31encoder_block_1/multi_head_attention_1/query/bias
?
Eencoder_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp1encoder_block_1/multi_head_attention_1/query/bias*
_output_shapes

:*
dtype0
?
1encoder_block_1/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31encoder_block_1/multi_head_attention_1/key/kernel
?
Eencoder_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp1encoder_block_1/multi_head_attention_1/key/kernel*"
_output_shapes
:*
dtype0
?
/encoder_block_1/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/encoder_block_1/multi_head_attention_1/key/bias
?
Cencoder_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp/encoder_block_1/multi_head_attention_1/key/bias*
_output_shapes

:*
dtype0
?
3encoder_block_1/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53encoder_block_1/multi_head_attention_1/value/kernel
?
Gencoder_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp3encoder_block_1/multi_head_attention_1/value/kernel*"
_output_shapes
:*
dtype0
?
1encoder_block_1/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31encoder_block_1/multi_head_attention_1/value/bias
?
Eencoder_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp1encoder_block_1/multi_head_attention_1/value/bias*
_output_shapes

:*
dtype0
?
>encoder_block_1/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*O
shared_name@>encoder_block_1/multi_head_attention_1/attention_output/kernel
?
Rencoder_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp>encoder_block_1/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:*
dtype0
?
<encoder_block_1/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*M
shared_name><encoder_block_1/multi_head_attention_1/attention_output/bias
?
Pencoder_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp<encoder_block_1/multi_head_attention_1/attention_output/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
?
+encoder_block_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+encoder_block_1/layer_normalization_2/gamma
?
?encoder_block_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp+encoder_block_1/layer_normalization_2/gamma*
_output_shapes
:*
dtype0
?
*encoder_block_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*encoder_block_1/layer_normalization_2/beta
?
>encoder_block_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp*encoder_block_1/layer_normalization_2/beta*
_output_shapes
:*
dtype0
?
+encoder_block_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+encoder_block_1/layer_normalization_3/gamma
?
?encoder_block_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp+encoder_block_1/layer_normalization_3/gamma*
_output_shapes
:*
dtype0
?
*encoder_block_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*encoder_block_1/layer_normalization_3/beta
?
>encoder_block_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp*encoder_block_1/layer_normalization_3/beta*
_output_shapes
:*
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
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
?
3Adam/token_and_pos_embed_1/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/token_and_pos_embed_1/embedding_2/embeddings/m
?
GAdam/token_and_pos_embed_1/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp3Adam/token_and_pos_embed_1/embedding_2/embeddings/m* 
_output_shapes
:
??*
dtype0
?
3Adam/token_and_pos_embed_1/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*D
shared_name53Adam/token_and_pos_embed_1/embedding_3/embeddings/m
?
GAdam/token_and_pos_embed_1/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp3Adam/token_and_pos_embed_1/embedding_3/embeddings/m*
_output_shapes
:	?*
dtype0
?
:Adam/encoder_block_1/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/encoder_block_1/multi_head_attention_1/query/kernel/m
?
NAdam/encoder_block_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/encoder_block_1/multi_head_attention_1/query/kernel/m*"
_output_shapes
:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/query/bias/m
?
LAdam/encoder_block_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/query/bias/m*
_output_shapes

:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/key/kernel/m
?
LAdam/encoder_block_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/key/kernel/m*"
_output_shapes
:*
dtype0
?
6Adam/encoder_block_1/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/encoder_block_1/multi_head_attention_1/key/bias/m
?
JAdam/encoder_block_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp6Adam/encoder_block_1/multi_head_attention_1/key/bias/m*
_output_shapes

:*
dtype0
?
:Adam/encoder_block_1/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/encoder_block_1/multi_head_attention_1/value/kernel/m
?
NAdam/encoder_block_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/encoder_block_1/multi_head_attention_1/value/kernel/m*"
_output_shapes
:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/value/bias/m
?
LAdam/encoder_block_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/value/bias/m*
_output_shapes

:*
dtype0
?
EAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/m
?
YAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/m*"
_output_shapes
:*
dtype0
?
CAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/m
?
WAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOpCAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
2Adam/encoder_block_1/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/encoder_block_1/layer_normalization_2/gamma/m
?
FAdam/encoder_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/encoder_block_1/layer_normalization_2/gamma/m*
_output_shapes
:*
dtype0
?
1Adam/encoder_block_1/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/encoder_block_1/layer_normalization_2/beta/m
?
EAdam/encoder_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp1Adam/encoder_block_1/layer_normalization_2/beta/m*
_output_shapes
:*
dtype0
?
2Adam/encoder_block_1/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/encoder_block_1/layer_normalization_3/gamma/m
?
FAdam/encoder_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/encoder_block_1/layer_normalization_3/gamma/m*
_output_shapes
:*
dtype0
?
1Adam/encoder_block_1/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/encoder_block_1/layer_normalization_3/beta/m
?
EAdam/encoder_block_1/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp1Adam/encoder_block_1/layer_normalization_3/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0
?
3Adam/token_and_pos_embed_1/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/token_and_pos_embed_1/embedding_2/embeddings/v
?
GAdam/token_and_pos_embed_1/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp3Adam/token_and_pos_embed_1/embedding_2/embeddings/v* 
_output_shapes
:
??*
dtype0
?
3Adam/token_and_pos_embed_1/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*D
shared_name53Adam/token_and_pos_embed_1/embedding_3/embeddings/v
?
GAdam/token_and_pos_embed_1/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp3Adam/token_and_pos_embed_1/embedding_3/embeddings/v*
_output_shapes
:	?*
dtype0
?
:Adam/encoder_block_1/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/encoder_block_1/multi_head_attention_1/query/kernel/v
?
NAdam/encoder_block_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/encoder_block_1/multi_head_attention_1/query/kernel/v*"
_output_shapes
:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/query/bias/v
?
LAdam/encoder_block_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/query/bias/v*
_output_shapes

:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/key/kernel/v
?
LAdam/encoder_block_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/key/kernel/v*"
_output_shapes
:*
dtype0
?
6Adam/encoder_block_1/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/encoder_block_1/multi_head_attention_1/key/bias/v
?
JAdam/encoder_block_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp6Adam/encoder_block_1/multi_head_attention_1/key/bias/v*
_output_shapes

:*
dtype0
?
:Adam/encoder_block_1/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/encoder_block_1/multi_head_attention_1/value/kernel/v
?
NAdam/encoder_block_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/encoder_block_1/multi_head_attention_1/value/kernel/v*"
_output_shapes
:*
dtype0
?
8Adam/encoder_block_1/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*I
shared_name:8Adam/encoder_block_1/multi_head_attention_1/value/bias/v
?
LAdam/encoder_block_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp8Adam/encoder_block_1/multi_head_attention_1/value/bias/v*
_output_shapes

:*
dtype0
?
EAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/v
?
YAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/v*"
_output_shapes
:*
dtype0
?
CAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/v
?
WAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOpCAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
?
2Adam/encoder_block_1/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/encoder_block_1/layer_normalization_2/gamma/v
?
FAdam/encoder_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/encoder_block_1/layer_normalization_2/gamma/v*
_output_shapes
:*
dtype0
?
1Adam/encoder_block_1/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/encoder_block_1/layer_normalization_2/beta/v
?
EAdam/encoder_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp1Adam/encoder_block_1/layer_normalization_2/beta/v*
_output_shapes
:*
dtype0
?
2Adam/encoder_block_1/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/encoder_block_1/layer_normalization_3/gamma/v
?
FAdam/encoder_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/encoder_block_1/layer_normalization_3/gamma/v*
_output_shapes
:*
dtype0
?
1Adam/encoder_block_1/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/encoder_block_1/layer_normalization_3/beta/v
?
EAdam/encoder_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp1Adam/encoder_block_1/layer_normalization_3/beta/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
n
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?
	attention
ffnn
	norm1
	norm2
	drop1
	drop2
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
'20
(21
122
223
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
'20
(21
122
223
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics

	variables
trainable_variables
regularization_losses
 
b
<
embeddings
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
b
=
embeddings
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api

<0
=1

<0
=1
 
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
?
b_query_dense
c
_key_dense
d_value_dense
e_softmax
f_dropout_layer
g_output_dense
h	variables
itrainable_variables
jregularization_losses
k	keras_api
?
llayer_with_weights-0
llayer-0
mlayer_with_weights-1
mlayer-1
nlayer_with_weights-2
nlayer-2
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
q
saxis
	Lgamma
Mbeta
t	variables
utrainable_variables
vregularization_losses
w	keras_api
q
xaxis
	Ngamma
Obeta
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
S
}	variables
~trainable_variables
regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE,token_and_pos_embed_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE,token_and_pos_embed_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3encoder_block_1/multi_head_attention_1/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1encoder_block_1/multi_head_attention_1/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1encoder_block_1/multi_head_attention_1/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/encoder_block_1/multi_head_attention_1/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3encoder_block_1/multi_head_attention_1/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1encoder_block_1/multi_head_attention_1/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>encoder_block_1/multi_head_attention_1/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE<encoder_block_1/multi_head_attention_1/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_7/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_7/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+encoder_block_1/layer_normalization_2/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*encoder_block_1/layer_normalization_2/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+encoder_block_1/layer_normalization_3/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*encoder_block_1/layer_normalization_3/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
3
4
5
6
7

?0
?1
 
 

<0

<0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses

=0

=0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
 

0
1
 
 
 
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
8
>0
?1
@2
A3
B4
C5
D6
E7
8
>0
?1
@2
A3
B4
C5
D6
E7
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
h	variables
itrainable_variables
jregularization_losses
l

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Hkernel
Ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Jkernel
Kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
F0
G1
H2
I3
J4
K5
*
F0
G1
H2
I3
J4
K5
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
 

L0
M1

L0
M1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
 

N0
O1

N0
O1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
*
0
1
2
3
4
5
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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

>0
?1

>0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

@0
A1

@0
A1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

B0
C1

B0
C1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 

D0
E1

D0
E1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
*
b0
c1
d2
e3
f4
g5
 
 
 

F0
G1

F0
G1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

H0
I1

H0
I1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

J0
K1

J0
K1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

l0
m1
n2
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
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
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
 
 
 
 
 
 
 
 
 
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/token_and_pos_embed_1/embedding_2/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/token_and_pos_embed_1/embedding_3/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/encoder_block_1/multi_head_attention_1/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/encoder_block_1/multi_head_attention_1/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/encoder_block_1/multi_head_attention_1/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_5/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_5/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_6/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_6/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_7/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_7/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/encoder_block_1/layer_normalization_2/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/encoder_block_1/layer_normalization_2/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/encoder_block_1/layer_normalization_3/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/encoder_block_1/layer_normalization_3/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/token_and_pos_embed_1/embedding_2/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/token_and_pos_embed_1/embedding_3/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/encoder_block_1/multi_head_attention_1/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/encoder_block_1/multi_head_attention_1/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/encoder_block_1/multi_head_attention_1/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/encoder_block_1/multi_head_attention_1/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_5/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_5/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_6/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_6/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_7/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_7/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/encoder_block_1/layer_normalization_2/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/encoder_block_1/layer_normalization_2/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE2Adam/encoder_block_1/layer_normalization_3/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/encoder_block_1/layer_normalization_3/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_2Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2,token_and_pos_embed_1/embedding_3/embeddings,token_and_pos_embed_1/embedding_2/embeddings3encoder_block_1/multi_head_attention_1/query/kernel1encoder_block_1/multi_head_attention_1/query/bias1encoder_block_1/multi_head_attention_1/key/kernel/encoder_block_1/multi_head_attention_1/key/bias3encoder_block_1/multi_head_attention_1/value/kernel1encoder_block_1/multi_head_attention_1/value/bias>encoder_block_1/multi_head_attention_1/attention_output/kernel<encoder_block_1/multi_head_attention_1/attention_output/bias+encoder_block_1/layer_normalization_2/gamma*encoder_block_1/layer_normalization_2/betadense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias+encoder_block_1/layer_normalization_3/gamma*encoder_block_1/layer_normalization_3/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_67747
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp@token_and_pos_embed_1/embedding_2/embeddings/Read/ReadVariableOp@token_and_pos_embed_1/embedding_3/embeddings/Read/ReadVariableOpGencoder_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpEencoder_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpEencoder_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpCencoder_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpGencoder_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpEencoder_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpRencoder_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpPencoder_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp?encoder_block_1/layer_normalization_2/gamma/Read/ReadVariableOp>encoder_block_1/layer_normalization_2/beta/Read/ReadVariableOp?encoder_block_1/layer_normalization_3/gamma/Read/ReadVariableOp>encoder_block_1/layer_normalization_3/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOpGAdam/token_and_pos_embed_1/embedding_2/embeddings/m/Read/ReadVariableOpGAdam/token_and_pos_embed_1/embedding_3/embeddings/m/Read/ReadVariableOpNAdam/encoder_block_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpJAdam/encoder_block_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpNAdam/encoder_block_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOpYAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpWAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOpFAdam/encoder_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpEAdam/encoder_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpFAdam/encoder_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpEAdam/encoder_block_1/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpGAdam/token_and_pos_embed_1/embedding_2/embeddings/v/Read/ReadVariableOpGAdam/token_and_pos_embed_1/embedding_3/embeddings/v/Read/ReadVariableOpNAdam/encoder_block_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpJAdam/encoder_block_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpNAdam/encoder_block_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpLAdam/encoder_block_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOpYAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpWAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpFAdam/encoder_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpEAdam/encoder_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpFAdam/encoder_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpEAdam/encoder_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpConst*^
TinW
U2S	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_69403
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate,token_and_pos_embed_1/embedding_2/embeddings,token_and_pos_embed_1/embedding_3/embeddings3encoder_block_1/multi_head_attention_1/query/kernel1encoder_block_1/multi_head_attention_1/query/bias1encoder_block_1/multi_head_attention_1/key/kernel/encoder_block_1/multi_head_attention_1/key/bias3encoder_block_1/multi_head_attention_1/value/kernel1encoder_block_1/multi_head_attention_1/value/bias>encoder_block_1/multi_head_attention_1/attention_output/kernel<encoder_block_1/multi_head_attention_1/attention_output/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias+encoder_block_1/layer_normalization_2/gamma*encoder_block_1/layer_normalization_2/beta+encoder_block_1/layer_normalization_3/gamma*encoder_block_1/layer_normalization_3/betatotalcounttotal_1count_1Adam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/m3Adam/token_and_pos_embed_1/embedding_2/embeddings/m3Adam/token_and_pos_embed_1/embedding_3/embeddings/m:Adam/encoder_block_1/multi_head_attention_1/query/kernel/m8Adam/encoder_block_1/multi_head_attention_1/query/bias/m8Adam/encoder_block_1/multi_head_attention_1/key/kernel/m6Adam/encoder_block_1/multi_head_attention_1/key/bias/m:Adam/encoder_block_1/multi_head_attention_1/value/kernel/m8Adam/encoder_block_1/multi_head_attention_1/value/bias/mEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/mCAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/m2Adam/encoder_block_1/layer_normalization_2/gamma/m1Adam/encoder_block_1/layer_normalization_2/beta/m2Adam/encoder_block_1/layer_normalization_3/gamma/m1Adam/encoder_block_1/layer_normalization_3/beta/mAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v3Adam/token_and_pos_embed_1/embedding_2/embeddings/v3Adam/token_and_pos_embed_1/embedding_3/embeddings/v:Adam/encoder_block_1/multi_head_attention_1/query/kernel/v8Adam/encoder_block_1/multi_head_attention_1/query/bias/v8Adam/encoder_block_1/multi_head_attention_1/key/kernel/v6Adam/encoder_block_1/multi_head_attention_1/key/bias/v:Adam/encoder_block_1/multi_head_attention_1/value/kernel/v8Adam/encoder_block_1/multi_head_attention_1/value/bias/vEAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/vCAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v2Adam/encoder_block_1/layer_normalization_2/gamma/v1Adam/encoder_block_1/layer_normalization_2/beta/v2Adam/encoder_block_1/layer_normalization_3/gamma/v1Adam/encoder_block_1/layer_normalization_3/beta/v*]
TinV
T2R*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_69656??
?
?
'__inference_dense_8_layer_call_fn_68758

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_66937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
,__inference_sequential_1_layer_call_fn_66532
dense_5_input
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_66517t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_5_input
?
?
B__inference_dense_6_layer_call_and_return_conditional_losses_69098

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_67049

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_dense_9_layer_call_fn_68805

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_66961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
,__inference_sequential_1_layer_call_fn_66632
dense_5_input
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_66600t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_5_input
?
?
'__inference_dense_5_layer_call_fn_69027

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_66437t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_66399
input_2S
@model_1_token_and_pos_embed_1_embedding_3_embedding_lookup_66218:	?T
@model_1_token_and_pos_embed_1_embedding_2_embedding_lookup_66224:
??p
Zmodel_1_encoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:b
Pmodel_1_encoder_block_1_multi_head_attention_1_query_add_readvariableop_resource:n
Xmodel_1_encoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:`
Nmodel_1_encoder_block_1_multi_head_attention_1_key_add_readvariableop_resource:p
Zmodel_1_encoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:b
Pmodel_1_encoder_block_1_multi_head_attention_1_value_add_readvariableop_resource:{
emodel_1_encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:i
[model_1_encoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource:a
Smodel_1_encoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:]
Omodel_1_encoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource:`
Nmodel_1_encoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:Z
Lmodel_1_encoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource:`
Nmodel_1_encoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource:@Z
Lmodel_1_encoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource:@`
Nmodel_1_encoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource:@Z
Lmodel_1_encoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource:a
Smodel_1_encoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:]
Omodel_1_encoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource:@
.model_1_dense_8_matmul_readvariableop_resource:@=
/model_1_dense_8_biasadd_readvariableop_resource:@@
.model_1_dense_9_matmul_readvariableop_resource:@=
/model_1_dense_9_biasadd_readvariableop_resource:
identity??&model_1/dense_8/BiasAdd/ReadVariableOp?%model_1/dense_8/MatMul/ReadVariableOp?&model_1/dense_9/BiasAdd/ReadVariableOp?%model_1/dense_9/MatMul/ReadVariableOp?Fmodel_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp?Jmodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp?Fmodel_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp?Jmodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp?Rmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp?\model_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?Emodel_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp?Omodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?Gmodel_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp?Qmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?Gmodel_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp?Qmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?Cmodel_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp?Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp?Cmodel_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp?Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp?Cmodel_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp?Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp?:model_1/token_and_pos_embed_1/embedding_2/embedding_lookup?:model_1/token_and_pos_embed_1/embedding_3/embedding_lookupZ
#model_1/token_and_pos_embed_1/ShapeShapeinput_2*
T0*
_output_shapes
:?
1model_1/token_and_pos_embed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????}
3model_1/token_and_pos_embed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3model_1/token_and_pos_embed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_1/token_and_pos_embed_1/strided_sliceStridedSlice,model_1/token_and_pos_embed_1/Shape:output:0:model_1/token_and_pos_embed_1/strided_slice/stack:output:0<model_1/token_and_pos_embed_1/strided_slice/stack_1:output:0<model_1/token_and_pos_embed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)model_1/token_and_pos_embed_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : k
)model_1/token_and_pos_embed_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
#model_1/token_and_pos_embed_1/rangeRange2model_1/token_and_pos_embed_1/range/start:output:04model_1/token_and_pos_embed_1/strided_slice:output:02model_1/token_and_pos_embed_1/range/delta:output:0*
_output_shapes	
:??
:model_1/token_and_pos_embed_1/embedding_3/embedding_lookupResourceGather@model_1_token_and_pos_embed_1_embedding_3_embedding_lookup_66218,model_1/token_and_pos_embed_1/range:output:0*
Tindices0*S
_classI
GEloc:@model_1/token_and_pos_embed_1/embedding_3/embedding_lookup/66218*
_output_shapes
:	?*
dtype0?
Cmodel_1/token_and_pos_embed_1/embedding_3/embedding_lookup/IdentityIdentityCmodel_1/token_and_pos_embed_1/embedding_3/embedding_lookup:output:0*
T0*S
_classI
GEloc:@model_1/token_and_pos_embed_1/embedding_3/embedding_lookup/66218*
_output_shapes
:	??
Emodel_1/token_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1IdentityLmodel_1/token_and_pos_embed_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	??
.model_1/token_and_pos_embed_1/embedding_2/CastCastinput_2*

DstT0*

SrcT0*(
_output_shapes
:???????????
:model_1/token_and_pos_embed_1/embedding_2/embedding_lookupResourceGather@model_1_token_and_pos_embed_1_embedding_2_embedding_lookup_662242model_1/token_and_pos_embed_1/embedding_2/Cast:y:0*
Tindices0*S
_classI
GEloc:@model_1/token_and_pos_embed_1/embedding_2/embedding_lookup/66224*,
_output_shapes
:??????????*
dtype0?
Cmodel_1/token_and_pos_embed_1/embedding_2/embedding_lookup/IdentityIdentityCmodel_1/token_and_pos_embed_1/embedding_2/embedding_lookup:output:0*
T0*S
_classI
GEloc:@model_1/token_and_pos_embed_1/embedding_2/embedding_lookup/66224*,
_output_shapes
:???????????
Emodel_1/token_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1IdentityLmodel_1/token_and_pos_embed_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:???????????
!model_1/token_and_pos_embed_1/addAddV2Nmodel_1/token_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1:output:0Nmodel_1/token_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:???????????
Qmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_1_encoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Bmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/EinsumEinsum%model_1/token_and_pos_embed_1/add:z:0Ymodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Gmodel_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpPmodel_1_encoder_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
8model_1/encoder_block_1/multi_head_attention_1/query/addAddV2Kmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Omodel_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Omodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_1_encoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
@model_1/encoder_block_1/multi_head_attention_1/key/einsum/EinsumEinsum%model_1/token_and_pos_embed_1/add:z:0Wmodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Emodel_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpNmodel_1_encoder_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
6model_1/encoder_block_1/multi_head_attention_1/key/addAddV2Imodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Mmodel_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Qmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_1_encoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Bmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/EinsumEinsum%model_1/token_and_pos_embed_1/add:z:0Ymodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Gmodel_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpPmodel_1_encoder_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
8model_1/encoder_block_1/multi_head_attention_1/value/addAddV2Kmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Omodel_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????y
4model_1/encoder_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
2model_1/encoder_block_1/multi_head_attention_1/MulMul<model_1/encoder_block_1/multi_head_attention_1/query/add:z:0=model_1/encoder_block_1/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
<model_1/encoder_block_1/multi_head_attention_1/einsum/EinsumEinsum:model_1/encoder_block_1/multi_head_attention_1/key/add:z:06model_1/encoder_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
>model_1/encoder_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxEmodel_1/encoder_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
?model_1/encoder_block_1/multi_head_attention_1/dropout/IdentityIdentityHmodel_1/encoder_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:????????????
>model_1/encoder_block_1/multi_head_attention_1/einsum_1/EinsumEinsumHmodel_1/encoder_block_1/multi_head_attention_1/dropout/Identity:output:0<model_1/encoder_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
\model_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpemodel_1_encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Mmodel_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumGmodel_1/encoder_block_1/multi_head_attention_1/einsum_1/Einsum:output:0dmodel_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
Rmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOp[model_1_encoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
Cmodel_1/encoder_block_1/multi_head_attention_1/attention_output/addAddV2Vmodel_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Zmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
*model_1/encoder_block_1/dropout_4/IdentityIdentityGmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:???????????
model_1/encoder_block_1/addAddV2%model_1/token_and_pos_embed_1/add:z:03model_1/encoder_block_1/dropout_4/Identity:output:0*
T0*,
_output_shapes
:???????????
Lmodel_1/encoder_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model_1/encoder_block_1/layer_normalization_2/moments/meanMeanmodel_1/encoder_block_1/add:z:0Umodel_1/encoder_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
Bmodel_1/encoder_block_1/layer_normalization_2/moments/StopGradientStopGradientCmodel_1/encoder_block_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
Gmodel_1/encoder_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel_1/encoder_block_1/add:z:0Kmodel_1/encoder_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Pmodel_1/encoder_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model_1/encoder_block_1/layer_normalization_2/moments/varianceMeanKmodel_1/encoder_block_1/layer_normalization_2/moments/SquaredDifference:z:0Ymodel_1/encoder_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
=model_1/encoder_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
;model_1/encoder_block_1/layer_normalization_2/batchnorm/addAddV2Gmodel_1/encoder_block_1/layer_normalization_2/moments/variance:output:0Fmodel_1/encoder_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt?model_1/encoder_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Jmodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_1_encoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
;model_1/encoder_block_1/layer_normalization_2/batchnorm/mulMulAmodel_1/encoder_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Rmodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_2/batchnorm/mul_1Mulmodel_1/encoder_block_1/add:z:0?model_1/encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_2/batchnorm/mul_2MulCmodel_1/encoder_block_1/layer_normalization_2/moments/mean:output:0?model_1/encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
Fmodel_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpOmodel_1_encoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
;model_1/encoder_block_1/layer_normalization_2/batchnorm/subSubNmodel_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0Amodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_2/batchnorm/add_1AddV2Amodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul_1:z:0?model_1/encoder_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpNmodel_1_encoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0?
;model_1/encoder_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
;model_1/encoder_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
<model_1/encoder_block_1/sequential_1/dense_5/Tensordot/ShapeShapeAmodel_1/encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0Mmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Fmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Omodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
;model_1/encoder_block_1/sequential_1/dense_5/Tensordot/ProdProdHmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
>model_1/encoder_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
=model_1/encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdJmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Gmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Bmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=model_1/encoder_block_1/sequential_1/dense_5/Tensordot/concatConcatV2Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Kmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_5/Tensordot/stackPackDmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Prod:output:0Fmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
@model_1/encoder_block_1/sequential_1/dense_5/Tensordot/transpose	TransposeAmodel_1/encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0Fmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
>model_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReshapeReshapeDmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/transpose:y:0Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
=model_1/encoder_block_1/sequential_1/dense_5/Tensordot/MatMulMatMulGmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0Mmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
>model_1/encoder_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
Dmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Hmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Gmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0Mmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
6model_1/encoder_block_1/sequential_1/dense_5/TensordotReshapeGmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0Hmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Cmodel_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpLmodel_1_encoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
4model_1/encoder_block_1/sequential_1/dense_5/BiasAddBiasAdd?model_1/encoder_block_1/sequential_1/dense_5/Tensordot:output:0Kmodel_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
1model_1/encoder_block_1/sequential_1/dense_5/ReluRelu=model_1/encoder_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOpNmodel_1_encoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0?
;model_1/encoder_block_1/sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
;model_1/encoder_block_1/sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
<model_1/encoder_block_1/sequential_1/dense_6/Tensordot/ShapeShape?model_1/encoder_block_1/sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:?
Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2GatherV2Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0Mmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Fmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1GatherV2Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Omodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
;model_1/encoder_block_1/sequential_1/dense_6/Tensordot/ProdProdHmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
>model_1/encoder_block_1/sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
=model_1/encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1ProdJmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1:output:0Gmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Bmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=model_1/encoder_block_1/sequential_1/dense_6/Tensordot/concatConcatV2Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Kmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_6/Tensordot/stackPackDmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Prod:output:0Fmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
@model_1/encoder_block_1/sequential_1/dense_6/Tensordot/transpose	Transpose?model_1/encoder_block_1/sequential_1/dense_5/Relu:activations:0Fmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
>model_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReshapeReshapeDmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/transpose:y:0Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
=model_1/encoder_block_1/sequential_1/dense_6/Tensordot/MatMulMatMulGmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Reshape:output:0Mmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
>model_1/encoder_block_1/sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@?
Dmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat_1ConcatV2Hmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0Gmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/Const_2:output:0Mmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
6model_1/encoder_block_1/sequential_1/dense_6/TensordotReshapeGmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/MatMul:product:0Hmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
Cmodel_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOpLmodel_1_encoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
4model_1/encoder_block_1/sequential_1/dense_6/BiasAddBiasAdd?model_1/encoder_block_1/sequential_1/dense_6/Tensordot:output:0Kmodel_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@?
1model_1/encoder_block_1/sequential_1/dense_6/ReluRelu=model_1/encoder_block_1/sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOpNmodel_1_encoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0?
;model_1/encoder_block_1/sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
;model_1/encoder_block_1/sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
<model_1/encoder_block_1/sequential_1/dense_7/Tensordot/ShapeShape?model_1/encoder_block_1/sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:?
Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2GatherV2Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0Mmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Fmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Amodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1GatherV2Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Omodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
;model_1/encoder_block_1/sequential_1/dense_7/Tensordot/ProdProdHmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
>model_1/encoder_block_1/sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
=model_1/encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1ProdJmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1:output:0Gmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Bmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
=model_1/encoder_block_1/sequential_1/dense_7/Tensordot/concatConcatV2Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Kmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
<model_1/encoder_block_1/sequential_1/dense_7/Tensordot/stackPackDmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Prod:output:0Fmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
@model_1/encoder_block_1/sequential_1/dense_7/Tensordot/transpose	Transpose?model_1/encoder_block_1/sequential_1/dense_6/Relu:activations:0Fmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
>model_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReshapeReshapeDmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/transpose:y:0Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
=model_1/encoder_block_1/sequential_1/dense_7/Tensordot/MatMulMatMulGmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Reshape:output:0Mmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
>model_1/encoder_block_1/sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
Dmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
?model_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat_1ConcatV2Hmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0Gmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/Const_2:output:0Mmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
6model_1/encoder_block_1/sequential_1/dense_7/TensordotReshapeGmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/MatMul:product:0Hmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Cmodel_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOpLmodel_1_encoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
4model_1/encoder_block_1/sequential_1/dense_7/BiasAddBiasAdd?model_1/encoder_block_1/sequential_1/dense_7/Tensordot:output:0Kmodel_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
*model_1/encoder_block_1/dropout_5/IdentityIdentity=model_1/encoder_block_1/sequential_1/dense_7/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
model_1/encoder_block_1/add_1AddV2Amodel_1/encoder_block_1/layer_normalization_2/batchnorm/add_1:z:03model_1/encoder_block_1/dropout_5/Identity:output:0*
T0*,
_output_shapes
:???????????
Lmodel_1/encoder_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
:model_1/encoder_block_1/layer_normalization_3/moments/meanMean!model_1/encoder_block_1/add_1:z:0Umodel_1/encoder_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
Bmodel_1/encoder_block_1/layer_normalization_3/moments/StopGradientStopGradientCmodel_1/encoder_block_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
Gmodel_1/encoder_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifference!model_1/encoder_block_1/add_1:z:0Kmodel_1/encoder_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Pmodel_1/encoder_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
>model_1/encoder_block_1/layer_normalization_3/moments/varianceMeanKmodel_1/encoder_block_1/layer_normalization_3/moments/SquaredDifference:z:0Ymodel_1/encoder_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
=model_1/encoder_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
;model_1/encoder_block_1/layer_normalization_3/batchnorm/addAddV2Gmodel_1/encoder_block_1/layer_normalization_3/moments/variance:output:0Fmodel_1/encoder_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt?model_1/encoder_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Jmodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_1_encoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
;model_1/encoder_block_1/layer_normalization_3/batchnorm/mulMulAmodel_1/encoder_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Rmodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_3/batchnorm/mul_1Mul!model_1/encoder_block_1/add_1:z:0?model_1/encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_3/batchnorm/mul_2MulCmodel_1/encoder_block_1/layer_normalization_3/moments/mean:output:0?model_1/encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
Fmodel_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpOmodel_1_encoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
;model_1/encoder_block_1/layer_normalization_3/batchnorm/subSubNmodel_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0Amodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
=model_1/encoder_block_1/layer_normalization_3/batchnorm/add_1AddV2Amodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul_1:z:0?model_1/encoder_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????{
9model_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
'model_1/global_average_pooling1d_1/MeanMeanAmodel_1/encoder_block_1/layer_normalization_3/batchnorm/add_1:z:0Bmodel_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
model_1/dropout_6/IdentityIdentity0model_1/global_average_pooling1d_1/Mean:output:0*
T0*'
_output_shapes
:??????????
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
model_1/dense_8/MatMulMatMul#model_1/dropout_6/Identity:output:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
model_1/dense_8/ReluRelu model_1/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@|
model_1/dropout_7/IdentityIdentity"model_1/dense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
%model_1/dense_9/MatMul/ReadVariableOpReadVariableOp.model_1_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
model_1/dense_9/MatMulMatMul#model_1/dropout_7/Identity:output:0-model_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&model_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_1/dense_9/BiasAddBiasAdd model_1/dense_9/MatMul:product:0.model_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
model_1/dense_9/SoftmaxSoftmax model_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!model_1/dense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp'^model_1/dense_9/BiasAdd/ReadVariableOp&^model_1/dense_9/MatMul/ReadVariableOpG^model_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpK^model_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpG^model_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpK^model_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpS^model_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp]^model_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpF^model_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpP^model_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpH^model_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpR^model_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpH^model_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpR^model_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpD^model_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpF^model_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpD^model_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOpF^model_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOpD^model_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOpF^model_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp;^model_1/token_and_pos_embed_1/embedding_2/embedding_lookup;^model_1/token_and_pos_embed_1/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp2P
&model_1/dense_9/BiasAdd/ReadVariableOp&model_1/dense_9/BiasAdd/ReadVariableOp2N
%model_1/dense_9/MatMul/ReadVariableOp%model_1/dense_9/MatMul/ReadVariableOp2?
Fmodel_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpFmodel_1/encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp2?
Jmodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpJmodel_1/encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
Fmodel_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpFmodel_1/encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp2?
Jmodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpJmodel_1/encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2?
Rmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpRmodel_1/encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2?
\model_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp\model_1/encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
Emodel_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpEmodel_1/encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp2?
Omodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpOmodel_1/encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
Gmodel_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpGmodel_1/encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp2?
Qmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpQmodel_1/encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
Gmodel_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpGmodel_1/encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp2?
Qmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpQmodel_1/encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2?
Cmodel_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpCmodel_1/encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2?
Emodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpEmodel_1/encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp2?
Cmodel_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOpCmodel_1/encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp2?
Emodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOpEmodel_1/encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp2?
Cmodel_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOpCmodel_1/encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp2?
Emodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOpEmodel_1/encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp2x
:model_1/token_and_pos_embed_1/embedding_2/embedding_lookup:model_1/token_and_pos_embed_1/embedding_2/embedding_lookup2x
:model_1/token_and_pos_embed_1/embedding_3/embedding_lookup:model_1/token_and_pos_embed_1/embedding_3/embedding_lookup:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
?
/__inference_encoder_block_1_layer_call_fn_68338

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_66874t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68722

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :g
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????U
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?+
__inference__traced_save_69403
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopK
Gsavev2_token_and_pos_embed_1_embedding_2_embeddings_read_readvariableopK
Gsavev2_token_and_pos_embed_1_embedding_3_embeddings_read_readvariableopR
Nsavev2_encoder_block_1_multi_head_attention_1_query_kernel_read_readvariableopP
Lsavev2_encoder_block_1_multi_head_attention_1_query_bias_read_readvariableopP
Lsavev2_encoder_block_1_multi_head_attention_1_key_kernel_read_readvariableopN
Jsavev2_encoder_block_1_multi_head_attention_1_key_bias_read_readvariableopR
Nsavev2_encoder_block_1_multi_head_attention_1_value_kernel_read_readvariableopP
Lsavev2_encoder_block_1_multi_head_attention_1_value_bias_read_readvariableop]
Ysavev2_encoder_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableop[
Wsavev2_encoder_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableopJ
Fsavev2_encoder_block_1_layer_normalization_2_gamma_read_readvariableopI
Esavev2_encoder_block_1_layer_normalization_2_beta_read_readvariableopJ
Fsavev2_encoder_block_1_layer_normalization_3_gamma_read_readvariableopI
Esavev2_encoder_block_1_layer_normalization_3_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopR
Nsavev2_adam_token_and_pos_embed_1_embedding_2_embeddings_m_read_readvariableopR
Nsavev2_adam_token_and_pos_embed_1_embedding_3_embeddings_m_read_readvariableopY
Usavev2_adam_encoder_block_1_multi_head_attention_1_query_kernel_m_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_query_bias_m_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_key_kernel_m_read_readvariableopU
Qsavev2_adam_encoder_block_1_multi_head_attention_1_key_bias_m_read_readvariableopY
Usavev2_adam_encoder_block_1_multi_head_attention_1_value_kernel_m_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_value_bias_m_read_readvariableopd
`savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableopb
^savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableopQ
Msavev2_adam_encoder_block_1_layer_normalization_2_gamma_m_read_readvariableopP
Lsavev2_adam_encoder_block_1_layer_normalization_2_beta_m_read_readvariableopQ
Msavev2_adam_encoder_block_1_layer_normalization_3_gamma_m_read_readvariableopP
Lsavev2_adam_encoder_block_1_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopR
Nsavev2_adam_token_and_pos_embed_1_embedding_2_embeddings_v_read_readvariableopR
Nsavev2_adam_token_and_pos_embed_1_embedding_3_embeddings_v_read_readvariableopY
Usavev2_adam_encoder_block_1_multi_head_attention_1_query_kernel_v_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_query_bias_v_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_key_kernel_v_read_readvariableopU
Qsavev2_adam_encoder_block_1_multi_head_attention_1_key_bias_v_read_readvariableopY
Usavev2_adam_encoder_block_1_multi_head_attention_1_value_kernel_v_read_readvariableopW
Ssavev2_adam_encoder_block_1_multi_head_attention_1_value_bias_v_read_readvariableopd
`savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableopb
^savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableopQ
Msavev2_adam_encoder_block_1_layer_normalization_2_gamma_v_read_readvariableopP
Lsavev2_adam_encoder_block_1_layer_normalization_2_beta_v_read_readvariableopQ
Msavev2_adam_encoder_block_1_layer_normalization_3_gamma_v_read_readvariableopP
Lsavev2_adam_encoder_block_1_layer_normalization_3_beta_v_read_readvariableop
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
: ?'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?&
value?&B?&RB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?
value?B?RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopGsavev2_token_and_pos_embed_1_embedding_2_embeddings_read_readvariableopGsavev2_token_and_pos_embed_1_embedding_3_embeddings_read_readvariableopNsavev2_encoder_block_1_multi_head_attention_1_query_kernel_read_readvariableopLsavev2_encoder_block_1_multi_head_attention_1_query_bias_read_readvariableopLsavev2_encoder_block_1_multi_head_attention_1_key_kernel_read_readvariableopJsavev2_encoder_block_1_multi_head_attention_1_key_bias_read_readvariableopNsavev2_encoder_block_1_multi_head_attention_1_value_kernel_read_readvariableopLsavev2_encoder_block_1_multi_head_attention_1_value_bias_read_readvariableopYsavev2_encoder_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableopWsavev2_encoder_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableopFsavev2_encoder_block_1_layer_normalization_2_gamma_read_readvariableopEsavev2_encoder_block_1_layer_normalization_2_beta_read_readvariableopFsavev2_encoder_block_1_layer_normalization_3_gamma_read_readvariableopEsavev2_encoder_block_1_layer_normalization_3_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableopNsavev2_adam_token_and_pos_embed_1_embedding_2_embeddings_m_read_readvariableopNsavev2_adam_token_and_pos_embed_1_embedding_3_embeddings_m_read_readvariableopUsavev2_adam_encoder_block_1_multi_head_attention_1_query_kernel_m_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_query_bias_m_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_key_kernel_m_read_readvariableopQsavev2_adam_encoder_block_1_multi_head_attention_1_key_bias_m_read_readvariableopUsavev2_adam_encoder_block_1_multi_head_attention_1_value_kernel_m_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_value_bias_m_read_readvariableop`savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableop^savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableopMsavev2_adam_encoder_block_1_layer_normalization_2_gamma_m_read_readvariableopLsavev2_adam_encoder_block_1_layer_normalization_2_beta_m_read_readvariableopMsavev2_adam_encoder_block_1_layer_normalization_3_gamma_m_read_readvariableopLsavev2_adam_encoder_block_1_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopNsavev2_adam_token_and_pos_embed_1_embedding_2_embeddings_v_read_readvariableopNsavev2_adam_token_and_pos_embed_1_embedding_3_embeddings_v_read_readvariableopUsavev2_adam_encoder_block_1_multi_head_attention_1_query_kernel_v_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_query_bias_v_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_key_kernel_v_read_readvariableopQsavev2_adam_encoder_block_1_multi_head_attention_1_key_bias_v_read_readvariableopUsavev2_adam_encoder_block_1_multi_head_attention_1_value_kernel_v_read_readvariableopSsavev2_adam_encoder_block_1_multi_head_attention_1_value_bias_v_read_readvariableop`savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableop^savev2_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopMsavev2_adam_encoder_block_1_layer_normalization_2_gamma_v_read_readvariableopLsavev2_adam_encoder_block_1_layer_normalization_2_beta_v_read_readvariableopMsavev2_adam_encoder_block_1_layer_normalization_3_gamma_v_read_readvariableopLsavev2_adam_encoder_block_1_layer_normalization_3_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *`
dtypesV
T2R	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@:: : : : : :
??:	?:::::::::::@:@:@:::::: : : : :@:@:@::
??:	?:::::::::::@:@:@::::::@:@:@::
??:	?:::::::::::@:@:@:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :&
"
 
_output_shapes
:
??:%!

_output_shapes
:	?:($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::
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
: :$" 

_output_shapes

:@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::&&"
 
_output_shapes
:
??:%'!

_output_shapes
:	?:(($
"
_output_shapes
::$) 

_output_shapes

::(*$
"
_output_shapes
::$+ 

_output_shapes

::(,$
"
_output_shapes
::$- 

_output_shapes

::(.$
"
_output_shapes
:: /

_output_shapes
::$0 

_output_shapes

:: 1

_output_shapes
::$2 

_output_shapes

:@: 3

_output_shapes
:@:$4 

_output_shapes

:@: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::$: 

_output_shapes

:@: ;

_output_shapes
:@:$< 

_output_shapes

:@: =

_output_shapes
::&>"
 
_output_shapes
:
??:%?!

_output_shapes
:	?:(@$
"
_output_shapes
::$A 

_output_shapes

::(B$
"
_output_shapes
::$C 

_output_shapes

::(D$
"
_output_shapes
::$E 

_output_shapes

::(F$
"
_output_shapes
:: G

_output_shapes
::$H 

_output_shapes

:: I

_output_shapes
::$J 

_output_shapes

:@: K

_output_shapes
:@:$L 

_output_shapes

:@: M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
:: P

_output_shapes
:: Q

_output_shapes
::R

_output_shapes
: 
?
V
:__inference_global_average_pooling1d_1_layer_call_fn_68705

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66680i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_68749

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68700

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:H
6sequential_1_dense_5_tensordot_readvariableop_resource:B
4sequential_1_dense_5_biasadd_readvariableop_resource:H
6sequential_1_dense_6_tensordot_readvariableop_resource:@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@H
6sequential_1_dense_7_tensordot_readvariableop_resource:@B
4sequential_1_dense_7_biasadd_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:
identity??.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?.layer_normalization_3/batchnorm/ReadVariableOp?2layer_normalization_3/batchnorm/mul/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?-sequential_1/dense_5/Tensordot/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?-sequential_1/dense_6/Tensordot/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?-sequential_1/dense_7/Tensordot/ReadVariableOp?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_4/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*,
_output_shapes
:??????????v
dropout_4/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????h
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_5/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_5/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_6/Tensordot/ShapeShape'sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/GatherV2GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/free:output:05sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_6/Tensordot/GatherV2_1GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/axes:output:07sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_6/Tensordot/ProdProd0sequential_1/dense_6/Tensordot/GatherV2:output:0-sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_6/Tensordot/Prod_1Prod2sequential_1/dense_6/Tensordot/GatherV2_1:output:0/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_6/Tensordot/concatConcatV2,sequential_1/dense_6/Tensordot/free:output:0,sequential_1/dense_6/Tensordot/axes:output:03sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_6/Tensordot/stackPack,sequential_1/dense_6/Tensordot/Prod:output:0.sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_6/Tensordot/transpose	Transpose'sequential_1/dense_5/Relu:activations:0.sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_6/Tensordot/ReshapeReshape,sequential_1/dense_6/Tensordot/transpose:y:0-sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_6/Tensordot/MatMulMatMul/sequential_1/dense_6/Tensordot/Reshape:output:05sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
&sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/concat_1ConcatV20sequential_1/dense_6/Tensordot/GatherV2:output:0/sequential_1/dense_6/Tensordot/Const_2:output:05sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_6/TensordotReshape/sequential_1/dense_6/Tensordot/MatMul:product:00sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_1/dense_6/BiasAddBiasAdd'sequential_1/dense_6/Tensordot:output:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
-sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_7/Tensordot/ShapeShape'sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/GatherV2GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/free:output:05sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_7/Tensordot/GatherV2_1GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/axes:output:07sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_7/Tensordot/ProdProd0sequential_1/dense_7/Tensordot/GatherV2:output:0-sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_7/Tensordot/Prod_1Prod2sequential_1/dense_7/Tensordot/GatherV2_1:output:0/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_7/Tensordot/concatConcatV2,sequential_1/dense_7/Tensordot/free:output:0,sequential_1/dense_7/Tensordot/axes:output:03sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_7/Tensordot/stackPack,sequential_1/dense_7/Tensordot/Prod:output:0.sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_7/Tensordot/transpose	Transpose'sequential_1/dense_6/Relu:activations:0.sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
&sequential_1/dense_7/Tensordot/ReshapeReshape,sequential_1/dense_7/Tensordot/transpose:y:0-sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_7/Tensordot/MatMulMatMul/sequential_1/dense_7/Tensordot/Reshape:output:05sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/concat_1ConcatV20sequential_1/dense_7/Tensordot/GatherV2:output:0/sequential_1/dense_7/Tensordot/Const_2:output:05sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_7/TensordotReshape/sequential_1/dense_7/Tensordot/MatMul:product:00sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd'sequential_1/dense_7/Tensordot:output:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_5/dropout/MulMul%sequential_1/dense_7/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*,
_output_shapes
:??????????l
dropout_5/dropout/ShapeShape%sequential_1/dense_7/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????}
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp.^sequential_1/dense_6/Tensordot/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp.^sequential_1/dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2^
-sequential_1/dense_6/Tensordot/ReadVariableOp-sequential_1/dense_6/Tensordot/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2^
-sequential_1/dense_7/Tensordot/ReadVariableOp-sequential_1/dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_68297
x5
"embedding_3_embedding_lookup_68284:	?6
"embedding_2_embedding_lookup_68290:
??
identity??embedding_2/embedding_lookup?embedding_3/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:??
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_68284range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/68284*
_output_shapes
:	?*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/68284*
_output_shapes
:	??
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?]
embedding_2/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_68290embedding_2/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/68290*,
_output_shapes
:??????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/68290*,
_output_shapes
:???????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:???????????
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
5__inference_token_and_pos_embed_1_layer_call_fn_68273
x
unknown:	?
	unknown_0:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??????????

_user_specified_namex
?
?
'__inference_model_1_layer_call_fn_67019
input_2
unknown:	?
	unknown_0:
??
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:

unknown_17:

unknown_18:

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_66968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_66874

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:H
6sequential_1_dense_5_tensordot_readvariableop_resource:B
4sequential_1_dense_5_biasadd_readvariableop_resource:H
6sequential_1_dense_6_tensordot_readvariableop_resource:@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@H
6sequential_1_dense_7_tensordot_readvariableop_resource:@B
4sequential_1_dense_7_biasadd_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:
identity??.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?.layer_normalization_3/batchnorm/ReadVariableOp?2layer_normalization_3/batchnorm/mul/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?-sequential_1/dense_5/Tensordot/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?-sequential_1/dense_6/Tensordot/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?-sequential_1/dense_7/Tensordot/ReadVariableOp?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:????????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
dropout_4/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????h
addAddV2inputsdropout_4/Identity:output:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_5/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_5/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_6/Tensordot/ShapeShape'sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/GatherV2GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/free:output:05sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_6/Tensordot/GatherV2_1GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/axes:output:07sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_6/Tensordot/ProdProd0sequential_1/dense_6/Tensordot/GatherV2:output:0-sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_6/Tensordot/Prod_1Prod2sequential_1/dense_6/Tensordot/GatherV2_1:output:0/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_6/Tensordot/concatConcatV2,sequential_1/dense_6/Tensordot/free:output:0,sequential_1/dense_6/Tensordot/axes:output:03sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_6/Tensordot/stackPack,sequential_1/dense_6/Tensordot/Prod:output:0.sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_6/Tensordot/transpose	Transpose'sequential_1/dense_5/Relu:activations:0.sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_6/Tensordot/ReshapeReshape,sequential_1/dense_6/Tensordot/transpose:y:0-sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_6/Tensordot/MatMulMatMul/sequential_1/dense_6/Tensordot/Reshape:output:05sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
&sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/concat_1ConcatV20sequential_1/dense_6/Tensordot/GatherV2:output:0/sequential_1/dense_6/Tensordot/Const_2:output:05sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_6/TensordotReshape/sequential_1/dense_6/Tensordot/MatMul:product:00sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_1/dense_6/BiasAddBiasAdd'sequential_1/dense_6/Tensordot:output:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
-sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_7/Tensordot/ShapeShape'sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/GatherV2GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/free:output:05sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_7/Tensordot/GatherV2_1GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/axes:output:07sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_7/Tensordot/ProdProd0sequential_1/dense_7/Tensordot/GatherV2:output:0-sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_7/Tensordot/Prod_1Prod2sequential_1/dense_7/Tensordot/GatherV2_1:output:0/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_7/Tensordot/concatConcatV2,sequential_1/dense_7/Tensordot/free:output:0,sequential_1/dense_7/Tensordot/axes:output:03sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_7/Tensordot/stackPack,sequential_1/dense_7/Tensordot/Prod:output:0.sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_7/Tensordot/transpose	Transpose'sequential_1/dense_6/Relu:activations:0.sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
&sequential_1/dense_7/Tensordot/ReshapeReshape,sequential_1/dense_7/Tensordot/transpose:y:0-sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_7/Tensordot/MatMulMatMul/sequential_1/dense_7/Tensordot/Reshape:output:05sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/concat_1ConcatV20sequential_1/dense_7/Tensordot/GatherV2:output:0/sequential_1/dense_7/Tensordot/Const_2:output:05sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_7/TensordotReshape/sequential_1/dense_7/Tensordot/MatMul:product:00sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd'sequential_1/dense_7/Tensordot:output:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
dropout_5/IdentityIdentity%sequential_1/dense_7/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????}
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp.^sequential_1/dense_6/Tensordot/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp.^sequential_1/dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2^
-sequential_1/dense_6/Tensordot/ReadVariableOp-sequential_1/dense_6/Tensordot/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2^
-sequential_1/dense_7/Tensordot/ReadVariableOp-sequential_1/dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?)
?	
B__inference_model_1_layer_call_and_return_conditional_losses_67627
input_2.
token_and_pos_embed_1_67571:	?/
token_and_pos_embed_1_67573:
??+
encoder_block_1_67576:'
encoder_block_1_67578:+
encoder_block_1_67580:'
encoder_block_1_67582:+
encoder_block_1_67584:'
encoder_block_1_67586:+
encoder_block_1_67588:#
encoder_block_1_67590:#
encoder_block_1_67592:#
encoder_block_1_67594:'
encoder_block_1_67596:#
encoder_block_1_67598:'
encoder_block_1_67600:@#
encoder_block_1_67602:@'
encoder_block_1_67604:@#
encoder_block_1_67606:#
encoder_block_1_67608:#
encoder_block_1_67610:
dense_8_67615:@
dense_8_67617:@
dense_9_67621:@
dense_9_67623:
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?'encoder_block_1/StatefulPartitionedCall?-token_and_pos_embed_1/StatefulPartitionedCall?
-token_and_pos_embed_1/StatefulPartitionedCallStatefulPartitionedCallinput_2token_and_pos_embed_1_67571token_and_pos_embed_1_67573*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714?
'encoder_block_1/StatefulPartitionedCallStatefulPartitionedCall6token_and_pos_embed_1/StatefulPartitionedCall:output:0encoder_block_1_67576encoder_block_1_67578encoder_block_1_67580encoder_block_1_67582encoder_block_1_67584encoder_block_1_67586encoder_block_1_67588encoder_block_1_67590encoder_block_1_67592encoder_block_1_67594encoder_block_1_67596encoder_block_1_67598encoder_block_1_67600encoder_block_1_67602encoder_block_1_67604encoder_block_1_67606encoder_block_1_67608encoder_block_1_67610*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_66874?
*global_average_pooling1d_1/PartitionedCallPartitionedCall0encoder_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917?
dropout_6/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_66924?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_8_67615dense_8_67617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_66937?
dropout_7/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_66948?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_9_67621dense_9_67623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_66961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall(^encoder_block_1/StatefulPartitionedCall.^token_and_pos_embed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2R
'encoder_block_1/StatefulPartitionedCall'encoder_block_1/StatefulPartitionedCall2^
-token_and_pos_embed_1/StatefulPartitionedCall-token_and_pos_embed_1/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_66517

inputs
dense_5_66438:
dense_5_66440:
dense_6_66475:@
dense_6_66477:@
dense_7_66511:@
dense_7_66513:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_66438dense_5_66440*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_66437?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_66475dense_6_66477*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_66474?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_66511dense_7_66513*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_66510|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?<
!__inference__traced_restore_69656
file_prefix1
assignvariableop_dense_8_kernel:@-
assignvariableop_1_dense_8_bias:@3
!assignvariableop_2_dense_9_kernel:@-
assignvariableop_3_dense_9_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: S
?assignvariableop_9_token_and_pos_embed_1_embedding_2_embeddings:
??S
@assignvariableop_10_token_and_pos_embed_1_embedding_3_embeddings:	?]
Gassignvariableop_11_encoder_block_1_multi_head_attention_1_query_kernel:W
Eassignvariableop_12_encoder_block_1_multi_head_attention_1_query_bias:[
Eassignvariableop_13_encoder_block_1_multi_head_attention_1_key_kernel:U
Cassignvariableop_14_encoder_block_1_multi_head_attention_1_key_bias:]
Gassignvariableop_15_encoder_block_1_multi_head_attention_1_value_kernel:W
Eassignvariableop_16_encoder_block_1_multi_head_attention_1_value_bias:h
Rassignvariableop_17_encoder_block_1_multi_head_attention_1_attention_output_kernel:^
Passignvariableop_18_encoder_block_1_multi_head_attention_1_attention_output_bias:4
"assignvariableop_19_dense_5_kernel:.
 assignvariableop_20_dense_5_bias:4
"assignvariableop_21_dense_6_kernel:@.
 assignvariableop_22_dense_6_bias:@4
"assignvariableop_23_dense_7_kernel:@.
 assignvariableop_24_dense_7_bias:M
?assignvariableop_25_encoder_block_1_layer_normalization_2_gamma:L
>assignvariableop_26_encoder_block_1_layer_normalization_2_beta:M
?assignvariableop_27_encoder_block_1_layer_normalization_3_gamma:L
>assignvariableop_28_encoder_block_1_layer_normalization_3_beta:#
assignvariableop_29_total: #
assignvariableop_30_count: %
assignvariableop_31_total_1: %
assignvariableop_32_count_1: ;
)assignvariableop_33_adam_dense_8_kernel_m:@5
'assignvariableop_34_adam_dense_8_bias_m:@;
)assignvariableop_35_adam_dense_9_kernel_m:@5
'assignvariableop_36_adam_dense_9_bias_m:[
Gassignvariableop_37_adam_token_and_pos_embed_1_embedding_2_embeddings_m:
??Z
Gassignvariableop_38_adam_token_and_pos_embed_1_embedding_3_embeddings_m:	?d
Nassignvariableop_39_adam_encoder_block_1_multi_head_attention_1_query_kernel_m:^
Lassignvariableop_40_adam_encoder_block_1_multi_head_attention_1_query_bias_m:b
Lassignvariableop_41_adam_encoder_block_1_multi_head_attention_1_key_kernel_m:\
Jassignvariableop_42_adam_encoder_block_1_multi_head_attention_1_key_bias_m:d
Nassignvariableop_43_adam_encoder_block_1_multi_head_attention_1_value_kernel_m:^
Lassignvariableop_44_adam_encoder_block_1_multi_head_attention_1_value_bias_m:o
Yassignvariableop_45_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_m:e
Wassignvariableop_46_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_m:;
)assignvariableop_47_adam_dense_5_kernel_m:5
'assignvariableop_48_adam_dense_5_bias_m:;
)assignvariableop_49_adam_dense_6_kernel_m:@5
'assignvariableop_50_adam_dense_6_bias_m:@;
)assignvariableop_51_adam_dense_7_kernel_m:@5
'assignvariableop_52_adam_dense_7_bias_m:T
Fassignvariableop_53_adam_encoder_block_1_layer_normalization_2_gamma_m:S
Eassignvariableop_54_adam_encoder_block_1_layer_normalization_2_beta_m:T
Fassignvariableop_55_adam_encoder_block_1_layer_normalization_3_gamma_m:S
Eassignvariableop_56_adam_encoder_block_1_layer_normalization_3_beta_m:;
)assignvariableop_57_adam_dense_8_kernel_v:@5
'assignvariableop_58_adam_dense_8_bias_v:@;
)assignvariableop_59_adam_dense_9_kernel_v:@5
'assignvariableop_60_adam_dense_9_bias_v:[
Gassignvariableop_61_adam_token_and_pos_embed_1_embedding_2_embeddings_v:
??Z
Gassignvariableop_62_adam_token_and_pos_embed_1_embedding_3_embeddings_v:	?d
Nassignvariableop_63_adam_encoder_block_1_multi_head_attention_1_query_kernel_v:^
Lassignvariableop_64_adam_encoder_block_1_multi_head_attention_1_query_bias_v:b
Lassignvariableop_65_adam_encoder_block_1_multi_head_attention_1_key_kernel_v:\
Jassignvariableop_66_adam_encoder_block_1_multi_head_attention_1_key_bias_v:d
Nassignvariableop_67_adam_encoder_block_1_multi_head_attention_1_value_kernel_v:^
Lassignvariableop_68_adam_encoder_block_1_multi_head_attention_1_value_bias_v:o
Yassignvariableop_69_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_v:e
Wassignvariableop_70_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_v:;
)assignvariableop_71_adam_dense_5_kernel_v:5
'assignvariableop_72_adam_dense_5_bias_v:;
)assignvariableop_73_adam_dense_6_kernel_v:@5
'assignvariableop_74_adam_dense_6_bias_v:@;
)assignvariableop_75_adam_dense_7_kernel_v:@5
'assignvariableop_76_adam_dense_7_bias_v:T
Fassignvariableop_77_adam_encoder_block_1_layer_normalization_2_gamma_v:S
Eassignvariableop_78_adam_encoder_block_1_layer_normalization_2_beta_v:T
Fassignvariableop_79_adam_encoder_block_1_layer_normalization_3_gamma_v:S
Eassignvariableop_80_adam_encoder_block_1_layer_normalization_3_beta_v:
identity_82??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_9?'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?&
value?&B?&RB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?
value?B?RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*`
dtypesV
T2R	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp?assignvariableop_9_token_and_pos_embed_1_embedding_2_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp@assignvariableop_10_token_and_pos_embed_1_embedding_3_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpGassignvariableop_11_encoder_block_1_multi_head_attention_1_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpEassignvariableop_12_encoder_block_1_multi_head_attention_1_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpEassignvariableop_13_encoder_block_1_multi_head_attention_1_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpCassignvariableop_14_encoder_block_1_multi_head_attention_1_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpGassignvariableop_15_encoder_block_1_multi_head_attention_1_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpEassignvariableop_16_encoder_block_1_multi_head_attention_1_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpRassignvariableop_17_encoder_block_1_multi_head_attention_1_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpPassignvariableop_18_encoder_block_1_multi_head_attention_1_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_5_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_5_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_6_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_6_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_7_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp assignvariableop_24_dense_7_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp?assignvariableop_25_encoder_block_1_layer_normalization_2_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp>assignvariableop_26_encoder_block_1_layer_normalization_2_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp?assignvariableop_27_encoder_block_1_layer_normalization_3_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp>assignvariableop_28_encoder_block_1_layer_normalization_3_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_8_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_8_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_9_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_9_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpGassignvariableop_37_adam_token_and_pos_embed_1_embedding_2_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpGassignvariableop_38_adam_token_and_pos_embed_1_embedding_3_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpNassignvariableop_39_adam_encoder_block_1_multi_head_attention_1_query_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpLassignvariableop_40_adam_encoder_block_1_multi_head_attention_1_query_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpLassignvariableop_41_adam_encoder_block_1_multi_head_attention_1_key_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOpJassignvariableop_42_adam_encoder_block_1_multi_head_attention_1_key_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpNassignvariableop_43_adam_encoder_block_1_multi_head_attention_1_value_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpLassignvariableop_44_adam_encoder_block_1_multi_head_attention_1_value_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpYassignvariableop_45_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpWassignvariableop_46_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_5_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_5_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_6_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_6_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_7_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_7_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpFassignvariableop_53_adam_encoder_block_1_layer_normalization_2_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOpEassignvariableop_54_adam_encoder_block_1_layer_normalization_2_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpFassignvariableop_55_adam_encoder_block_1_layer_normalization_3_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpEassignvariableop_56_adam_encoder_block_1_layer_normalization_3_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_8_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_8_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_9_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_9_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOpGassignvariableop_61_adam_token_and_pos_embed_1_embedding_2_embeddings_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpGassignvariableop_62_adam_token_and_pos_embed_1_embedding_3_embeddings_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpNassignvariableop_63_adam_encoder_block_1_multi_head_attention_1_query_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpLassignvariableop_64_adam_encoder_block_1_multi_head_attention_1_query_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpLassignvariableop_65_adam_encoder_block_1_multi_head_attention_1_key_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpJassignvariableop_66_adam_encoder_block_1_multi_head_attention_1_key_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOpNassignvariableop_67_adam_encoder_block_1_multi_head_attention_1_value_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpLassignvariableop_68_adam_encoder_block_1_multi_head_attention_1_value_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpYassignvariableop_69_adam_encoder_block_1_multi_head_attention_1_attention_output_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpWassignvariableop_70_adam_encoder_block_1_multi_head_attention_1_attention_output_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_dense_5_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_dense_5_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_dense_6_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_dense_6_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_dense_7_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_dense_7_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOpFassignvariableop_77_adam_encoder_block_1_layer_normalization_2_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpEassignvariableop_78_adam_encoder_block_1_layer_normalization_2_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOpFassignvariableop_79_adam_encoder_block_1_layer_normalization_3_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOpEassignvariableop_80_adam_encoder_block_1_layer_normalization_3_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_81Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_82IdentityIdentity_81:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_82Identity_82:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?\
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_69018

inputs;
)dense_5_tensordot_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:;
)dense_6_tensordot_readvariableop_resource:@5
'dense_6_biasadd_readvariableop_resource:@;
)dense_7_tensordot_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity??dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@e
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_7/Tensordot/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedense_6/Relu:activations:0!dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_dense_7_layer_call_and_return_conditional_losses_66510

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_68784

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_66670
dense_5_input
dense_5_66654:
dense_5_66656:
dense_6_66659:@
dense_6_66661:@
dense_7_66664:@
dense_7_66666:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_66654dense_5_66656*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_66437?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_66659dense_6_66661*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_66474?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_66664dense_7_66666*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_66510|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_5_input
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_68737

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_7_layer_call_fn_68779

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_67049o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_model_1_layer_call_fn_67853

inputs
unknown:	?
	unknown_0:
??
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:

unknown_17:

unknown_18:

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:
identity??StatefulPartitionedCall?
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
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66680

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_67747
input_2
unknown:	?
	unknown_0:
??
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:

unknown_17:

unknown_18:

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_66399o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68533

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:H
6sequential_1_dense_5_tensordot_readvariableop_resource:B
4sequential_1_dense_5_biasadd_readvariableop_resource:H
6sequential_1_dense_6_tensordot_readvariableop_resource:@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@H
6sequential_1_dense_7_tensordot_readvariableop_resource:@B
4sequential_1_dense_7_biasadd_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:
identity??.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?.layer_normalization_3/batchnorm/ReadVariableOp?2layer_normalization_3/batchnorm/mul/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?-sequential_1/dense_5/Tensordot/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?-sequential_1/dense_6/Tensordot/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?-sequential_1/dense_7/Tensordot/ReadVariableOp?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:????????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
dropout_4/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????h
addAddV2inputsdropout_4/Identity:output:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_5/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_5/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_6/Tensordot/ShapeShape'sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/GatherV2GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/free:output:05sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_6/Tensordot/GatherV2_1GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/axes:output:07sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_6/Tensordot/ProdProd0sequential_1/dense_6/Tensordot/GatherV2:output:0-sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_6/Tensordot/Prod_1Prod2sequential_1/dense_6/Tensordot/GatherV2_1:output:0/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_6/Tensordot/concatConcatV2,sequential_1/dense_6/Tensordot/free:output:0,sequential_1/dense_6/Tensordot/axes:output:03sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_6/Tensordot/stackPack,sequential_1/dense_6/Tensordot/Prod:output:0.sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_6/Tensordot/transpose	Transpose'sequential_1/dense_5/Relu:activations:0.sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_6/Tensordot/ReshapeReshape,sequential_1/dense_6/Tensordot/transpose:y:0-sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_6/Tensordot/MatMulMatMul/sequential_1/dense_6/Tensordot/Reshape:output:05sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
&sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/concat_1ConcatV20sequential_1/dense_6/Tensordot/GatherV2:output:0/sequential_1/dense_6/Tensordot/Const_2:output:05sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_6/TensordotReshape/sequential_1/dense_6/Tensordot/MatMul:product:00sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_1/dense_6/BiasAddBiasAdd'sequential_1/dense_6/Tensordot:output:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
-sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_7/Tensordot/ShapeShape'sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/GatherV2GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/free:output:05sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_7/Tensordot/GatherV2_1GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/axes:output:07sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_7/Tensordot/ProdProd0sequential_1/dense_7/Tensordot/GatherV2:output:0-sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_7/Tensordot/Prod_1Prod2sequential_1/dense_7/Tensordot/GatherV2_1:output:0/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_7/Tensordot/concatConcatV2,sequential_1/dense_7/Tensordot/free:output:0,sequential_1/dense_7/Tensordot/axes:output:03sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_7/Tensordot/stackPack,sequential_1/dense_7/Tensordot/Prod:output:0.sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_7/Tensordot/transpose	Transpose'sequential_1/dense_6/Relu:activations:0.sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
&sequential_1/dense_7/Tensordot/ReshapeReshape,sequential_1/dense_7/Tensordot/transpose:y:0-sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_7/Tensordot/MatMulMatMul/sequential_1/dense_7/Tensordot/Reshape:output:05sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/concat_1ConcatV20sequential_1/dense_7/Tensordot/GatherV2:output:0/sequential_1/dense_7/Tensordot/Const_2:output:05sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_7/TensordotReshape/sequential_1/dense_7/Tensordot/MatMul:product:00sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd'sequential_1/dense_7/Tensordot:output:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
dropout_5/IdentityIdentity%sequential_1/dense_7/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????}
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp.^sequential_1/dense_6/Tensordot/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp.^sequential_1/dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2^
-sequential_1/dense_6/Tensordot/ReadVariableOp-sequential_1/dense_6/Tensordot/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2^
-sequential_1/dense_7/Tensordot/ReadVariableOp-sequential_1/dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_dense_8_layer_call_and_return_conditional_losses_68769

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?	
B__inference_model_1_layer_call_and_return_conditional_losses_67464

inputs.
token_and_pos_embed_1_67408:	?/
token_and_pos_embed_1_67410:
??+
encoder_block_1_67413:'
encoder_block_1_67415:+
encoder_block_1_67417:'
encoder_block_1_67419:+
encoder_block_1_67421:'
encoder_block_1_67423:+
encoder_block_1_67425:#
encoder_block_1_67427:#
encoder_block_1_67429:#
encoder_block_1_67431:'
encoder_block_1_67433:#
encoder_block_1_67435:'
encoder_block_1_67437:@#
encoder_block_1_67439:@'
encoder_block_1_67441:@#
encoder_block_1_67443:#
encoder_block_1_67445:#
encoder_block_1_67447:
dense_8_67452:@
dense_8_67454:@
dense_9_67458:@
dense_9_67460:
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?'encoder_block_1/StatefulPartitionedCall?-token_and_pos_embed_1/StatefulPartitionedCall?
-token_and_pos_embed_1/StatefulPartitionedCallStatefulPartitionedCallinputstoken_and_pos_embed_1_67408token_and_pos_embed_1_67410*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714?
'encoder_block_1/StatefulPartitionedCallStatefulPartitionedCall6token_and_pos_embed_1/StatefulPartitionedCall:output:0encoder_block_1_67413encoder_block_1_67415encoder_block_1_67417encoder_block_1_67419encoder_block_1_67421encoder_block_1_67423encoder_block_1_67425encoder_block_1_67427encoder_block_1_67429encoder_block_1_67431encoder_block_1_67433encoder_block_1_67435encoder_block_1_67437encoder_block_1_67439encoder_block_1_67441encoder_block_1_67443encoder_block_1_67445encoder_block_1_67447*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_67301?
*global_average_pooling1d_1/PartitionedCallPartitionedCall0encoder_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_67082?
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_8_67452dense_8_67454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_66937?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_67049?
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_9_67458dense_9_67460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_66961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall(^encoder_block_1/StatefulPartitionedCall.^token_and_pos_embed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2R
'encoder_block_1/StatefulPartitionedCall'encoder_block_1/StatefulPartitionedCall2^
-token_and_pos_embed_1/StatefulPartitionedCall-token_and_pos_embed_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_67082

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?	
B__inference_model_1_layer_call_and_return_conditional_losses_66968

inputs.
token_and_pos_embed_1_66715:	?/
token_and_pos_embed_1_66717:
??+
encoder_block_1_66875:'
encoder_block_1_66877:+
encoder_block_1_66879:'
encoder_block_1_66881:+
encoder_block_1_66883:'
encoder_block_1_66885:+
encoder_block_1_66887:#
encoder_block_1_66889:#
encoder_block_1_66891:#
encoder_block_1_66893:'
encoder_block_1_66895:#
encoder_block_1_66897:'
encoder_block_1_66899:@#
encoder_block_1_66901:@'
encoder_block_1_66903:@#
encoder_block_1_66905:#
encoder_block_1_66907:#
encoder_block_1_66909:
dense_8_66938:@
dense_8_66940:@
dense_9_66962:@
dense_9_66964:
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?'encoder_block_1/StatefulPartitionedCall?-token_and_pos_embed_1/StatefulPartitionedCall?
-token_and_pos_embed_1/StatefulPartitionedCallStatefulPartitionedCallinputstoken_and_pos_embed_1_66715token_and_pos_embed_1_66717*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714?
'encoder_block_1/StatefulPartitionedCallStatefulPartitionedCall6token_and_pos_embed_1/StatefulPartitionedCall:output:0encoder_block_1_66875encoder_block_1_66877encoder_block_1_66879encoder_block_1_66881encoder_block_1_66883encoder_block_1_66885encoder_block_1_66887encoder_block_1_66889encoder_block_1_66891encoder_block_1_66893encoder_block_1_66895encoder_block_1_66897encoder_block_1_66899encoder_block_1_66901encoder_block_1_66903encoder_block_1_66905encoder_block_1_66907encoder_block_1_66909*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_66874?
*global_average_pooling1d_1/PartitionedCallPartitionedCall0encoder_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917?
dropout_6/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_66924?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_8_66938dense_8_66940*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_66937?
dropout_7/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_66948?
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_9_66962dense_9_66964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_66961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall(^encoder_block_1/StatefulPartitionedCall.^token_and_pos_embed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2R
'encoder_block_1/StatefulPartitionedCall'encoder_block_1/StatefulPartitionedCall2^
-token_and_pos_embed_1/StatefulPartitionedCall-token_and_pos_embed_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_1_layer_call_fn_67800

inputs
unknown:	?
	unknown_0:
??
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:

unknown_17:

unknown_18:

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:
identity??StatefulPartitionedCall?
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
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_66968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?	
B__inference_model_1_layer_call_and_return_conditional_losses_67686
input_2.
token_and_pos_embed_1_67630:	?/
token_and_pos_embed_1_67632:
??+
encoder_block_1_67635:'
encoder_block_1_67637:+
encoder_block_1_67639:'
encoder_block_1_67641:+
encoder_block_1_67643:'
encoder_block_1_67645:+
encoder_block_1_67647:#
encoder_block_1_67649:#
encoder_block_1_67651:#
encoder_block_1_67653:'
encoder_block_1_67655:#
encoder_block_1_67657:'
encoder_block_1_67659:@#
encoder_block_1_67661:@'
encoder_block_1_67663:@#
encoder_block_1_67665:#
encoder_block_1_67667:#
encoder_block_1_67669:
dense_8_67674:@
dense_8_67676:@
dense_9_67680:@
dense_9_67682:
identity??dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?!dropout_6/StatefulPartitionedCall?!dropout_7/StatefulPartitionedCall?'encoder_block_1/StatefulPartitionedCall?-token_and_pos_embed_1/StatefulPartitionedCall?
-token_and_pos_embed_1/StatefulPartitionedCallStatefulPartitionedCallinput_2token_and_pos_embed_1_67630token_and_pos_embed_1_67632*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714?
'encoder_block_1/StatefulPartitionedCallStatefulPartitionedCall6token_and_pos_embed_1/StatefulPartitionedCall:output:0encoder_block_1_67635encoder_block_1_67637encoder_block_1_67639encoder_block_1_67641encoder_block_1_67643encoder_block_1_67645encoder_block_1_67647encoder_block_1_67649encoder_block_1_67651encoder_block_1_67653encoder_block_1_67655encoder_block_1_67657encoder_block_1_67659encoder_block_1_67661encoder_block_1_67663encoder_block_1_67665encoder_block_1_67667encoder_block_1_67669*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_67301?
*global_average_pooling1d_1/PartitionedCallPartitionedCall0encoder_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917?
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_67082?
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_8_67674dense_8_67676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_66937?
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_67049?
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_9_67680dense_9_67682*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_66961w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall(^encoder_block_1/StatefulPartitionedCall.^token_and_pos_embed_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2R
'encoder_block_1/StatefulPartitionedCall'encoder_block_1/StatefulPartitionedCall2^
-token_and_pos_embed_1/StatefulPartitionedCall-token_and_pos_embed_1/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?	
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_68796

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
B__inference_dense_8_layer_call_and_return_conditional_losses_66937

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_6_layer_call_fn_68732

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_67082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
B__inference_model_1_layer_call_and_return_conditional_losses_68264

inputsK
8token_and_pos_embed_1_embedding_3_embedding_lookup_68056:	?L
8token_and_pos_embed_1_embedding_2_embedding_lookup_68062:
??h
Rencoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:Z
Hencoder_block_1_multi_head_attention_1_query_add_readvariableop_resource:f
Pencoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:X
Fencoder_block_1_multi_head_attention_1_key_add_readvariableop_resource:h
Rencoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:Z
Hencoder_block_1_multi_head_attention_1_value_add_readvariableop_resource:s
]encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:a
Sencoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource:Y
Kencoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:U
Gencoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource:X
Fencoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:R
Dencoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource:X
Fencoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource:@R
Dencoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource:@X
Fencoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource:@R
Dencoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource:Y
Kencoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:U
Gencoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:@8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp?Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp?>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp?Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp?Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp?Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp?Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp??encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp?Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp??encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp?Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp?;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp?;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp?2token_and_pos_embed_1/embedding_2/embedding_lookup?2token_and_pos_embed_1/embedding_3/embedding_lookupQ
token_and_pos_embed_1/ShapeShapeinputs*
T0*
_output_shapes
:|
)token_and_pos_embed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????u
+token_and_pos_embed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+token_and_pos_embed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#token_and_pos_embed_1/strided_sliceStridedSlice$token_and_pos_embed_1/Shape:output:02token_and_pos_embed_1/strided_slice/stack:output:04token_and_pos_embed_1/strided_slice/stack_1:output:04token_and_pos_embed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!token_and_pos_embed_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : c
!token_and_pos_embed_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
token_and_pos_embed_1/rangeRange*token_and_pos_embed_1/range/start:output:0,token_and_pos_embed_1/strided_slice:output:0*token_and_pos_embed_1/range/delta:output:0*
_output_shapes	
:??
2token_and_pos_embed_1/embedding_3/embedding_lookupResourceGather8token_and_pos_embed_1_embedding_3_embedding_lookup_68056$token_and_pos_embed_1/range:output:0*
Tindices0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_3/embedding_lookup/68056*
_output_shapes
:	?*
dtype0?
;token_and_pos_embed_1/embedding_3/embedding_lookup/IdentityIdentity;token_and_pos_embed_1/embedding_3/embedding_lookup:output:0*
T0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_3/embedding_lookup/68056*
_output_shapes
:	??
=token_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1IdentityDtoken_and_pos_embed_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?x
&token_and_pos_embed_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:???????????
2token_and_pos_embed_1/embedding_2/embedding_lookupResourceGather8token_and_pos_embed_1_embedding_2_embedding_lookup_68062*token_and_pos_embed_1/embedding_2/Cast:y:0*
Tindices0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_2/embedding_lookup/68062*,
_output_shapes
:??????????*
dtype0?
;token_and_pos_embed_1/embedding_2/embedding_lookup/IdentityIdentity;token_and_pos_embed_1/embedding_2/embedding_lookup:output:0*
T0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_2/embedding_lookup/68062*,
_output_shapes
:???????????
=token_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1IdentityDtoken_and_pos_embed_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:???????????
token_and_pos_embed_1/addAddV2Ftoken_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1:output:0Ftoken_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:???????????
Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpRencoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:encoder_block_1/multi_head_attention_1/query/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Qencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpHencoder_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0encoder_block_1/multi_head_attention_1/query/addAddV2Cencoder_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Gencoder_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpPencoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
8encoder_block_1/multi_head_attention_1/key/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Oencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpFencoder_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
.encoder_block_1/multi_head_attention_1/key/addAddV2Aencoder_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Eencoder_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpRencoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:encoder_block_1/multi_head_attention_1/value/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Qencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpHencoder_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0encoder_block_1/multi_head_attention_1/value/addAddV2Cencoder_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Gencoder_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????q
,encoder_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
*encoder_block_1/multi_head_attention_1/MulMul4encoder_block_1/multi_head_attention_1/query/add:z:05encoder_block_1/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
4encoder_block_1/multi_head_attention_1/einsum/EinsumEinsum2encoder_block_1/multi_head_attention_1/key/add:z:0.encoder_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
6encoder_block_1/multi_head_attention_1/softmax/SoftmaxSoftmax=encoder_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
6encoder_block_1/multi_head_attention_1/einsum_1/EinsumEinsum@encoder_block_1/multi_head_attention_1/softmax/Softmax:softmax:04encoder_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Eencoder_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsum?encoder_block_1/multi_head_attention_1/einsum_1/Einsum:output:0\encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpSencoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
;encoder_block_1/multi_head_attention_1/attention_output/addAddV2Nencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Rencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
'encoder_block_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
%encoder_block_1/dropout_4/dropout/MulMul?encoder_block_1/multi_head_attention_1/attention_output/add:z:00encoder_block_1/dropout_4/dropout/Const:output:0*
T0*,
_output_shapes
:???????????
'encoder_block_1/dropout_4/dropout/ShapeShape?encoder_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
>encoder_block_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniform0encoder_block_1/dropout_4/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0u
0encoder_block_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
.encoder_block_1/dropout_4/dropout/GreaterEqualGreaterEqualGencoder_block_1/dropout_4/dropout/random_uniform/RandomUniform:output:09encoder_block_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
&encoder_block_1/dropout_4/dropout/CastCast2encoder_block_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
'encoder_block_1/dropout_4/dropout/Mul_1Mul)encoder_block_1/dropout_4/dropout/Mul:z:0*encoder_block_1/dropout_4/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
encoder_block_1/addAddV2token_and_pos_embed_1/add:z:0+encoder_block_1/dropout_4/dropout/Mul_1:z:0*
T0*,
_output_shapes
:???????????
Dencoder_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2encoder_block_1/layer_normalization_2/moments/meanMeanencoder_block_1/add:z:0Mencoder_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
:encoder_block_1/layer_normalization_2/moments/StopGradientStopGradient;encoder_block_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
?encoder_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceencoder_block_1/add:z:0Cencoder_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Hencoder_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6encoder_block_1/layer_normalization_2/moments/varianceMeanCencoder_block_1/layer_normalization_2/moments/SquaredDifference:z:0Qencoder_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(z
5encoder_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3encoder_block_1/layer_normalization_2/batchnorm/addAddV2?encoder_block_1/layer_normalization_2/moments/variance:output:0>encoder_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt7encoder_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpKencoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_2/batchnorm/mulMul9encoder_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Jencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/mul_1Mulencoder_block_1/add:z:07encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/mul_2Mul;encoder_block_1/layer_normalization_2/moments/mean:output:07encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpGencoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_2/batchnorm/subSubFencoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:09encoder_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/add_1AddV29encoder_block_1/layer_normalization_2/batchnorm/mul_1:z:07encoder_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0}
3encoder_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_5/Tensordot/ShapeShape9encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_5/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_5/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_5/Tensordot/stackPack<encoder_block_1/sequential_1/dense_5/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_5/Tensordot/transpose	Transpose9encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0>encoder_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
6encoder_block_1/sequential_1/dense_5/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_5/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_5/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6encoder_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:~
<encoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_5/TensordotReshape?encoder_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,encoder_block_1/sequential_1/dense_5/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_5/Tensordot:output:0Cencoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
)encoder_block_1/sequential_1/dense_5/ReluRelu5encoder_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0}
3encoder_block_1/sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_6/Tensordot/ShapeShape7encoder_block_1/sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_6/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_6/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_6/Tensordot/stackPack<encoder_block_1/sequential_1/dense_6/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_6/Tensordot/transpose	Transpose7encoder_block_1/sequential_1/dense_5/Relu:activations:0>encoder_block_1/sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
6encoder_block_1/sequential_1/dense_6/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_6/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_6/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_6/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
6encoder_block_1/sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<encoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_6/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_6/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_6/TensordotReshape?encoder_block_1/sequential_1/dense_6/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
,encoder_block_1/sequential_1/dense_6/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_6/Tensordot:output:0Cencoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@?
)encoder_block_1/sequential_1/dense_6/ReluRelu5encoder_block_1/sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0}
3encoder_block_1/sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_7/Tensordot/ShapeShape7encoder_block_1/sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_7/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_7/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_7/Tensordot/stackPack<encoder_block_1/sequential_1/dense_7/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_7/Tensordot/transpose	Transpose7encoder_block_1/sequential_1/dense_6/Relu:activations:0>encoder_block_1/sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
6encoder_block_1/sequential_1/dense_7/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_7/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_7/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_7/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6encoder_block_1/sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:~
<encoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_7/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_7/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_7/TensordotReshape?encoder_block_1/sequential_1/dense_7/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,encoder_block_1/sequential_1/dense_7/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_7/Tensordot:output:0Cencoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
'encoder_block_1/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
%encoder_block_1/dropout_5/dropout/MulMul5encoder_block_1/sequential_1/dense_7/BiasAdd:output:00encoder_block_1/dropout_5/dropout/Const:output:0*
T0*,
_output_shapes
:???????????
'encoder_block_1/dropout_5/dropout/ShapeShape5encoder_block_1/sequential_1/dense_7/BiasAdd:output:0*
T0*
_output_shapes
:?
>encoder_block_1/dropout_5/dropout/random_uniform/RandomUniformRandomUniform0encoder_block_1/dropout_5/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0u
0encoder_block_1/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
.encoder_block_1/dropout_5/dropout/GreaterEqualGreaterEqualGencoder_block_1/dropout_5/dropout/random_uniform/RandomUniform:output:09encoder_block_1/dropout_5/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
&encoder_block_1/dropout_5/dropout/CastCast2encoder_block_1/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
'encoder_block_1/dropout_5/dropout/Mul_1Mul)encoder_block_1/dropout_5/dropout/Mul:z:0*encoder_block_1/dropout_5/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
encoder_block_1/add_1AddV29encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0+encoder_block_1/dropout_5/dropout/Mul_1:z:0*
T0*,
_output_shapes
:???????????
Dencoder_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2encoder_block_1/layer_normalization_3/moments/meanMeanencoder_block_1/add_1:z:0Mencoder_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
:encoder_block_1/layer_normalization_3/moments/StopGradientStopGradient;encoder_block_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
?encoder_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceencoder_block_1/add_1:z:0Cencoder_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Hencoder_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6encoder_block_1/layer_normalization_3/moments/varianceMeanCencoder_block_1/layer_normalization_3/moments/SquaredDifference:z:0Qencoder_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(z
5encoder_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3encoder_block_1/layer_normalization_3/batchnorm/addAddV2?encoder_block_1/layer_normalization_3/moments/variance:output:0>encoder_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt7encoder_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpKencoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_3/batchnorm/mulMul9encoder_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Jencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/mul_1Mulencoder_block_1/add_1:z:07encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/mul_2Mul;encoder_block_1/layer_normalization_3/moments/mean:output:07encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpGencoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_3/batchnorm/subSubFencoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:09encoder_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/add_1AddV29encoder_block_1/layer_normalization_3/batchnorm/mul_1:z:07encoder_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean9encoder_block_1/layer_normalization_3/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_6/dropout/MulMul(global_average_pooling1d_1/Mean:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:?????????o
dropout_6/dropout/ShapeShape(global_average_pooling1d_1/Mean:output:0*
T0*
_output_shapes
:?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_8/MatMulMatMuldropout_6/dropout/Mul_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_7/dropout/MulMuldense_8/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@a
dropout_7/dropout/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_9/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp?^encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpC^encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp?^encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpC^encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpK^encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpU^encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp>^encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpH^encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp@^encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpJ^encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp@^encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpJ^encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp<^encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp<^encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp<^encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp3^token_and_pos_embed_1/embedding_2/embedding_lookup3^token_and_pos_embed_1/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2?
>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp2?
Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpBencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp2?
Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpBencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2?
Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpJencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2?
Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpTencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2~
=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp2?
Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpGencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp2?
Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpIencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp2?
Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpIencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp2h
2token_and_pos_embed_1/embedding_2/embedding_lookup2token_and_pos_embed_1/embedding_2/embedding_lookup2h
2token_and_pos_embed_1/embedding_3/embedding_lookup2token_and_pos_embed_1/embedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_66714
x5
"embedding_3_embedding_lookup_66701:	?6
"embedding_2_embedding_lookup_66707:
??
identity??embedding_2/embedding_lookup?embedding_3/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :o
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes	
:??
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_66701range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/66701*
_output_shapes
:	?*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/66701*
_output_shapes
:	??
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?]
embedding_2/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_66707embedding_2/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/66707*,
_output_shapes
:??????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/66707*,
_output_shapes
:???????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:???????????
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:K G
(
_output_shapes
:??????????

_user_specified_namex
?
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :g
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????U
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_dense_9_layer_call_and_return_conditional_losses_66961

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
B__inference_model_1_layer_call_and_return_conditional_losses_68045

inputsK
8token_and_pos_embed_1_embedding_3_embedding_lookup_67864:	?L
8token_and_pos_embed_1_embedding_2_embedding_lookup_67870:
??h
Rencoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:Z
Hencoder_block_1_multi_head_attention_1_query_add_readvariableop_resource:f
Pencoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:X
Fencoder_block_1_multi_head_attention_1_key_add_readvariableop_resource:h
Rencoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:Z
Hencoder_block_1_multi_head_attention_1_value_add_readvariableop_resource:s
]encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:a
Sencoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource:Y
Kencoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:U
Gencoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource:X
Fencoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:R
Dencoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource:X
Fencoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource:@R
Dencoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource:@X
Fencoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource:@R
Dencoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource:Y
Kencoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:U
Gencoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:@8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp?Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp?>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp?Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp?Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp?Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp?Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp??encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp?Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp??encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp?Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp?;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp?;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp?=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp?2token_and_pos_embed_1/embedding_2/embedding_lookup?2token_and_pos_embed_1/embedding_3/embedding_lookupQ
token_and_pos_embed_1/ShapeShapeinputs*
T0*
_output_shapes
:|
)token_and_pos_embed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????u
+token_and_pos_embed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+token_and_pos_embed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#token_and_pos_embed_1/strided_sliceStridedSlice$token_and_pos_embed_1/Shape:output:02token_and_pos_embed_1/strided_slice/stack:output:04token_and_pos_embed_1/strided_slice/stack_1:output:04token_and_pos_embed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!token_and_pos_embed_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : c
!token_and_pos_embed_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
token_and_pos_embed_1/rangeRange*token_and_pos_embed_1/range/start:output:0,token_and_pos_embed_1/strided_slice:output:0*token_and_pos_embed_1/range/delta:output:0*
_output_shapes	
:??
2token_and_pos_embed_1/embedding_3/embedding_lookupResourceGather8token_and_pos_embed_1_embedding_3_embedding_lookup_67864$token_and_pos_embed_1/range:output:0*
Tindices0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_3/embedding_lookup/67864*
_output_shapes
:	?*
dtype0?
;token_and_pos_embed_1/embedding_3/embedding_lookup/IdentityIdentity;token_and_pos_embed_1/embedding_3/embedding_lookup:output:0*
T0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_3/embedding_lookup/67864*
_output_shapes
:	??
=token_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1IdentityDtoken_and_pos_embed_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?x
&token_and_pos_embed_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:???????????
2token_and_pos_embed_1/embedding_2/embedding_lookupResourceGather8token_and_pos_embed_1_embedding_2_embedding_lookup_67870*token_and_pos_embed_1/embedding_2/Cast:y:0*
Tindices0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_2/embedding_lookup/67870*,
_output_shapes
:??????????*
dtype0?
;token_and_pos_embed_1/embedding_2/embedding_lookup/IdentityIdentity;token_and_pos_embed_1/embedding_2/embedding_lookup:output:0*
T0*K
_classA
?=loc:@token_and_pos_embed_1/embedding_2/embedding_lookup/67870*,
_output_shapes
:???????????
=token_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1IdentityDtoken_and_pos_embed_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:???????????
token_and_pos_embed_1/addAddV2Ftoken_and_pos_embed_1/embedding_2/embedding_lookup/Identity_1:output:0Ftoken_and_pos_embed_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:???????????
Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpRencoder_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:encoder_block_1/multi_head_attention_1/query/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Qencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpHencoder_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0encoder_block_1/multi_head_attention_1/query/addAddV2Cencoder_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Gencoder_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpPencoder_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
8encoder_block_1/multi_head_attention_1/key/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Oencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpFencoder_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
.encoder_block_1/multi_head_attention_1/key/addAddV2Aencoder_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Eencoder_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpRencoder_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
:encoder_block_1/multi_head_attention_1/value/einsum/EinsumEinsumtoken_and_pos_embed_1/add:z:0Qencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpHencoder_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
0encoder_block_1/multi_head_attention_1/value/addAddV2Cencoder_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Gencoder_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????q
,encoder_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
*encoder_block_1/multi_head_attention_1/MulMul4encoder_block_1/multi_head_attention_1/query/add:z:05encoder_block_1/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
4encoder_block_1/multi_head_attention_1/einsum/EinsumEinsum2encoder_block_1/multi_head_attention_1/key/add:z:0.encoder_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
6encoder_block_1/multi_head_attention_1/softmax/SoftmaxSoftmax=encoder_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
7encoder_block_1/multi_head_attention_1/dropout/IdentityIdentity@encoder_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:????????????
6encoder_block_1/multi_head_attention_1/einsum_1/EinsumEinsum@encoder_block_1/multi_head_attention_1/dropout/Identity:output:04encoder_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]encoder_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
Eencoder_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsum?encoder_block_1/multi_head_attention_1/einsum_1/Einsum:output:0\encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpSencoder_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
;encoder_block_1/multi_head_attention_1/attention_output/addAddV2Nencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Rencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
"encoder_block_1/dropout_4/IdentityIdentity?encoder_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:???????????
encoder_block_1/addAddV2token_and_pos_embed_1/add:z:0+encoder_block_1/dropout_4/Identity:output:0*
T0*,
_output_shapes
:???????????
Dencoder_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2encoder_block_1/layer_normalization_2/moments/meanMeanencoder_block_1/add:z:0Mencoder_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
:encoder_block_1/layer_normalization_2/moments/StopGradientStopGradient;encoder_block_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
?encoder_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceencoder_block_1/add:z:0Cencoder_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Hencoder_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6encoder_block_1/layer_normalization_2/moments/varianceMeanCencoder_block_1/layer_normalization_2/moments/SquaredDifference:z:0Qencoder_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(z
5encoder_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3encoder_block_1/layer_normalization_2/batchnorm/addAddV2?encoder_block_1/layer_normalization_2/moments/variance:output:0>encoder_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt7encoder_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpKencoder_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_2/batchnorm/mulMul9encoder_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Jencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/mul_1Mulencoder_block_1/add:z:07encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/mul_2Mul;encoder_block_1/layer_normalization_2/moments/mean:output:07encoder_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpGencoder_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_2/batchnorm/subSubFencoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:09encoder_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_2/batchnorm/add_1AddV29encoder_block_1/layer_normalization_2/batchnorm/mul_1:z:07encoder_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0}
3encoder_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_5/Tensordot/ShapeShape9encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_5/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_5/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_5/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_5/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_5/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_5/Tensordot/stackPack<encoder_block_1/sequential_1/dense_5/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_5/Tensordot/transpose	Transpose9encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0>encoder_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
6encoder_block_1/sequential_1/dense_5/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_5/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_5/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6encoder_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:~
<encoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_5/TensordotReshape?encoder_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,encoder_block_1/sequential_1/dense_5/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_5/Tensordot:output:0Cencoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
)encoder_block_1/sequential_1/dense_5/ReluRelu5encoder_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0}
3encoder_block_1/sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_6/Tensordot/ShapeShape7encoder_block_1/sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_6/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_6/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_6/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_6/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_6/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_6/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_6/Tensordot/stackPack<encoder_block_1/sequential_1/dense_6/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_6/Tensordot/transpose	Transpose7encoder_block_1/sequential_1/dense_5/Relu:activations:0>encoder_block_1/sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
6encoder_block_1/sequential_1/dense_6/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_6/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_6/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_6/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
6encoder_block_1/sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<encoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_6/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_6/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_6/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_6/TensordotReshape?encoder_block_1/sequential_1/dense_6/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
,encoder_block_1/sequential_1/dense_6/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_6/Tensordot:output:0Cencoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@?
)encoder_block_1/sequential_1/dense_6/ReluRelu5encoder_block_1/sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOpFencoder_block_1_sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0}
3encoder_block_1/sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
3encoder_block_1/sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
4encoder_block_1/sequential_1/dense_7/Tensordot/ShapeShape7encoder_block_1/sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:~
<encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2GatherV2=encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
>encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
9encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1GatherV2=encoder_block_1/sequential_1/dense_7/Tensordot/Shape:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Gencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4encoder_block_1/sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3encoder_block_1/sequential_1/dense_7/Tensordot/ProdProd@encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0=encoder_block_1/sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
6encoder_block_1/sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
5encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1ProdBencoder_block_1/sequential_1/dense_7/Tensordot/GatherV2_1:output:0?encoder_block_1/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:encoder_block_1/sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
5encoder_block_1/sequential_1/dense_7/Tensordot/concatConcatV2<encoder_block_1/sequential_1/dense_7/Tensordot/free:output:0<encoder_block_1/sequential_1/dense_7/Tensordot/axes:output:0Cencoder_block_1/sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
4encoder_block_1/sequential_1/dense_7/Tensordot/stackPack<encoder_block_1/sequential_1/dense_7/Tensordot/Prod:output:0>encoder_block_1/sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
8encoder_block_1/sequential_1/dense_7/Tensordot/transpose	Transpose7encoder_block_1/sequential_1/dense_6/Relu:activations:0>encoder_block_1/sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
6encoder_block_1/sequential_1/dense_7/Tensordot/ReshapeReshape<encoder_block_1/sequential_1/dense_7/Tensordot/transpose:y:0=encoder_block_1/sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
5encoder_block_1/sequential_1/dense_7/Tensordot/MatMulMatMul?encoder_block_1/sequential_1/dense_7/Tensordot/Reshape:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6encoder_block_1/sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:~
<encoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
7encoder_block_1/sequential_1/dense_7/Tensordot/concat_1ConcatV2@encoder_block_1/sequential_1/dense_7/Tensordot/GatherV2:output:0?encoder_block_1/sequential_1/dense_7/Tensordot/Const_2:output:0Eencoder_block_1/sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
.encoder_block_1/sequential_1/dense_7/TensordotReshape?encoder_block_1/sequential_1/dense_7/Tensordot/MatMul:product:0@encoder_block_1/sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOpDencoder_block_1_sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
,encoder_block_1/sequential_1/dense_7/BiasAddBiasAdd7encoder_block_1/sequential_1/dense_7/Tensordot:output:0Cencoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
"encoder_block_1/dropout_5/IdentityIdentity5encoder_block_1/sequential_1/dense_7/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
encoder_block_1/add_1AddV29encoder_block_1/layer_normalization_2/batchnorm/add_1:z:0+encoder_block_1/dropout_5/Identity:output:0*
T0*,
_output_shapes
:???????????
Dencoder_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
2encoder_block_1/layer_normalization_3/moments/meanMeanencoder_block_1/add_1:z:0Mencoder_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
:encoder_block_1/layer_normalization_3/moments/StopGradientStopGradient;encoder_block_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
?encoder_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceencoder_block_1/add_1:z:0Cencoder_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Hencoder_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
6encoder_block_1/layer_normalization_3/moments/varianceMeanCencoder_block_1/layer_normalization_3/moments/SquaredDifference:z:0Qencoder_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(z
5encoder_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
3encoder_block_1/layer_normalization_3/batchnorm/addAddV2?encoder_block_1/layer_normalization_3/moments/variance:output:0>encoder_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt7encoder_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpKencoder_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_3/batchnorm/mulMul9encoder_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Jencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/mul_1Mulencoder_block_1/add_1:z:07encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/mul_2Mul;encoder_block_1/layer_normalization_3/moments/mean:output:07encoder_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpGencoder_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
3encoder_block_1/layer_normalization_3/batchnorm/subSubFencoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:09encoder_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
5encoder_block_1/layer_normalization_3/batchnorm/add_1AddV29encoder_block_1/layer_normalization_3/batchnorm/mul_1:z:07encoder_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d_1/MeanMean9encoder_block_1/layer_normalization_3/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????z
dropout_6/IdentityIdentity(global_average_pooling1d_1/Mean:output:0*
T0*'
_output_shapes
:??????????
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_8/MatMulMatMuldropout_6/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@l
dropout_7/IdentityIdentitydense_8/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_9/MatMulMatMuldropout_7/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp?^encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOpC^encoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp?^encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOpC^encoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpK^encoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpU^encoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp>^encoder_block_1/multi_head_attention_1/key/add/ReadVariableOpH^encoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp@^encoder_block_1/multi_head_attention_1/query/add/ReadVariableOpJ^encoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp@^encoder_block_1/multi_head_attention_1/value/add/ReadVariableOpJ^encoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp<^encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp<^encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp<^encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp>^encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp3^token_and_pos_embed_1/embedding_2/embedding_lookup3^token_and_pos_embed_1/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2?
>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp>encoder_block_1/layer_normalization_2/batchnorm/ReadVariableOp2?
Bencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpBencoder_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2?
>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp>encoder_block_1/layer_normalization_3/batchnorm/ReadVariableOp2?
Bencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpBencoder_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2?
Jencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpJencoder_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2?
Tencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpTencoder_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2~
=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp=encoder_block_1/multi_head_attention_1/key/add/ReadVariableOp2?
Gencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpGencoder_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp?encoder_block_1/multi_head_attention_1/query/add/ReadVariableOp2?
Iencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpIencoder_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp?encoder_block_1/multi_head_attention_1/value/add/ReadVariableOp2?
Iencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpIencoder_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_6/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_6/Tensordot/ReadVariableOp2z
;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp;encoder_block_1/sequential_1/dense_7/BiasAdd/ReadVariableOp2~
=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp=encoder_block_1/sequential_1/dense_7/Tensordot/ReadVariableOp2h
2token_and_pos_embed_1/embedding_2/embedding_lookup2token_and_pos_embed_1/embedding_2/embedding_lookup2h
2token_and_pos_embed_1/embedding_3/embedding_lookup2token_and_pos_embed_1/embedding_3/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
,__inference_sequential_1_layer_call_fn_68850

inputs
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_66600t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_66948

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_1_layer_call_fn_68710

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_66917`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_6_layer_call_fn_68727

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_66924`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_7_layer_call_fn_69107

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_66510t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
B__inference_dense_6_layer_call_and_return_conditional_losses_66474

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_66600

inputs
dense_5_66584:
dense_5_66586:
dense_6_66589:@
dense_6_66591:@
dense_7_66594:@
dense_7_66596:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_66584dense_5_66586*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_66437?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_66589dense_6_66591*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_66474?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_66594dense_7_66596*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_66510|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_7_layer_call_fn_68774

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_66948`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_67301

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_query_add_readvariableop_resource:V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_1_key_add_readvariableop_resource:X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_1_value_add_readvariableop_resource:c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:E
7layer_normalization_2_batchnorm_readvariableop_resource:H
6sequential_1_dense_5_tensordot_readvariableop_resource:B
4sequential_1_dense_5_biasadd_readvariableop_resource:H
6sequential_1_dense_6_tensordot_readvariableop_resource:@B
4sequential_1_dense_6_biasadd_readvariableop_resource:@H
6sequential_1_dense_7_tensordot_readvariableop_resource:@B
4sequential_1_dense_7_biasadd_readvariableop_resource:I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:E
7layer_normalization_3_batchnorm_readvariableop_resource:
identity??.layer_normalization_2/batchnorm/ReadVariableOp?2layer_normalization_2/batchnorm/mul/ReadVariableOp?.layer_normalization_3/batchnorm/ReadVariableOp?2layer_normalization_3/batchnorm/mul/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?-sequential_1/dense_5/Tensordot/ReadVariableOp?+sequential_1/dense_6/BiasAdd/ReadVariableOp?-sequential_1/dense_6/Tensordot/ReadVariableOp?+sequential_1/dense_7/BiasAdd/ReadVariableOp?-sequential_1/dense_7/Tensordot/ReadVariableOp?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:???????????*
equationaecd,abcd->acbe?
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:????????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_4/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*,
_output_shapes
:??????????v
dropout_4/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????h
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_5/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_5/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_6/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_6/Tensordot/ShapeShape'sequential_1/dense_5/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/GatherV2GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/free:output:05sequential_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_6/Tensordot/GatherV2_1GatherV2-sequential_1/dense_6/Tensordot/Shape:output:0,sequential_1/dense_6/Tensordot/axes:output:07sequential_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_6/Tensordot/ProdProd0sequential_1/dense_6/Tensordot/GatherV2:output:0-sequential_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_6/Tensordot/Prod_1Prod2sequential_1/dense_6/Tensordot/GatherV2_1:output:0/sequential_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_6/Tensordot/concatConcatV2,sequential_1/dense_6/Tensordot/free:output:0,sequential_1/dense_6/Tensordot/axes:output:03sequential_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_6/Tensordot/stackPack,sequential_1/dense_6/Tensordot/Prod:output:0.sequential_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_6/Tensordot/transpose	Transpose'sequential_1/dense_5/Relu:activations:0.sequential_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_6/Tensordot/ReshapeReshape,sequential_1/dense_6/Tensordot/transpose:y:0-sequential_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_6/Tensordot/MatMulMatMul/sequential_1/dense_6/Tensordot/Reshape:output:05sequential_1/dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
&sequential_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,sequential_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_6/Tensordot/concat_1ConcatV20sequential_1/dense_6/Tensordot/GatherV2:output:0/sequential_1/dense_6/Tensordot/Const_2:output:05sequential_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_6/TensordotReshape/sequential_1/dense_6/Tensordot/MatMul:product:00sequential_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_1/dense_6/BiasAddBiasAdd'sequential_1/dense_6/Tensordot:output:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
-sequential_1/dense_7/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#sequential_1/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_7/Tensordot/ShapeShape'sequential_1/dense_6/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/GatherV2GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/free:output:05sequential_1/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_7/Tensordot/GatherV2_1GatherV2-sequential_1/dense_7/Tensordot/Shape:output:0,sequential_1/dense_7/Tensordot/axes:output:07sequential_1/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_7/Tensordot/ProdProd0sequential_1/dense_7/Tensordot/GatherV2:output:0-sequential_1/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_7/Tensordot/Prod_1Prod2sequential_1/dense_7/Tensordot/GatherV2_1:output:0/sequential_1/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_7/Tensordot/concatConcatV2,sequential_1/dense_7/Tensordot/free:output:0,sequential_1/dense_7/Tensordot/axes:output:03sequential_1/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_7/Tensordot/stackPack,sequential_1/dense_7/Tensordot/Prod:output:0.sequential_1/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_7/Tensordot/transpose	Transpose'sequential_1/dense_6/Relu:activations:0.sequential_1/dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
&sequential_1/dense_7/Tensordot/ReshapeReshape,sequential_1/dense_7/Tensordot/transpose:y:0-sequential_1/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_7/Tensordot/MatMulMatMul/sequential_1/dense_7/Tensordot/Reshape:output:05sequential_1/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_7/Tensordot/concat_1ConcatV20sequential_1/dense_7/Tensordot/GatherV2:output:0/sequential_1/dense_7/Tensordot/Const_2:output:05sequential_1/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_7/TensordotReshape/sequential_1/dense_7/Tensordot/MatMul:product:00sequential_1/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_7/BiasAddBiasAdd'sequential_1/dense_7/Tensordot:output:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_5/dropout/MulMul%sequential_1/dense_7/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*,
_output_shapes
:??????????l
dropout_5/dropout/ShapeShape%sequential_1/dense_7/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*,
_output_shapes
:???????????
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?5?
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????}
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp.^sequential_1/dense_6/Tensordot/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp.^sequential_1/dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2^
-sequential_1/dense_6/Tensordot/ReadVariableOp-sequential_1/dense_6/Tensordot/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2^
-sequential_1/dense_7/Tensordot/ReadVariableOp-sequential_1/dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_encoder_block_1_layer_call_fn_68379

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:

unknown_15:

unknown_16:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_67301t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:??????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
,__inference_sequential_1_layer_call_fn_68833

inputs
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_66517t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_dense_5_layer_call_and_return_conditional_losses_69058

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_1_layer_call_fn_67568
input_2
unknown:	?
	unknown_0:
??
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:

unknown_17:

unknown_18:

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:??????????: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_2
?
?
'__inference_dense_6_layer_call_fn_69067

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_66474t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_66924

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_5_layer_call_and_return_conditional_losses_66437

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_66651
dense_5_input
dense_5_66635:
dense_5_66637:
dense_6_66640:@
dense_6_66642:@
dense_7_66645:@
dense_7_66647:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCalldense_5_inputdense_5_66635dense_5_66637*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_66437?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_66640dense_6_66642*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_66474?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_66645dense_7_66647*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_66510|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_5_input
?

?
B__inference_dense_9_layer_call_and_return_conditional_losses_68816

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
B__inference_dense_7_layer_call_and_return_conditional_losses_69137

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?\
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_68934

inputs;
)dense_5_tensordot_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:;
)dense_6_tensordot_readvariableop_resource:@5
'dense_6_biasadd_readvariableop_resource:@;
)dense_7_tensordot_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity??dense_5/BiasAdd/ReadVariableOp? dense_5/Tensordot/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp? dense_6/Tensordot/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp? dense_7/Tensordot/ReadVariableOp?
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_5/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_5/Tensordot/transpose	Transposeinputs!dense_5/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????e
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_6/Tensordot/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_6/Tensordot/transpose	Transposedense_5/Relu:activations:0!dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@c
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????@?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????@e
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*,
_output_shapes
:??????????@?
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_7/Tensordot/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_7/Tensordot/transpose	Transposedense_6/Relu:activations:0!dense_7/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????@?
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68716

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_21
serving_default_input_2:0??????????;
dense_90
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?
	token_emb
pos_emb
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	attention
ffnn
	norm1
	norm2
	drop1
	drop2
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?"
	optimizer
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
'20
(21
122
223"
trackable_list_wrapper
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
'20
(21
122
223"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics

	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
<
embeddings
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=
embeddings
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
b_query_dense
c
_key_dense
d_value_dense
e_softmax
f_dropout_layer
g_output_dense
h	variables
itrainable_variables
jregularization_losses
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
llayer_with_weights-0
llayer-0
mlayer_with_weights-1
mlayer-1
nlayer_with_weights-2
nlayer-2
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
saxis
	Lgamma
Mbeta
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
xaxis
	Ngamma
Obeta
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17"
trackable_list_wrapper
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
N16
O17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_8/kernel
:@2dense_8/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_9/kernel
:2dense_9/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
@:>
??2,token_and_pos_embed_1/embedding_2/embeddings
?:=	?2,token_and_pos_embed_1/embedding_3/embeddings
I:G23encoder_block_1/multi_head_attention_1/query/kernel
C:A21encoder_block_1/multi_head_attention_1/query/bias
G:E21encoder_block_1/multi_head_attention_1/key/kernel
A:?2/encoder_block_1/multi_head_attention_1/key/bias
I:G23encoder_block_1/multi_head_attention_1/value/kernel
C:A21encoder_block_1/multi_head_attention_1/value/bias
T:R2>encoder_block_1/multi_head_attention_1/attention_output/kernel
J:H2<encoder_block_1/multi_head_attention_1/attention_output/bias
 :2dense_5/kernel
:2dense_5/bias
 :@2dense_6/kernel
:@2dense_6/bias
 :@2dense_7/kernel
:2dense_7/bias
9:72+encoder_block_1/layer_normalization_2/gamma
8:62*encoder_block_1/layer_normalization_2/beta
9:72+encoder_block_1/layer_normalization_3/gamma
8:62*encoder_block_1/layer_normalization_3/beta
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
h	variables
itrainable_variables
jregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Hkernel
Ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Jkernel
Kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
F0
G1
H2
I3
J4
K5"
trackable_list_wrapper
J
F0
G1
H2
I3
J4
K5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
}	variables
~trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
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
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
b0
c1
d2
e3
f4
g5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
l0
m1
n2"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
%:#@2Adam/dense_8/kernel/m
:@2Adam/dense_8/bias/m
%:#@2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
E:C
??23Adam/token_and_pos_embed_1/embedding_2/embeddings/m
D:B	?23Adam/token_and_pos_embed_1/embedding_3/embeddings/m
N:L2:Adam/encoder_block_1/multi_head_attention_1/query/kernel/m
H:F28Adam/encoder_block_1/multi_head_attention_1/query/bias/m
L:J28Adam/encoder_block_1/multi_head_attention_1/key/kernel/m
F:D26Adam/encoder_block_1/multi_head_attention_1/key/bias/m
N:L2:Adam/encoder_block_1/multi_head_attention_1/value/kernel/m
H:F28Adam/encoder_block_1/multi_head_attention_1/value/bias/m
Y:W2EAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/m
O:M2CAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/m
%:#2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
%:#@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
>:<22Adam/encoder_block_1/layer_normalization_2/gamma/m
=:;21Adam/encoder_block_1/layer_normalization_2/beta/m
>:<22Adam/encoder_block_1/layer_normalization_3/gamma/m
=:;21Adam/encoder_block_1/layer_normalization_3/beta/m
%:#@2Adam/dense_8/kernel/v
:@2Adam/dense_8/bias/v
%:#@2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
E:C
??23Adam/token_and_pos_embed_1/embedding_2/embeddings/v
D:B	?23Adam/token_and_pos_embed_1/embedding_3/embeddings/v
N:L2:Adam/encoder_block_1/multi_head_attention_1/query/kernel/v
H:F28Adam/encoder_block_1/multi_head_attention_1/query/bias/v
L:J28Adam/encoder_block_1/multi_head_attention_1/key/kernel/v
F:D26Adam/encoder_block_1/multi_head_attention_1/key/bias/v
N:L2:Adam/encoder_block_1/multi_head_attention_1/value/kernel/v
H:F28Adam/encoder_block_1/multi_head_attention_1/value/bias/v
Y:W2EAdam/encoder_block_1/multi_head_attention_1/attention_output/kernel/v
O:M2CAdam/encoder_block_1/multi_head_attention_1/attention_output/bias/v
%:#2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
%:#@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
>:<22Adam/encoder_block_1/layer_normalization_2/gamma/v
=:;21Adam/encoder_block_1/layer_normalization_2/beta/v
>:<22Adam/encoder_block_1/layer_normalization_3/gamma/v
=:;21Adam/encoder_block_1/layer_normalization_3/beta/v
?2?
'__inference_model_1_layer_call_fn_67019
'__inference_model_1_layer_call_fn_67800
'__inference_model_1_layer_call_fn_67853
'__inference_model_1_layer_call_fn_67568?
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
B__inference_model_1_layer_call_and_return_conditional_losses_68045
B__inference_model_1_layer_call_and_return_conditional_losses_68264
B__inference_model_1_layer_call_and_return_conditional_losses_67627
B__inference_model_1_layer_call_and_return_conditional_losses_67686?
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
 __inference__wrapped_model_66399input_2"?
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
5__inference_token_and_pos_embed_1_layer_call_fn_68273?
???
FullArgSpec
args?
jself
jx
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
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_68297?
???
FullArgSpec
args?
jself
jx
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
?2?
/__inference_encoder_block_1_layer_call_fn_68338
/__inference_encoder_block_1_layer_call_fn_68379?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68533
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68700?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_global_average_pooling1d_1_layer_call_fn_68705
:__inference_global_average_pooling1d_1_layer_call_fn_68710?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68716
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68722?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_6_layer_call_fn_68727
)__inference_dropout_6_layer_call_fn_68732?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_6_layer_call_and_return_conditional_losses_68737
D__inference_dropout_6_layer_call_and_return_conditional_losses_68749?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_8_layer_call_fn_68758?
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
B__inference_dense_8_layer_call_and_return_conditional_losses_68769?
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
?2?
)__inference_dropout_7_layer_call_fn_68774
)__inference_dropout_7_layer_call_fn_68779?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_7_layer_call_and_return_conditional_losses_68784
D__inference_dropout_7_layer_call_and_return_conditional_losses_68796?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_9_layer_call_fn_68805?
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
B__inference_dense_9_layer_call_and_return_conditional_losses_68816?
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
#__inference_signature_wrapper_67747input_2"?
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
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_1_layer_call_fn_66532
,__inference_sequential_1_layer_call_fn_68833
,__inference_sequential_1_layer_call_fn_68850
,__inference_sequential_1_layer_call_fn_66632?
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
G__inference_sequential_1_layer_call_and_return_conditional_losses_68934
G__inference_sequential_1_layer_call_and_return_conditional_losses_69018
G__inference_sequential_1_layer_call_and_return_conditional_losses_66651
G__inference_sequential_1_layer_call_and_return_conditional_losses_66670?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
'__inference_dense_5_layer_call_fn_69027?
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
B__inference_dense_5_layer_call_and_return_conditional_losses_69058?
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
'__inference_dense_6_layer_call_fn_69067?
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
B__inference_dense_6_layer_call_and_return_conditional_losses_69098?
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
'__inference_dense_7_layer_call_fn_69107?
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
B__inference_dense_7_layer_call_and_return_conditional_losses_69137?
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
 ?
 __inference__wrapped_model_66399?=<>?@ABCDELMFGHIJKNO'(121?.
'?$
"?
input_2??????????
? "1?.
,
dense_9!?
dense_9??????????
B__inference_dense_5_layer_call_and_return_conditional_losses_69058fFG4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
'__inference_dense_5_layer_call_fn_69027YFG4?1
*?'
%?"
inputs??????????
? "????????????
B__inference_dense_6_layer_call_and_return_conditional_losses_69098fHI4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????@
? ?
'__inference_dense_6_layer_call_fn_69067YHI4?1
*?'
%?"
inputs??????????
? "???????????@?
B__inference_dense_7_layer_call_and_return_conditional_losses_69137fJK4?1
*?'
%?"
inputs??????????@
? "*?'
 ?
0??????????
? ?
'__inference_dense_7_layer_call_fn_69107YJK4?1
*?'
%?"
inputs??????????@
? "????????????
B__inference_dense_8_layer_call_and_return_conditional_losses_68769\'(/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????@
? z
'__inference_dense_8_layer_call_fn_68758O'(/?,
%?"
 ?
inputs?????????
? "??????????@?
B__inference_dense_9_layer_call_and_return_conditional_losses_68816\12/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? z
'__inference_dense_9_layer_call_fn_68805O12/?,
%?"
 ?
inputs?????????@
? "???????????
D__inference_dropout_6_layer_call_and_return_conditional_losses_68737\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
D__inference_dropout_6_layer_call_and_return_conditional_losses_68749\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? |
)__inference_dropout_6_layer_call_fn_68727O3?0
)?&
 ?
inputs?????????
p 
? "??????????|
)__inference_dropout_6_layer_call_fn_68732O3?0
)?&
 ?
inputs?????????
p
? "???????????
D__inference_dropout_7_layer_call_and_return_conditional_losses_68784\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
D__inference_dropout_7_layer_call_and_return_conditional_losses_68796\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? |
)__inference_dropout_7_layer_call_fn_68774O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@|
)__inference_dropout_7_layer_call_fn_68779O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68533z>?@ABCDELMFGHIJKNO8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
J__inference_encoder_block_1_layer_call_and_return_conditional_losses_68700z>?@ABCDELMFGHIJKNO8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
/__inference_encoder_block_1_layer_call_fn_68338m>?@ABCDELMFGHIJKNO8?5
.?+
%?"
inputs??????????
p 
? "????????????
/__inference_encoder_block_1_layer_call_fn_68379m>?@ABCDELMFGHIJKNO8?5
.?+
%?"
inputs??????????
p
? "????????????
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68716{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_68722a8?5
.?+
%?"
inputs??????????

 
? "%?"
?
0?????????
? ?
:__inference_global_average_pooling1d_1_layer_call_fn_68705nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
:__inference_global_average_pooling1d_1_layer_call_fn_68710T8?5
.?+
%?"
inputs??????????

 
? "???????????
B__inference_model_1_layer_call_and_return_conditional_losses_67627|=<>?@ABCDELMFGHIJKNO'(129?6
/?,
"?
input_2??????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_67686|=<>?@ABCDELMFGHIJKNO'(129?6
/?,
"?
input_2??????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_68045{=<>?@ABCDELMFGHIJKNO'(128?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_68264{=<>?@ABCDELMFGHIJKNO'(128?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_1_layer_call_fn_67019o=<>?@ABCDELMFGHIJKNO'(129?6
/?,
"?
input_2??????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_67568o=<>?@ABCDELMFGHIJKNO'(129?6
/?,
"?
input_2??????????
p

 
? "???????????
'__inference_model_1_layer_call_fn_67800n=<>?@ABCDELMFGHIJKNO'(128?5
.?+
!?
inputs??????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_67853n=<>?@ABCDELMFGHIJKNO'(128?5
.?+
!?
inputs??????????
p

 
? "???????????
G__inference_sequential_1_layer_call_and_return_conditional_losses_66651yFGHIJKC?@
9?6
,?)
dense_5_input??????????
p 

 
? "*?'
 ?
0??????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_66670yFGHIJKC?@
9?6
,?)
dense_5_input??????????
p

 
? "*?'
 ?
0??????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_68934rFGHIJK<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_69018rFGHIJK<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
,__inference_sequential_1_layer_call_fn_66532lFGHIJKC?@
9?6
,?)
dense_5_input??????????
p 

 
? "????????????
,__inference_sequential_1_layer_call_fn_66632lFGHIJKC?@
9?6
,?)
dense_5_input??????????
p

 
? "????????????
,__inference_sequential_1_layer_call_fn_68833eFGHIJK<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
,__inference_sequential_1_layer_call_fn_68850eFGHIJK<?9
2?/
%?"
inputs??????????
p

 
? "????????????
#__inference_signature_wrapper_67747?=<>?@ABCDELMFGHIJKNO'(12<?9
? 
2?/
-
input_2"?
input_2??????????"1?.
,
dense_9!?
dense_9??????????
P__inference_token_and_pos_embed_1_layer_call_and_return_conditional_losses_68297]=<+?(
!?
?
x??????????
? "*?'
 ?
0??????????
? ?
5__inference_token_and_pos_embed_1_layer_call_fn_68273P=<+?(
!?
?
x??????????
? "???????????