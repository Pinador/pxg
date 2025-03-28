#SingleInstance Force

GuiW := 460, GuiH := 400
Gui, +LastFound +Resize +MinSize%GuiW%x%GuiH%
hGui1 := WinExist()
Gui, Margin, 10, 10

tabs:=2


gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Heal|Controls|Moveset

gui, Tab,Heal
;----------------------------------------------------
;Revive
Gui, Add, Hotkey, x30 y45 h20 w50 vvariablel2
Gui, Add, Button, x80 y45 h20 w50 gSubmit2, Confirme
gui, add, button, x135 y45 h20 w50 gMF, Revive
;----------------------------------------------------
;Potion
Gui, Add, Hotkey, x30 y85 h20 w50 vvariablel3
Gui, Add, Button, x80 y85 h20 w50 gSubmit3, Confirme
gui, add, button, x135 y85 h20 w50 gPT, Potion
;----------------------------------------------------
;Medicine
Gui, Add, Hotkey, x30 y125 h20 w50 vvariablel4
Gui, Add, Button, x80 y125 h20 w50 gSubmit4, Confirme
gui, add, button, x135 y125 h20 w50 gMed, Medicine
;----------------------------------------------------
;Medicine Self
Gui, Add, Hotkey, x30 y165 h20 w50 vvariable37
Gui, Add, Button, x80 y165 h20 w50 gSubmit27, Confirme
gui, add, button, x135 y165 h30 w50 gSMed, Self Medicine
;----------------------------------------------------
;Exit
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
gui, add, button, x20 y240 h20 w60 gexit, Exit Script
;----------------------------------------------------


gui, Tab,Controls
;ASDW
Gui, Add, Checkbox, x30 y45 h20 w50 vwalking gwalkin, % "On/Off"
Gui, Add, Button, x80 y45 h20 w50, W A S D
;----------------------------------------------------
;Loot
Gui, Add, Hotkey, x30 y85 h20 w50 vvariablel6
Gui, Add, Button, x80 y85 h20 w50 gSubmit6, Confirme
gui, add, button, x135 y85 h20 w50 gCorp, Loot
;----------------------------------------------------
;Swap
Gui, Add, Hotkey, x30 y115 h20 w50 vvariablel2999
Gui, Add, Button, x80 y115 h20 w50 gSubmit2999, Confirme
gui, add, button, x135 y115 h20 w50 gSWA, Swap
;----------------------------------------------------
;Pesca
Gui, add, text, x30 y165, Indique o tempo de espera para a pesca (em segundos!).
Gui, Add, edit, x80 y185 h20 w50 number vvariablell1
Gui, Add, Button, x135 y185 h20 w50 gFishin, Fishing
gui Add,Text,x60 y204,Para Ativar a pesca use "Ctrl + U".
;----------------------------------------------------
Gui, add, text, x30 y274, Indique a Hotkey para se enviar no Trade Center.
Gui, Add, Hotkey, x30 y255 h20 w50 vvariablel4999
Gui, Add, Checkbox, x135 y255 h20 w50 vmsg gmsgin, % "On/Off"
;----------------------------------------------------


