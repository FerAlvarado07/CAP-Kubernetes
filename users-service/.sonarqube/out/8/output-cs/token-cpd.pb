Ï
~C:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Persistence\Configuration\UserConfiguration.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Persistence		 !
.		! "
Configuration		" /
{

 
public 

class 
UserConfiguration "
:# $$
IEntityTypeConfiguration% =
<= >
	UserModel> G
>G H
{ 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	UserModel0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
ToTable 
( 
$str "
)" #
.# $
HasKey$ *
(* +
p+ ,
=>- /
p0 1
.1 2
Id2 4
)4 5
;5 6
builder 
. 
Property 
( 
s 
=> !
s" #
.# $
Name$ (
)( )
.) *
HasColumnName* 7
(7 8
$str8 >
)> ?
.? @

IsRequired@ J
(J K
)K L
.L M
HasMaxLengthM Y
(Y Z
$numZ ]
)] ^
;^ _
builder 
. 
Property 
( 
s 
=> !
s" #
.# $
UserName$ ,
), -
.- .
HasColumnName. ;
(; <
$str< G
)G H
.H I

IsRequiredI S
(S T
)T U
.U V
HasMaxLengthV b
(b c
$numc e
)e f
;f g
builder 
. 
Property 
( 
s 
=> !
s" #
.# $
Email$ )
)) *
.* +
HasColumnName+ 8
(8 9
$str9 @
)@ A
.A B

IsRequiredB L
(L M
)M N
.N O
HasMaxLengthO [
([ \
$num\ _
)_ `
;` a
builder 
. 
Property 
( 
s 
=> !
s" #
.# $
Active$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
.C D

IsRequiredD N
(N O
)O P
;P Q
builder 
. 
Property 
( 
s 
=> !
s" #
.# $
Active$ *
)* +
. 

IsRequired 
( 
) 
; 
} 	
}   
}!! à

vC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Persistence\Context\DatabaseContext.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Persistence		 !
.		! "
Context		" )
{

 
public 

class 
DatabaseContext  
:! "
	DbContext# ,
{ 
public 
DatabaseContext 
( 
DbContextOptions /
</ 0
DatabaseContext0 ?
>? @
optionsA H
)H I
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
	UserModel 
> 
Users  %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
	protected%% 
override%% 
void%% 
OnModelCreating%%  /
(%%/ 0
ModelBuilder%%0 <
modelBuilder%%= I
)%%I J
{&& 	
modelBuilder'' 
.'' +
ApplyConfigurationsFromAssembly'' 8
(''8 9
Assembly''9 A
.''A B 
GetExecutingAssembly''B V
(''V W
)''W X
)''X Y
;''Y Z
}(( 	
})) 
}** à
vC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Persistence\DAO\Users\Impl\UsersDao.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Persistence		 !
.		! "
DAO		" %
.		% &
Users		& +
.		+ ,
Impl		, 0
{

 
public 

class 
UsersDao 
: 
	IUsersDao %
{ 
private 
readonly 
DatabaseContext (
context) 0
;0 1
public 
UsersDao 
( 
DatabaseContext '
context( /
)/ 0
{ 	!
ArgumentNullException !
.! "
ThrowIfNull" -
(- .
context. 5
)5 6
;6 7
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
	UserModel& /
>/ 0
>0 1
GetAllAsync2 =
(= >
)> ?
=> 
await 
this 
. 
context !
.! "
Users" '
.' (
ToListAsync( 3
(3 4
)4 5
;5 6
public!! 
async!! 
Task!! 
<!! 
	UserModel!! #
>!!# $
GetByIdAsync!!% 1
(!!1 2
int!!2 5
id!!6 8
)!!8 9
=>"" 
await"" 
this"" 
."" 
context"" !
.""! "
Users""" '
.""' (
	FindAsync""( 1
(""1 2
id""2 4
)""4 5
;""5 6
public%% 
async%% 
Task%% 
InsertAsync%% %
(%%% &
	UserModel%%& /
model%%0 5
)%%5 6
=>&& 
await&& 
this&& 
.&& 
context&& !
.&&! "
AddAsync&&" *
(&&* +
model&&+ 0
)&&0 1
;&&1 2
public)) 
	UserModel)) 
Update)) 
())  
	UserModel))  )
model))* /
)))/ 0
=>** 
this** 
.** 
context** 
.** 
Update** "
(**" #
model**# (
)**( )
.**) *
Entity*** 0
;**0 1
public-- 
void-- 
Delete-- 
(-- 
	UserModel-- $
model--% *
)--* +
=>.. 
this.. 
... 
context.. 
... 
Remove.. "
(.." #
model..# (
)..( )
;..) *
public11 
async11 
Task11 
<11 
int11 
>11 
SaveChangesAsync11 /
(11/ 0
)110 1
=>112 4
await115 :
this11; ?
.11? @
context11@ G
.11G H
SaveChangesAsync11H X
(11X Y
)11Y Z
;11Z [
}22 
}33 ¢

rC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Persistence\DAO\Users\IUsersDao.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Persistence		 !
.		! "
DAO		" %
.		% &
Users		& +
{

 
public 

	interface 
	IUsersDao 
{ 
Task 
< 
IEnumerable 
< 
	UserModel "
>" #
># $
GetAllAsync% 0
(0 1
)1 2
;2 3
Task 
< 
	UserModel 
> 
GetByIdAsync $
($ %
int% (
id) +
)+ ,
;, -
Task"" 
InsertAsync"" 
("" 
	UserModel"" "
model""# (
)""( )
;"") *
	UserModel)) 
Update)) 
()) 
	UserModel)) "
model))# (
)))( )
;))) *
void// 
Delete// 
(// 
	UserModel// 
model// #
)//# $
;//$ %
Task55 
<55 
int55 
>55 
SaveChangesAsync55 "
(55" #
)55# $
;55$ %
}66 
}77 å
rC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Persistence\DependencyExtension.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Persistence		 !
{

 
public 

static 
class 
DependencyExtension +
{ 
public 
static 
IServiceCollection (
AddPersistence) 7
(7 8
this 
IServiceCollection #
services$ ,
,, -
IConfiguration. <
configuration= J
)J K
{ 	
services 
. 
AddDbContextPool %
<% &
DatabaseContext& 5
>5 6
(6 7
options7 >
=>? A
{ 
options 
. 
UseSqlServer $
($ %
configuration !
.! "
GetConnectionString" 5
(5 6
nameof6 <
(< =
DatabaseContext= L
)L M
)M N
,N O"
sqlServerOptionsAction *
:* +

sqlOptions, 6
=>7 9
{ 

sqlOptions "
." # 
EnableRetryOnFailure# 7
(7 8
maxRetryCount   %
:  % &
$num  ' (
,  ( )
maxRetryDelay!! %
:!!% &
TimeSpan!!' /
.!!/ 0
FromSeconds!!0 ;
(!!; <
$num!!< >
)!!> ?
,!!? @
errorNumbersToAdd"" )
:"") *
null""+ /
)""/ 0
;""0 1
}## 
)## 
;## 
}$$ 
)$$ 
;$$ 
services&& 
.&& 
	AddScoped&& 
<&& 
	IUsersDao&& (
,&&( )
UsersDao&&* 2
>&&2 3
(&&3 4
)&&4 5
;&&5 6
return(( 
services(( 
;(( 
})) 	
}** 
}++ 