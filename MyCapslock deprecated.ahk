;------------------------------------------------------------------------------
;资源管理器
CapsLock & space::Run, explore "d:\"
;电脑休眠
CapsLock & r:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

CapsLock & :: Maximize()
CapsLock & :: WinMinimize, A
CapsLock & :: Send !{f4}
;最大化还原
Maximize()
{
    WinGet, OutputVar, MinMax,A
    if(OutputVar = 1) {
            WinRestore, A
            return
        }
   if(OutputVar = 0){
            WinMaximize, A
           return
       }
   return
}
;------------------------------------------------------------------------------
;触摸板启用禁用
var := 0
CapsLock & r::{    
  var += 1   
  if( mod(var,2) =1 ){
    Run *RunAs %comSpec% /c "cd C:\Program Files (x86)\Windows Kits\10\Tools\x64 && devcon disable "HID\VID_06CB&PID_000F&Col02"" 
    return
    } 
  else{
    Run *RunAs %comSpec% /c "cd C:\Program Files (x86)\Windows Kits\10\Tools\x64 && devcon enable "HID\VID_06CB&PID_000F&Col02""
    return
    }
 }
 return
  
;------------------------------------------------------------------------------
;上下班报告
SetTimer, report, 300000
report()
{
if( (A_Hour-8) = 0 and (A_Min-30) > 0 and (A_Min-35) < 0)
{
  Send 王伟奇 8:30 到达上海兰均{enter}
  MsgBox, 上班报告 %A_Hour%:%A_Min%
}
if( (A_Hour-20) = 0 and (A_Min-0) > 0 and (A_Min-5) < 0 )
{
  Send 王伟奇 20:00 离开上海兰均{enter}
  MsgBox, 下班报告 %A_Hour%:%A_Min%
}
return
}