gui, Tab,Moveset
;Golem
Gui, Add, Text, x30 y45 h20 w50 , Golem
Gui, Add, Hotkey, x120 y45 h20 w50 vvariable23
Gui, Add, Button, x175 y45 h20 w50 gSubmit13, Confirme
;----------------------------------------------------
;Typhlosion
Gui, Add, Text, x30 y75 h20 w50 , Typhlosion
Gui, Add, Hotkey, x120 y75 h20 w50 vvariablel9
Gui, Add, Button, x175 y75 h20 w50 gSubmit9, Confirme
;----------------------------------------------------
;Manectric
Gui, Add, Text, x30 y105 h20 w80 , Manectric
Gui, Add, Hotkey, x120 y105 h20 w50 vvariable38
Gui, Add, Button, x175 y105 h20 w50 gSubmit28, Confirme
;----------------------------------------------------
;Claydoll
Gui, Add, Text, x30 y135 h20 w60 , Claydoll
Gui, Add, Hotkey, x120 y135 h20 w50 vvariable32
Gui, Add, Button, x175 y135 h20 w50 gSubmit22, Confirme
;----------------------------------------------------
;Tropius
Gui, Add, Text, x30 y165 h20 w50 , Tropius
Gui, Add, Hotkey, x120 y165 h20 w50 vvariablel5
Gui, Add, Button, x175 y165 h20 w50 gSubmit5, Confirme
;----------------------------------------------------
;Gardevoir
Gui, Add, Text, x30 y195 h20 w80 , Gardevoir
Gui, Add, Hotkey, x120 y195 h20 w50 vvariablel7
Gui, Add, Button, x175 y195 h20 w50 gSubmit7, Confirme
;----------------------------------------------------
;Voir Heal
Gui, Add, Text, x30 y225 h20 w80 , Voir Heal
Gui, Add, Hotkey, x120 y225 h20 w50 vvariable31
Gui, Add, Button, x175 y225 h20 w50 gSubmit21, Confirme
;----------------------------------------------------
;Voir Golden
Gui, Add, Text, x30 y255 h20 w80 , Voir Golden
Gui, Add, Hotkey, x120 y255 h20 w50 vvariable30
Gui, Add, Button, x175 y255 h20 w50 gSubmit20, Confirme
;----------------------------------------------------
;Shiny Fearow
Gui, Add, Text, x30 y285 h20 w80 , Shiny Fearow
Gui, Add, Hotkey, x120 y285 h20 w50 vvariable42
Gui, Add, Button, x175 y285 h20 w50 gSubmit32, Confirme
;----------------------------------------------------
;Shiny Noctowl
Gui, Add, Text, x30 y315 h20 w80 , Shiny Noctowl
Gui, Add, Hotkey, x120 y315 h20 w50 vvariable43
Gui, Add, Button, x175 y315 h20 w50 gSubmit33, Confirme
;----------------------------------------------------
;Giant Karp
Gui, Add, Text, x30 y345 h20 w80 , Giant Karp
Gui, Add, Hotkey, x120 y345 h20 w50 vvariable24
Gui, Add, Button, x175 y345 h20 w50 gSubmit14, Confirme
;----------------------------------------------------
;Champion Primeape
Gui, Add, Text, x30 y370 h30 w80 , Champion Primeape
Gui, Add, Hotkey, x120 y375 h20 w50 vvariable44
Gui, Add, Button, x175 y375 h20 w50 gSubmit34, Confirme
;----------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------
;Smeargle Ghost
Gui, Add, Text, x255 y45 h30 w80 , Smeargle Ghost
Gui, Add, Hotkey, x345 y45 h20 w50 vvariable18
Gui, Add, Button, x400 y45 h20 w50 gSubmit8, Confirme
;----------------------------------------------------
;Smeargle6 Xatu Blizzard
Gui, Add, Text, x255 y70 h40 w80 , Smeargle6 Xatu Blizzard
Gui, Add, Hotkey, x345 y75 h20 w50 vvariable41
Gui, Add, Button, x400 y75 h20 w50 gSubmit31, Confirme
;----------------------------------------------------
;Smeargle6 Xatu FallingRocks
Gui, Add, Text, x255 y100 h40 w80 , Smeargle6 Xatu FallingRocks
Gui, Add, Hotkey, x345 y105 h20 w50 vvariable4199
Gui, Add, Button, x400 y105 h20 w50 gSubmit3199, Confirme
;----------------------------------------------------
;Smeargle All
Gui, Add, Text, x255 y138 h20 w80 , Smeargle All
Gui, Add, Hotkey, x345 y135 h20 w50 vvariable36
Gui, Add, Button, x400 y135 h20 w50 gSubmit26, Confirme
;----------------------------------------------------
;Smeargle AllSpout
Gui, Add, Text, x255 y160 h30 w80 , Smeargle All Spout
Gui, Add, Hotkey, x345 y165 h20 w50 vvariable39
Gui, Add, Button, x400 y165 h20 w50 gSubmit29, Confirme
;----------------------------------------------------
;Smeargle AllStorm
Gui, Add, Text, x255 y190 h50 w80 , Smeargle All Storm
Gui, Add, Hotkey, x345 y195 h20 w50 vvariable40
Gui, Add, Button, x400 y195 h20 w50 gSubmit30, Confirme
;---------------------------------------------------
;Bronzong
Gui, Add, Text, x255 y225 h20 w80 , Bronzong
Gui, Add, Hotkey, x345 y225 h20 w50 vvariable341
Gui, Add, Button, x400 y225 h20 w50 gSubmit331, Confirme
;----------------------------------------------------
gui, show, h420
return

