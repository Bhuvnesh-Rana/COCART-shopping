<html>
   
    <%@include file="cdn.jsp" %>

<body>
<nav class="navbar navbar-expand-md bg-light navbar-dark">
<div class="container-fluid" id="header">
    
    <div class="row">
        <a class="navbar-brand" id="nav" href="Home_Page0.jsp">COCART</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
  </button>
              <div class="ll"> <ul class="navbar-nav">
                 
      <li class="nav-item">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item" id="ramp">
        <a class="nav-link" href="About.jsp">About</a>
      </li>
      
    <%--  <li class="nav-item" id="ramp">
          <button id="jj" type="button" data-toggle="modal" data-target="#cart"><i class="bi bi-cart4">Cart</i></button>
      </li> --%>
      <li class="nav-item" id="ramp">
          <a class="nav-link" data-toggle="modal" data-target="#cart"><i class="bi bi-cart4">Cart</i></a>
      </li>
    <%--  <li class="nav-item">
        <a class="nav-link" href="index.jsp">Logout</a>
      </li>
      <li class="nav-item" id="name">
        <a class="nav-link" ><%String uname = (String)session.getAttribute("username");
                                                            out.println(uname);%></a>
      </li>--%>
      <li class="nav-item">
          <select id="buttonh" name="pro" onchange="location=this.value">
              <option value="" hidden><%String uname = (String)session.getAttribute("username");out.println(uname);%></option>
              <option value="Profile.jsp">Profile</option>
              <option value="User_orders.jsp">Orders</option>
              <option value="index.jsp">Logout</option>
              
              
              
          </select>
      </li>
              
              </ul>        
    </div>
    </div>    </div>

</nav>
              <%@include file="../Model.jsp" %> 
</body>
</html>
