<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Database SQL</title>
    </head>
    <body>
        <%@ include file="dbconn.jsp" %>
        <table width="300" border="1" >
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
            </tr>
            <%
                ResultSet rs = null;
                Statement stmt = null;

                try{
                    String sql="SELECT * FROM Member";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);

                    while (rs.next()){
                        String id = rs.getString("id");
                        String passwd = rs.getString("passwd");
                        String name = rs.getString("name");
            %>
            <tr>
                <th><%=id %></th>
                <th><%=passwd %></th>
                <th><%=name %></th>
            </tr>
            <%
                    }
                } catch (SQLException ex){
                    out.println("Member 테이블 삽입이 실패했습니다.<br>");
                    out.println("SQLexception: " + ex.getMessage());
                } finally{
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </table>
    </body>
</html>