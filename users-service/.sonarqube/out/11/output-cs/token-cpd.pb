Õ
mC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Facade\DependencyExtension.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Facade		 
{

 
public 

static 
class 
DependencyExtension +
{ 
public 
static 
IServiceCollection (
	AddFacade) 2
(2 3
this3 7
IServiceCollection8 J
servicesK S
)S T
{ 	
services 
. 
	AddScoped 
< 
IUsersFacade +
,+ ,
UsersFacade- 8
>8 9
(9 :
): ;
;; <
return 
services 
; 
} 	
} 
} ¡
pC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Facade\Users\Impl\UsersFacade.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Facade		 
.		 
Users		 "
.		" #
Impl		# '
{

 
public 

class 
UsersFacade 
: 
IUsersFacade +
{ 
private 
readonly 
IUsersService &
usersService' 3
;3 4
public 
UsersFacade 
( 
IUsersService (
usersService) 5
)5 6
=>7 9
this 
. 
usersService 
= 
usersService  ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
usersServiceW c
)c d
)d e
;e f
public 
async 
Task 
< 
IEnumerable %
<% &
UserDto& -
>- .
>. /
GetAllAsync0 ;
(; <
)< =
=> 
await 
this 
. 
usersService &
.& '
GetAllAsync' 2
(2 3
)3 4
;4 5
public 
async 
Task 
< 
UserDto !
>! "
GetByIdAsync# /
(/ 0
int0 3
id4 6
)6 7
=> 
await 
this 
. 
usersService &
.& '
GetByIdAsync' 3
(3 4
id4 6
)6 7
;7 8
public"" 
async"" 
Task"" 
<"" 
UserDto"" !
>""! "
InsertAsync""# .
("". /
string""/ 5
user""6 :
,"": ;
CreateUserDto""< I
userRequest""J U
)""U V
=>## 
await## 
this## 
.## 
usersService## &
.##& '
InsertAsync##' 2
(##2 3
user##3 7
,##7 8
userRequest##9 D
)##D E
;##E F
public&& 
async&& 
Task&& 
<&& 
UserDto&& !
>&&! "
UpdateAsync&&# .
(&&. /
int'' 
id'' 
,'' 
string'' 
user'' 
,''  
UpdateUserDto''! .
userRequest''/ :
)'': ;
=>(( 
await(( 
this(( 
.(( 
usersService(( &
.((& '
UpdateAsync((' 2
(((2 3
id((3 5
,((5 6
user((7 ;
,((; <
userRequest((= H
)((H I
;((I J
public++ 
async++ 
Task++ 
DeleteAsync++ %
(++% &
int++& )
id++* ,
)++, -
=>,, 
await,, 
this,, 
.,, 
usersService,, &
.,,& '
DeleteAsync,,' 2
(,,2 3
id,,3 5
),,5 6
;,,6 7
}-- 
}.. ú

lC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Facade\Users\IUsersFacade.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Facade		 
.		 
Users		 "
{

 
public 

	interface 
IUsersFacade !
{ 
Task 
< 
IEnumerable 
< 
UserDto  
>  !
>! "
GetAllAsync# .
(. /
)/ 0
;0 1
Task 
< 
UserDto 
> 
GetByIdAsync "
(" #
int# &
id' )
)) *
;* +
Task## 
<## 
UserDto## 
>## 
InsertAsync## !
(##! "
string##" (
user##) -
,##- .
CreateUserDto##/ <
userRequest##= H
)##H I
;##I J
Task,, 
<,, 
UserDto,, 
>,, 
UpdateAsync,, !
(,,! "
int,," %
id,,& (
,,,( )
string,,* 0
user,,1 5
,,,5 6
UpdateUserDto,,7 D
userRequest,,E P
),,P Q
;,,Q R
Task33 
DeleteAsync33 
(33 
int33 
id33 
)33  
;33  !
}44 
}55 