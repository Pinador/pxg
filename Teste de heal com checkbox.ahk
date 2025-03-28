



#SingleInstance Force

tabs:=4
gui Add,Tab2,vTab -wrap,Heal





gui Tab,Heal
;----------------------------------------------------
;Uh
Gui, Add, Hotkey, x30 y50 h20 w50 vvariablel3
gui, add, button, x135 y45 h30 w40 gSD, SD

Gui, Add, Checkbox, x195 y45 h20 w50 vHeal12 gheal, % "On/Off"



;----------------------------------------------------
;Exit
gui Add,Text,x20 y170,Para Pausar Aperte Ctrl + H.
gui, add, button, x190 y190 h30 w80 gexit, Exit Script
;----------------------------------------------------




gui, show
return

;-----------------------------------------------



SD: 

MsgBox ,48 , , Selecione a Posição da sua Life, 10
KeyWait, LButton, D
MouseGetPos, PHeal0X, PHeal0Y
PixelGetColor, colorhp0,   %PHeal0X%, %PHeal0Y%

MsgBox ,48 , , Posição "%PHeal0X%, %PHeal0Y%" e cor "%colorhp0%"




#If (Heal12)
{

action3:
  {
   PixelGetColor, colorhp01,   %PHeal0X%, %PHeal0Y%
   if (colorhp0 != colorhp01)
   {
      Send {%variablel3%}
      Sleep, 100
      return                            
   }
}
return


}
return

#if

Return

heal:
Gui Submit, NoHide
  if(Heal12) 
  {
    MsgBox ,48 , , Ativado!, 10.
  }
  else
  {
    SetTimer, , Off
    MsgBox ,48 , ,Desativado!, 10.
  }
Return











guiclose:
exit:
 {
   exitapp
 }
return



^h::Suspend


