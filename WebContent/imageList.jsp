<%@page import="fashionHub.com.DBUtil.*"%>
<%@page import="fashionHub.com.Object.Image"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="fashionHub.com.Servlet.ServletHandler"%>

<body>
<%@ include file="header.jsp"%>
<br>
<h2>User List</h2>
<br>
<h4 style="color: red;"><%=ServletHandler.getErrorMessage(request)%></h4>
<h4 style="color: green;"><%=ServletHandler.getSuccessMessage(request)%></h4>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Image Name</th>
      <th scope="col">Image Length</th>
      <th scope="col">Username</th>
      <th scope="col">Image</th>
    </tr>
  </thead>
  <tbody>
  <%
      int index=1;
      List list=ServletHandler.getList(request);
      Iterator it=list.iterator();
      while(it.hasNext()){
      	Image img=(Image)it.next();
  %>
    <tr>
      
      <td><%=img.getImage_name()%></td>
      <td><%=img.getImage_length()%></td>
      <td><%=img.getUsername()%></td>
      <td><img src="data:image/jpg;base64,<%=img.getBase64Image() %>" alt="Item Image" width="250" height="300"><br></td>
    </tr>
<%} %>
  </tbody>
</table>
<%@ include file="footer.jsp"%>
</body>