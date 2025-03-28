



#SingleInstance Force

tabs:=4
gui Add,Tab2,vTab -wrap,Heal|Target|Loot|Puxar|Geral





gui Tab,Heal
;----------------------------------------------------
;UH
gui, add, button, x135 y45 h30 w40 gUH, UH
;----------------------------------------------------
;Mana Fluid
gui, add, button, x135 y85 h30 w40 gMF, MF
;----------------------------------------------------
gui, add, button, x135 y125 h30 w40 gmanafull, Spell Heal 
;----------------------------------------------------
;Exit
gui Add,Text,x20 y170,Para Pausar Aperte Ctrl + H.
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------

gui Tab,Target
;---------------------------------------------------- 
;SD
Gui, Add, Hotkey, x30 y50 h20 w50 vvariablel3
Gui, Add, Button, x80 y45 h30 w55 gSubmit3, Confirme a Key
gui, add, button, x135 y45 h30 w40 gSD, SD
;----------------------------------------------------
;HMM
Gui, Add, Hotkey, x30 y90 h20 w50 vvariablel4
Gui, Add, Button, x80 y85 h30 w55 gSubmit4, Confirme a Key
gui, add, button, x135 y85 h30 w40 gHMM, HMM
;----------------------------------------------------
;GFB
Gui, Add, Hotkey, x30 y130 h20 w50 vvariablel5
Gui, Add, Button, x80 y125 h30 w55 gSubmit5, Confirme a Key
gui, add, button, x135 y125 h30 w40 gGFB, GFB
;----------------------------------------------------
;Exit
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------

gui Tab,Loot
;----------------------------------------------------
;Gold
gui, add, button, x135 y45 h30 w40 gGP, Gold
;----------------------------------------------------

;----------------------------------------------------
;Drop
gui, add, button, x135 y125 h30 w40 gDrop, Drop
;----------------------------------------------------
;Exit
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------

gui Tab,Puxar
;----------------------------------------------------
;Arrows Spear

gui, add, button, x135 y45 h30 w40 gArrows, Arrows

gui, add, button, x135 y85 h30 w40 gSpear, Spear
;----------------------------------------------------
;Ring
Gui, Add, Hotkey, x30 y130 h20 w50 vvariablel10
Gui, Add, Button, x80 y125 h30 w55 gSubmit10, Confirme a Key
gui, add, button, x135 y125 h30 w40 gRing, Puxar Anel
;----------------------------------------------------
;Amulet
Gui, Add, Hotkey, x30 y170 h20 w50 vvariablel11
Gui, Add, Button, x80 y165 h30 w55 gSubmit11, Confirme a Key
gui, add, button, x135 y165 h30 w40 gAmulet, Puxar Amulet
;----------------------------------------------------
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------

gui Tab,Geral
;----------------------------------------------------
;Bag Loot
gui, add, button, x135 y45 h30 w40 gBag, Bag Loot
;----------------------------------------------------
;Pescar
Gui, Add, Hotkey, x30 y90 h20 w50 vvariablel13
Gui, Add, Button, x80 y85 h30 w55 gSubmit13, Confirme a Key
gui, add, button, x135 y85 h30 w40 gPescar, Pescar
;----------------------------------------------------
;Ant Push
Gui, Add, Hotkey, x30 y130 h20 w50 vvariablel14
Gui, Add, Button, x80 y125 h30 w55 gSubmit14, Confirme a Key
gui, add, button, x135 y125 h30 w40 gAntPush, Ant Push
;----------------------------------------------------
gui Add,Text,x190 y170,Pinador.
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------


gui, show
return






;-----------------------------------------------

UH: 
{
MsgBox ,48 , , Selecione a Primeira Runa, 10
KeyWait, LButton, D
MouseGetPos, Bp1X, Bp1Y
WheelUp::
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp1X%, %Bp1Y%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    return
  } 
}
return
;-----------------------------------------------

MF: 
{
MsgBox ,48 , , Selecione o Pimeiro Potion, 10
KeyWait, LButton, D
MouseGetPos, Bp2X, Bp2Y
MsgBox ,48 , , Selecione o Pé do seu Personagem, 10
KeyWait, LButton, D
MouseGetPos, Bp322X, Bp322Y
WheelDown::
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp2X%, %Bp2Y%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    MouseClickDrag, L, %Bp2X%, %Bp2Y%, %Bp322X%,%Bp322Y%, 0
    MouseMove, %xpos%,%ypos%
    return
  } 
}
return
;-----------------------------------------------
manafull: 
{
MsgBox ,48 , , Selecione a Posição da sua Life, 10
KeyWait, LButton, D
MouseGetPos, PHeal0X, PHeal0Y
PixelGetColor, colorhp0,   %PHeal0X%, %PHeal0Y%
MsgBox Posição %PHeal0X%, %PHeal0Y%. 
MsgBox ,48 , , Selecione a Posição da sua Mana, 10
KeyWait, LButton, D
MouseGetPos, PHeal01X, PHeal01Y
PixelGetColor, colorhp2,   %PHeal02X%, %PHeal02Y%
MsgBox Posição %PHeal02X%, %PHeal02Y%.
action1:
{
   PixelGetColor, colorhp01,   %PHeal0X%, %PHeal0Y%
   PixelGetColor, colorhp02,   %PHeal02X%, %PHeal02Y%
   if (colorhp2 != colorhp02) && (colorhp0 != colorhp01)
   {
      Send {F1}
      Sleep, 100
      return                            
   }
}
return
}
return
;-----------------------------------------------
Submit3:
Gui, Submit, NoHide
Hotkey, %variablel3%, action3, On
return
SD: 
{
MsgBox ,48 , , Selecione a Primeira Runa, 10
KeyWait, LButton, D
MouseGetPos, Bp3X, Bp3Y
action3:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp3X%, %Bp3Y%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    return
  } 
}
return
;-----------------------------------------------
Submit4:
Gui, Submit, NoHide
Hotkey, %variablel4%, action4, On
return
HMM: 
{
MsgBox ,48 , , Selecione a Primeira Runa, 10
KeyWait, LButton, D
MouseGetPos, Bp4X, Bp4Y
action4:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp4X%, %Bp4Y%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    return
  } 
}
return
;-----------------------------------------------
Submit5:
Gui, Submit, NoHide
Hotkey, %variablel5%, action5, On
return
GFB: 
{
MsgBox ,48 , , Selecione a Primeira Runa, 10
KeyWait, LButton, D
MouseGetPos, Bp5X, Bp5Y
action5:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %Bp5X%, %Bp5Y%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    return
  } 
}
return
;-----------------------------------------------

