Set sr = getobject("winmgmts:\\.\root\default:Systemrestore")

msg = "Novo Ponto de Restaura��o criado." & vbCR
msg = msg & "Listado: " & vbCR
msg = msg & "Ponto de Restaura��o autom�tico em " & Date & " " & Time

'Put a ' in front of the next five lines to disable the Success Failed Prompt.
If (sr.createrestorepoint("Ponto de Restaura��o autom�tico", 0, 100)) = 0 Then
    MsgBox msg
Else
    MsgBox "Cria��o de ponto falhou!"
End If

'Remove the ' from the next 3 lines to only alert you if the process failed
'If (sr.createrestorepoint("Ponto de Restaura��o autom�tico", 0, 100)) <> 0 Then
'    MsgBox "Cria��o de ponto falhou!"
'End If