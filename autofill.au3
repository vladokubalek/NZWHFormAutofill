HotKeySet("{F1}", "F1")
HotKeySet("{F2}", "F2")
HotKeySet("{F3}", "F3")
HotKeySet("{F4}", "F4")
HotKeySet("{F5}", "F5")
HotKeySet("{F6}", "F6")
HotKeySet("{F7}", "F7")

HotKeySet("{INS}", "Pause")
HotKeySet("{END}", "Quit")

global $p

ToolTip('Press F1 on first page, F2 on second, etc. END for exit',0,0)
AutoItSetOption("SendKeyDelay", 3)

func F1()
   if ($p) then Return
   Send("Firstname")
   Send("{TAB}")
   Send("Familyname")
   Send("{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}{ENTER}{TAB}")
   Send("01 January, 2000")
   Send("{TAB}")
   Send("cz")
   Send("{ENTER}{TAB}")
   Send("1")
   Send("{TAB}")
   Send("STREET NAME")
   Send("{TAB}")
   Send("SUBBURB")
   Send("{TAB}")
   Send("CITY")
   Send("{TAB}{TAB}{TAB}")
   Send("new zealand")
   Send("{ENTER}{TAB}{TAB}{TAB}{TAB}{TAB}")
   Send("email@gmail.com")
   Send("{TAB}{TAB}")
   Send("no")
   Send("{TAB}")
   Send("em")
   Send("{TAB}")
   Send("yes{TAB}{TAB}{TAB}")
EndFunc

func F2()
   if ($p) then return
   Send("123456789")
   Send("{TAB}")
   Send("123456789")
   Send("{TAB}")
   Send("6 September, 2019")
   Send("{TAB}")
   Send("driv")
   Send("{TAB}")
   Send("6 September, 2019")
   Send("{TAB}")
   Send("6 September, 2019")
   Send("{TAB}")
EndFunc

func F3()
   if ($p) then return
   Send("6 September, 2019")
   Send("{TAB}")
   Send("ho{ENTER}")
   Send("{TAB}")
   Send("6 September, 2019")
   Send("{TAB}{TAB}{TAB}{TAB}")
EndFunc

func F4()
   if ($p) then return
   Send("{TAB}n{TAB}n{TAB}n{TAB}n{TAB}n{TAB}n{TAB}n{TAB}{TAB}{TAB}n{TAB}")
EndFunc

func F5()
   if ($p) then return
   Send("{TAB}n{TAB}n{TAB}n{TAB}n{TAB}{TAB}{TAB}n{TAB}n{TAB}n{TAB}n{TAB}n{TAB}")
EndFunc

func F6()
   if ($p) then return
   Send("{TAB}n{TAB}{TAB}y{TAB}")
   Send("6 September, 2019")
   Send("{TAB}no{TAB}{TAB}yes{TAB}{TAB}yes{TAB}")
EndFunc

func F7()
   if ($p) then return

$Pos = MouseGetPos()
$x = $Pos[0] ; Mouse X position
$y = $Pos[1] ; Mouse Y position

   MouseClick("LEFT",$x,$y)
   MouseClick("LEFT",$x,$y+85,1,0)
   MouseClick("LEFT",$x,$y+155,1,0)
   MouseClick("LEFT",$x,$y+235,1,0)
   MouseClick("LEFT",$x,$y+310,1,0)
   MouseClick("LEFT",$x,$y+410,1,0)
   MouseClick("LEFT",$x,$y+480,1,0)
   MouseClick("LEFT",$x,$y+550,1,0)
   MouseClick("LEFT",$x,$y+605,1,0)
EndFunc

while 1
  sleep(100)
WEnd

Func Pause()
  $p = not $p
  ToolTip('PAUSE',0,0)
  While ($p)
    sleep(250)
  WEnd
  ToolTip('',0,0)
EndFunc

func Quit()
  exit(1)
endfunc

