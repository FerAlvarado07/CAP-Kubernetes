ö)
rC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Api\Controllers\UsersController.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Api		 
.		 
Controllers		 %
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UsersController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IUsersFacade %
usersFacade& 1
;1 2
public 
UsersController 
( 
IUsersFacade +
usersFacade, 7
)7 8
=> 
this 
. 
usersFacade 
=  !
usersFacade" -
??. 0
throw1 6
new7 :!
ArgumentNullException; P
(P Q
nameofQ W
(W X
usersFacadeX c
)c d
)d e
;e f
[ 	
HttpGet	 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
GetAllAsync  ) 4
(  4 5
)  5 6
=>!! 
this!! 
.!! 
Ok!! 
(!! 
await!! 
this!! !
.!!! "
usersFacade!!" -
.!!- .
GetAllAsync!!. 9
(!!9 :
)!!: ;
)!!; <
;!!< =
[(( 	
HttpGet((	 
((( 
$str(( 
)(( 
](( 
public)) 
async)) 
Task)) 
<)) 
IActionResult)) '
>))' (
GetByIdAsync))) 5
())5 6
[))6 7
	FromRoute))7 @
]))@ A
int))B E
id))F H
)))H I
=>** 
this** 
.** 
Ok** 
(** 
await** 
this** !
.**! "
usersFacade**" -
.**- .
GetByIdAsync**. :
(**: ;
id**; =
)**= >
)**> ?
;**? @
[11 	
HttpPost11	 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
InsertAsync22) 4
(224 5
[225 6
FromBody226 >
]22> ?
CreateUserDto22@ M
userRequest22N Y
)22Y Z
{33 	
string44 
user44 
=44 
$str44 %
;44% &
var55 
response55 
=55 
await55  
this55! %
.55% &
usersFacade55& 1
.551 2
InsertAsync552 =
(55= >
user55> B
,55B C
userRequest55D O
)55O P
;55P Q
return66 
this66 
.66 
Created66 
(66  
$"66  "
$str66" -
{66- .
response66. 6
.666 7
Id667 9
}669 :
"66: ;
,66; <
response66= E
)66E F
;66F G
}77 	
[?? 	
HttpPut??	 
(?? 
$str?? 
)?? 
]?? 
public@@ 
async@@ 
Task@@ 
<@@ 
IActionResult@@ '
>@@' (
UpdateAsync@@) 4
(@@4 5
[@@5 6
	FromRoute@@6 ?
]@@? @
int@@A D
id@@E G
,@@G H
[@@I J
FromBody@@J R
]@@R S
UpdateUserDto@@T a
userRequest@@b m
)@@m n
{AA 	
stringBB 
userBB 
=BB 
$strBB %
;BB% &
varCC 
responseCC 
=CC 
awaitCC  
thisCC! %
.CC% &
usersFacadeCC& 1
.CC1 2
UpdateAsyncCC2 =
(CC= >
idCC> @
,CC@ A
userCCB F
,CCF G
userRequestCCH S
)CCS T
;CCT U
returnDD 
thisDD 
.DD 
OkDD 
(DD 
responseDD #
)DD# $
;DD$ %
}EE 	
[LL 	

HttpDeleteLL	 
(LL 
$strLL 
)LL 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
DeleteAsyncMM) 4
(MM4 5
[MM5 6
	FromRouteMM6 ?
]MM? @
intMMA D
idMME G
)MMG H
{NN 	
awaitOO 
thisOO 
.OO 
usersFacadeOO "
.OO" #
DeleteAsyncOO# .
(OO. /
idOO/ 1
)OO1 2
;OO2 3
returnPP 
thisPP 
.PP 
OkPP 
(PP 
)PP 
;PP 
}QQ 	
[WW 	
RouteWW	 
(WW 
$strWW 
)WW 
]WW 
[XX 	
HttpGetXX	 
]XX 
publicYY 
IActionResultYY 
PingYY !
(YY! "
)YY" #
{ZZ 	
return[[ 
this[[ 
.[[ 
Ok[[ 
([[ 
$str[[ !
)[[! "
;[[" #
}\\ 	
}]] 
}^^ ÷&
jC:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Api\DependencyExtension.cs
	namespace		 	
Axity		
 
.		 
Users		 
.		 
Api		 
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
static 
WebApplication $
AppConfiguration% 5
(5 6
this6 :!
WebApplicationBuilder; P
webApplicationQ _
)_ `
{ 	
webApplication 
. "
AddPlaceholderResolver 1
(1 2
)2 3
;3 4
webApplication 
. 
Host 
.  

UseSerilog  *
(* +
)+ ,
;, -
webApplication 
. 
Services #
.# $
AddControllers$ 2
(2 3
options3 :
=>; =
{ 
options 
. 
Filters 
.  
Add  #
<# $'
CustomActionFilterAttribute$ ?
>? @
(@ A
)A B
;B C
options 
. 
Filters 
.  
Add  #
<# $*
GlobalExceptionFilterAttribute$ B
>B C
(C D
)D E
;E F
} 
) 
; 
webApplication!! 
.!! 
Services!! #
.!!# $
	AddFacade!!$ -
(!!- .
)!!. /
;!!/ 0
webApplication"" 
."" 
Services"" #
.""# $
AddPersistence""$ 2
(""2 3
webApplication""3 A
.""A B
Configuration""B O
)""O P
;""P Q
webApplication## 
.## 
Services## #
.### $
AddServices##$ /
(##/ 0
)##0 1
;##1 2
webApplication$$ 
.$$ 
Services$$ #
.$$# $
AddAutoMapper$$$ 1
($$1 2
)$$2 3
;$$3 4
webApplication&& 
.&& 
Services&& #
.&&# $#
AddEndpointsApiExplorer&&$ ;
(&&; <
)&&< =
;&&= >
webApplication'' 
.'' 
Services'' #
.''# $
AddSwaggerGen''$ 1
(''1 2
)''2 3
;''3 4
webApplication)) 
.)) 
Services)) #
.))# $
AddKafka))$ ,
()), -
webApplication))- ;
.)); <
Configuration))< I
,))I J
Log))K N
.))N O
Logger))O U
)))U V
;))V W
webApplication++ 
.++ 
Services++ #
.++# $+
AddApplicationInsightsTelemetry++$ C
(++C D
)++D E
;++E F
try-- 
{.. 
var// 
configuration// !
=//" # 
ConfigurationOptions//$ 8
.//8 9
Parse//9 >
(//> ?
webApplication//? M
.//M N
Configuration//N [
[//[ \
$str//\ l
]//l m
,//m n
true//o s
)//s t
;//t u
configuration00 
.00 

ResolveDns00 (
=00) *
true00+ /
;00/ 0
webApplication11 
.11 
Services11 '
.11' (
AddSingleton11( 4
<114 5"
IConnectionMultiplexer115 K
>11K L
(11L M
cm11M O
=>11P R!
ConnectionMultiplexer11S h
.11h i
Connect11i p
(11p q
configuration11q ~
)11~ 
)	11 €
;
11€ 
}22 
catch33 
(33 
	Exception33 
)33 
{44 
Log55 
.55 
Logger55 
.55 
Error55  
(55  !
$str55! 7
)557 8
;558 9
}66 
return88 
webApplication88 !
.88! "
Build88" '
(88' (
)88( )
;88) *
}99 	
public@@ 
static@@ 
WebApplication@@ $
UseApplication@@% 3
(@@3 4
this@@4 8
WebApplication@@9 G
app@@H K
)@@K L
{AA 	
appBB 
.BB 

UseSwaggerBB 
(BB 
)BB 
;BB 
appCC 
.CC 
UseSwaggerUICC 
(CC 
)CC 
;CC 
appDD 
.DD 
UseHttpsRedirectionDD #
(DD# $
)DD$ %
;DD% &
appEE 
.EE 
UseAuthorizationEE  
(EE  !
)EE! "
;EE" #
appFF 
.FF 
MapControllersFF 
(FF 
)FF  
;FF  !
returnGG 
appGG 
;GG 
}HH 	
}II 
}JJ Ó
^C:\Users\fealv\Downloads\Generator\generator-netcore6\users-service\Axity.Users.Api\Program.cs
const 
string 
APP_NAME 
= 
$str )
;) *
Log 
. 
Logger 

= 
new 
LoggerConfiguration $
($ %
)% &
. 
MinimumLevel 
. 
Information )
() *
)* +
. 
MinimumLevel 
. 
Override &
(& '
$str' 2
,2 3
LogEventLevel4 A
.A B
WarningB I
)I J
. 
MinimumLevel 
. 
Override &
(& '
$str' /
,/ 0
LogEventLevel1 >
.> ?
Warning? F
)F G
. 
WriteTo 
. 
Console  
(  !
)! "
. 
CreateLogger 
( 
) 
;  
try

 
{ 
Log 
. 
Information 
( 
$" 
{ 
APP_NAME 
}  
$str  2
"2 3
)3 4
;4 5
WebApplication 
. 
CreateBuilder  
(  !
args! %
)% &
. 
AppConfiguration 
( 
) 
. 
UseApplication 
( 
) 
. 
Run 
( 	
)	 

;
 
} 
catch 
( 
	Exception 
ex 
) 
{ 
Log 
. 
Fatal 
( 
ex 
, 
$" 
{ 
APP_NAME 
} 
$str 7
"7 8
)8 9
;9 :
} 
finally 
{ 
Log 
. 
CloseAndFlush 
( 
) 
; 
} 