GP: 
{
MsgBox ,48 , , Selecione a Backpack de Gold, 10
KeyWait, LButton, D
MouseGetPos, gpX, gpY
^mbutton::
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %xpos%, %ypos%, %gpX%, %gpY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
}
}
return
;-----------------------------------------------


;-----------------------------------------------

Drop:
{
MsgBox ,48 , , Selecione seu Pé, 10
KeyWait, LButton, D
MouseGetPos, LfloorX, LfloorY
+mbutton::
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %xpos%, %ypos%, %LfloorX%, %LfloorY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
}
}
return
;-----------------------------------------------
Arrows: 
{
MsgBox ,48 , , Selecione o Refil de Arrows, 10
KeyWait, LButton, D
MouseGetPos, ArrowX, ArrowY
^WheelUp::
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, 997, 107, %ArrowX%, %ArrowY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
} 
}
return
;-----------------------------------------------
Spear: 
{
MsgBox ,48 , , Selecione a Mão para Spear, 10
KeyWait, LButton, D
MouseGetPos, ArrowsX, ArrowsY
^WheelDown::
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %xpos%, %ypos%, %ArrowsX%, %ArrowsY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
} 
}
return
;-----------------------------------------------
Submit10:
Gui, Submit, NoHide
Hotkey, %variablel10%, action10, On
return
Ring: 
{
MsgBox ,48 , , Selecione o Lugar de seu Ring, 10
KeyWait, LButton, D
MouseGetPos, RingX, RingY
action10:
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %xpos%, %ypos%, %RingX%, %RingY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
} 
}
return
;-----------------------------------------------
Submit11:
Gui, Submit, NoHide
Hotkey, %variablel11%, action11, On
return
Amulet: 
{
MsgBox ,48 , , Selecione o Lugar de seu Amulet, 10
KeyWait, LButton, D
MouseGetPos, AmuletX, AmuletY
action11:
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %xpos%, %ypos%, %AmuletX%, %AmuletY%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  return
} 
}
return
;-----------------------------------------------

Bag:
{
MsgBox ,48 , , Selecione seu Pé, 10
KeyWait, LButton, D
MouseGetPos, LbagX, LbagY
Delete::
{
  MouseGetPos, xpos, ypos
  Send {Ctrl down}
  MouseClickDrag, L, %LbagX%, %LbagY%, %xpos%, %ypos%, 0
  MouseMove, %xpos%,%ypos%
  Send {Ctrl up}
  Sleep, 50
  MouseClick, left, %xpos%, %ypos%, ,0
  return
}
}
return
;-----------------------------------------------
Submit13:
Gui, Submit, NoHide
Hotkey, %variablel13%, action13, On
return
Pescar: 
{
MsgBox ,48 , , Selecione a Primeira Runa, 10
KeyWait, LButton, D
MouseGetPos, PescarX, PescarY
action13:
  {
    MouseGetPos, xpos, ypos
    MouseClick, right, %PescarX%, %Pescar%, ,0
    MouseClick, left, %xpos%, %ypos%, ,0
    return
  } 
}
return
;-----------------------------------------------
Submit14:
Gui, Submit, NoHide
Hotkey, %variablel14%, action14, On
return
AntPush:
{
MsgBox ,48 , , Selecione o Primeiro Item para Ant Push, 10
KeyWait, LButton, D
MouseGetPos, Antpush1X, Antpush1Y
MsgBox ,48 , , Selecione o Segundo Item para Ant Push, 10
KeyWait, LButton, D
MouseGetPos, Antpush2X, Antpush2Y
action14:
{
  MouseGetPos, xpos, ypos
  Send {Shift down}
  MouseClickDrag, L, %Antpush1X%, %Antpush1Y%, %xpos%, %ypos%, 0
  MouseMove, %xpos%,%ypos%
  send {Shift Up}
  Sleep, 100
  MouseGetPos, xpos, ypos
  Send {Shift down}
  MouseClickDrag, L, %Antpush2X%, %Antpush2Y%,%xpos%, %ypos%, 0
  MouseMove, %xpos%,%ypos%
  send {Shift Up}
  return
}
}
return
;-----------------------------------------------


guiclose:
exit:
 {
   exitapp
 }
return



^h::Suspend

^u::
if toggle := !toggle
{
ToolTip ,HEAL ON, 350,9
WinGet, nom, ID, A
	Settimer, action1,   25
}
else
{
ToolTip
	Settimer, action1,   off
}
return
