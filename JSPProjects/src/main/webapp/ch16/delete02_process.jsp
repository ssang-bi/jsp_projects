<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Database SQL</title>
    </head>
    <body>
        <%@ include file="dbconn.jsp" %>
        <%
            request.setCharacterEncoding("utf-8");

            String id = request.getParameter("id");
            String passwd = request.getParameter("passwd");
            String name = request.getParameter("name");

            ResultSet rs = null;
            PreparedStatement pstmt = null;

            try {
                String sql="SELECT id, passwd FROM Member WHERE id=?";

                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, id);
                rs = pstmt.executeQuery();

                if (rs.next()){
                    String rId = rs.getString("id");
                    String rPasswd = rs.getString("passwd");

                    if (id.equals(rId) && passwd.equals(rPasswd)) {
                        sql="DELETE FROM Member WHERE id=? AND passwd=?";
                        pstmt=conn.prepareStatement(sql);
                        pstmt.setString(1,id);
                        pstmt.setString(2,passwd);
                        pstmt.executeUpdate();
                        out.println("Member 테이블에서 데이터를 삭제했습니다.");
                    }
                    else out.println("일치하는 비밀번호가 아닙니다.");
                }
                else out.println("Member 테이블에 일치하는 아이디가 없습니다.");
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
            } finally{
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
        %>
    </body>
</html>