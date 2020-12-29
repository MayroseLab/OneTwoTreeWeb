<%
response.expires=-1
sql="SELECT * FROM Tasks"

set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("/PhyComb/PhyComb.db"))
set rs=Server.CreateObject("ADODB.recordset")
rs.Open sql,conn

response.write("<table>")
do until rs.EOF
  for each x in rs.Fields
    response.write("<tr><td><b>" & x.UniqueID & "</b></td>")
    response.write("<td>" & x.Name & "</td></tr>")
  next
  rs.MoveNext
loop
response.write("</table>")
%>