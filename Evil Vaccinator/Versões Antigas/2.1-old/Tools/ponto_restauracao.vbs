Set sr = getobject("winmgmts:\\.\root\default:Systemrestore")

msg = "Novo Ponto de Restauração criado." & vbCR
msg = msg & "Listado: " & vbCR
msg = msg & "Ponto de Restauração automático em " & Date & " " & Time

'Put a ' in front of the next five lines to disable the Success Failed Prompt.
If (sr.createrestorepoint("Ponto de Restauração automático", 0, 100)) = 0 Then
    MsgBox msg
Else
    MsgBox "Criação de ponto falhou!"
End If

'Remove the ' from the next 3 lines to only alert you if the process failed
'If (sr.createrestorepoint("Ponto de Restauração automático", 0, 100)) <> 0 Then
'    MsgBox "Criação de ponto falhou!"
'End If