;-----------------------------------------------
if WinActive("PXG Client")
{
Submit2:
Gui, Submit, NoHide
Hotkey, %variablel2%, action2, On
return
MF: 
{
MsgBox ,48 , , Selecione a Pokeball que vai se usar o Revive, 10
KeyWait, LButton, D
MouseGetPos, Bp1X, Bp1Y
MsgBox ,48 , , Selecione a posição do Revive, 10
KeyWait, LButton, D
MouseGetPos, Bp2X, Bp2Y
Sleep, 200
action2:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp1X%, %Bp1Y%, ,0
    Sleep, 200
    MouseClick, right, %Bp2X%, %Bp2Y%, ,0
    Sleep, 200
    MouseClick, left, %Bp1X%, %Bp1Y%, ,0
    Sleep, 200
    MouseClick, right, %Bp1X%, %Bp1Y%, ,0
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------
Submit3:
Gui, Submit, NoHide
Hotkey, %variablel3%, action3, On
return
PT: 
{
MsgBox ,48 , , Selecione a posição de seu POke no Battle, 10
KeyWait, LButton, D
MouseGetPos, B1X, B1Y
MsgBox ,48 , , Selecione a posição do Potion em sua Backpack, 10
KeyWait, LButton, D
MouseGetPos, B2X, B2Y
Sleep, 200
action3:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %B2X%, %B2Y%, ,0
    MouseClick, left, %B1X%, %B1Y%, ,0
    Sleep, 200
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------

Submit4:
Gui, Submit, NoHide
Hotkey, %variablel4%, action4, On
return
Med: 
{
MsgBox ,48 , , Selecione a posição de seu POke no Battle, 10
KeyWait, LButton, D
MouseGetPos, Bps1X, Bps1Y
MsgBox ,48 , , Selecione a posição do Medicine em sua Backpack, 10
KeyWait, LButton, D
MouseGetPos, Bps2X, Bps2Y
Sleep, 200
action4:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bps2X%, %Bps2Y%, ,0
    MouseClick, left, %Bps1X%, %Bps1Y%, ,0
    Sleep, 200
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return

;-----------------------------------------------

Submit6:
Gui, Submit, NoHide
Hotkey, %variablel6%, action6, On
return
Corp: 
{
MsgBox ,48 , , Selecione a Posicao do Primeiro Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp1L, Bp1LY
MsgBox ,48 , , Selecione a Posicao do Segundo Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp2L, Bp2LY
MsgBox ,48 , , Selecione a Posicao do Terceiro Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp3L, Bp3LY
MsgBox ,48 , , Selecione a Posicao do Quarto Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp4L, Bp4LY
MsgBox ,48 , , Selecione a Posicao do Quinto Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp5L, Bp5LY
MsgBox ,48 , , Selecione a Posicao do Sexto Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp6L, Bp6LY
MsgBox ,48 , , Selecione a Posicao do Setimo Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp7L, Bp7LY
MsgBox ,48 , , Selecione a Posicao do Oitavo Monstro, 10
KeyWait, LButton, D
MouseGetPos, Bp8L, Bp8LY
Sleep, 200

action6:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp1L%, %Bp1LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp2L%, %Bp2LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp3L%, %Bp3LY%, ,0
	Sleep, 190
    MouseClick, right, %Bp4L%, %Bp4LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp5L%, %Bp5LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp6L%, %Bp6LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp7L%, %Bp7LY%, ,0
	Sleep, 190
	MouseClick, right, %Bp8L%, %Bp8LY%, ,0
	Sleep, 190
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------
Submit2999:
Gui, Submit, NoHide
Hotkey, %variablel2999%, action2999, On
return
SWA: 
{
MsgBox ,48 , , Selecione a Pokeball que vai ser TROCADA, 10
KeyWait, LButton, D
MouseGetPos, Bp1999X, Bp1999Y
MsgBox ,48 , , Selecione a posição do "new Poke", 10
KeyWait, LButton, D
MouseGetPos, Bp2999X, Bp2999Y
Sleep, 200
action2999:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp1999X%, %Bp1999Y%, ,0
    Sleep, 150
    MouseClickDrag, L, %Bp2999X%, %Bp2999Y%, %Bp1999X%, %Bp1999Y%, 0
    Sleep, 150
    MouseClick, right, %Bp1999X%, %Bp1999Y%, ,0
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------
Submit5:
Gui, Submit, NoHide
Hotkey, %variablel5%, action5, On
return

action5:
{
send {F1}
Sleep, 600
send {F6}	
Sleep, 600
send {F9}	
Sleep, 600	
Send {F7}
Sleep, 600
Send {F8}
Sleep, 600
Send {F5}
Sleep, 600
}
return
;-----------------------------------------------
Submit7:
Gui, Submit, NoHide
Hotkey, %variablel7%, action7, On
return

action7:
{
send {F3}
Sleep, 600
send {F6}	
Sleep, 600
send {F8}	
Sleep, 600	
Send {F5}
Sleep, 600
Send {F4}
Sleep, 600
}
return
;-----------------------------------------------
Submit20:
Gui, Submit, NoHide
Hotkey, %variable30%, action20, On
return

action20:
{
send {F3}
Sleep, 600
send {F6}	
Sleep, 600
send {F8}	
Sleep, 600	
Send {F5}
Sleep, 600
}
return
;-----------------------------------------------
Submit21:
Gui, Submit, NoHide
Hotkey, %variable31%, action21, On
return

action21:
{
send {F3}
Sleep, 600
send {F6}	
Sleep, 600
send {F8}	
Sleep, 600	
Send {F5}
Sleep, 600
send {F7}	
Sleep, 600
}
return
;-----------------------------------------------
Submit22:
Gui, Submit, NoHide
Hotkey, %variable32%, action22, On
return

action22:
{
send {F10}
Sleep, 600
send {F9}	
Sleep, 600
send {F8}	
Sleep, 600	
Send {F6}
Sleep, 600
send {F7}	
Sleep, 600
send {F1}	
Sleep, 600
send {F4}	
Sleep, 600
send {F3}	
Sleep, 600
send {F5}	
Sleep, 600
send {F2}	
Sleep, 600
}
return
;-----------------------------------------------
Submit8:
Gui, Submit, NoHide
Hotkey, %variable18%, action8, On
return

action8:
{
send {F1}	
Sleep, 600
send {F4}
Sleep, 600
send {F5}	
Sleep, 600	
Send {F6}
Sleep, 600
Send {F2}
Sleep, 600
}
return
;-----------------------------------------------
Submit9:
Gui, Submit, NoHide
Hotkey, %variablel9%, action9, On
return

action9:
{
send {F6}
Sleep, 600
send {F7}	
Sleep, 600
send {F9}	
Sleep, 600	
Send {F8}
Sleep, 600
Send {F5}
Sleep, 600
}
return
;-----------------------------------------------
Submit10:
Gui, Submit, NoHide
Hotkey, %variable20%, action10, On
return

action10:
{
send {F5}
Sleep, 600
send {F1}	
Sleep, 600
send {F6}	
Sleep, 600	
Send {F8}
Sleep, 600
Send {F7}
Sleep, 600
Send {F3}
Sleep, 600
}
return
;-----------------------------------------------
Submit11:
Gui, Submit, NoHide
Hotkey, %variable21%, action11, On
return

action11:
{
send {F6}
Sleep, 600
send {F5}	
Sleep, 600
send {F4}	
Sleep, 600	
Send {F9}
Sleep, 600
}
return
;-----------------------------------------------
Submit12:
Gui, Submit, NoHide
Hotkey, %variable22%, action12, On
return

action12:
{
send {F5}
Sleep, 600
send {F1}	
Sleep, 600
send {F8}	
Sleep, 600	
Send {F7}
Sleep, 600
Send {F6}
Sleep, 600
Send {F3}
Sleep, 600
}
return
;-----------------------------------------------
Submit13:
Gui, Submit, NoHide
Hotkey, %variable23%, action13, On
return

action13:
{
send {F8}
Sleep, 600
send {F6}	
Sleep, 600
send {F5}	
Sleep, 600	
Send {F4}
Sleep, 600
}
return
;-----------------------------------------------
Submit14:
Gui, Submit, NoHide
Hotkey, %variable24%, action14, On
return

action14:
{
send {F8}
Sleep, 600
send {F7}	
Sleep, 600
send {F6}	
Sleep, 600	
Send {F5}
Sleep, 600
Send {F4}
Sleep, 600
Send {F3}
Sleep, 600
}
return
;-----------------------------------------------
Submit26:
Gui, Submit, NoHide
Hotkey, %variable36%, action26, On
return

action26:
{
send {F3}
Sleep, 600
send {F6}	
Sleep, 600
send {F5}	
Sleep, 600	
Send {F1}
Sleep, 600
Send {F7}
Sleep, 600
Send {F8}
Sleep, 600
}
return
;-----------------------------------------------
Submit28:
Gui, Submit, NoHide
Hotkey, %variable38%, action28, On
return

action28:
{
send {F8}
Sleep, 600
send {F7}	
Sleep, 600
send {F6}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit29:
Gui, Submit, NoHide
Hotkey, %variable39%, action29, On
return

action29:
{
send {F3}
Sleep, 600
send {F6}	
Sleep, 600
send {F5}	
Sleep, 600	
Send {F1}
Sleep, 600
Send {F8}
Sleep, 600
Send {F7}
Sleep, 600	
}
return
;-----------------------------------------------
Submit30:
Gui, Submit, NoHide
Hotkey, %variable40%, action30, On
return

action30:
{
send {F1}
Sleep, 600
send {F6}	
Sleep, 600	
Send {F3}
Sleep, 600
send {F5}	
Sleep, 600
Send {F8}
Sleep, 600
Send {F7}
Sleep, 600	
}
return
;-----------------------------------------------
Submit31:
Gui, Submit, NoHide
Hotkey, %variable41%, action31, On
return

action31:
{
send {F5}	
Sleep, 600
send {F1}
Sleep, 600
send {F6}	
Sleep, 600	
Send {F3}
Sleep, 600
send {F4}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit3199:
Gui, Submit, NoHide
Hotkey, %variable4199%, action3199, On
return

action3199:
{
send {F6}	
Sleep, 600
send {F1}
Sleep, 600
send {F5}	
Sleep, 600	
Send {F3}
Sleep, 600
send {F4}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit32:
Gui, Submit, NoHide
Hotkey, %variable42%, action32, On
return

action32:
{
send {F7}	
Sleep, 600
send {F5}
Sleep, 600
send {F6}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit33:
Gui, Submit, NoHide
Hotkey, %variable43%, action33, On
return

action33:
{
send {F8}	
Sleep, 600
send {F7}	
Sleep, 600
send {F6}	
Sleep, 600
send {F3}
Sleep, 3000
send {F5}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit34:
Gui, Submit, NoHide
Hotkey, %variable44%, action34, On
return

action34:
{
send {F5}	
Sleep, 600
send {F6}	
Sleep, 600
send {F3}	
Sleep, 2000
send {F7}
Sleep, 600
}
return
;-----------------------------------------------
Submit331:
Gui, Submit, NoHide
Hotkey, %variable341%, action3323, On
return

action3323:
{
send {F5}	
Sleep, 600
send {F6}	
Sleep, 600
send {F4}	
Sleep, 600
send {F2}
Sleep, 6000
send {F3}	
Sleep, 600	
}
return
;-----------------------------------------------
Submit27:
Gui, Submit, NoHide
Hotkey, %variable37%, action27, On
return
SMed: 
{
MsgBox ,48 , , Selecione a posição de seu Personagem., 10
KeyWait, LButton, D
MouseGetPos, Bps6X, Bps6Y
MsgBox ,48 , , Selecione a posição do Medicine em sua Backpack, 10
KeyWait, LButton, D
MouseGetPos, Bps5X, Bps5Y
Sleep, 200
action27:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bps5X%, %Bps5Y%, ,0
    MouseClick, left, %Bps6X%, %Bps6Y%, ,0
    Sleep, 200
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------
Submit15:
Gui, Submit, NoHide

WinActivate, PXG Client
Sleep, 333

Inicio:
Loop
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1366, 768, Vara.png
    CenterImgSrchCoords("Vara.png", FoundX, FoundY)
    If ErrorLevel = 0
    	Click, %FoundX%, %FoundY%, 0
    If ErrorLevel
    	Return
}
Until ErrorLevel = 0
If ErrorLevel = 0
{
    Sleep, 500
    Click, Left, 1
    Sleep, 10
    Sleep, 600
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 1366, 768, Agua.png
        CenterImgSrchCoords("Agua.png", FoundX, FoundY)
        If ErrorLevel = 0
        	Click, %FoundX%, %FoundY%, 0
    }
    Until ErrorLevel = 0
    Sleep, 300
    If ErrorLevel = 0
    {
        Click, Left, 1
        Sleep, 10
        Click, 1089, 465, 0
        Sleep, 10
        Sleep, 20000
		Send ^z
		Sleep, 2000
		Goto, Inicio
    }	
}
Return


CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel
	Gui, Pict:Add, Pic, vLoadedPic, %File%
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}

return
;-----------------------------------------------
#If (Walking)
{
w::Up
a::Left
s::Down
d::Right
}
#if

Return

walkin:
Gui Submit, NoHide
  if(walking) 
  {
    MsgBox ,48 , , W A S D foi ativado!, 10.

  }
  else
  {
    SetTimer, , Off
    MsgBox ,48 , , W A S D foi desativado!, 10.
  }
  Return
;-----------------------------------------------
Enviar_Mensagens:
#If (msg)
{
 Sleep, 6000
 Send {%variablel4999%}
}
#if
Return

msgin:
Gui Submit, NoHide
  if(msg) 
  {
    SetTimer, Enviar_Mensagens, 120000
    MsgBox ,48 , , Msg automáticas ativadas!, 10.

  }
  else
  {
    SetTimer, Enviar_Mensagens, Off
    MsgBox ,48 , , Msg automáticas desativadas!, 10.
  }
  Return
;-----------------------------------------------
Fishin: 
{
Gui, Submit, nohide
variablell1 := variablell1 * 1000
MsgBox ,48 , , Selecione a posição onde vai pescar, 10
KeyWait, LButton, D
MouseGetPos, Bs23X, Bs23Y

action333223:
  {
    
    Send {Ctrl down}
    Send {z}
    Send {Ctrl up}
    sleep, 500
    MouseClick, left, %Bs23X%, %Bs23Y%, ,0
    sleep, 700
    Sleep, %variablell1%
    Send {Ctrl down}
    Send {z}
    Send {Ctrl up}
    sleep, 1500
    return
  }
return
}
return
;-----------------------------------------------
}



guiclose:
exit:
 {
   exitapp
 }
return


;^u::
;if toggle := !toggle
;{
;ToolTip ,Fishing ON, 350,9
;WinGet, nom, ID, A
;	Settimer, action333223,   500
;}
;else
;{
;ToolTip
;	Settimer, action333223,   off
;}
;return





^h::Pause
^u::Suspend