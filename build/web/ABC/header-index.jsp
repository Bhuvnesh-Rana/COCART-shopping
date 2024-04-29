
<style>background-color: #fffdbc</style>
<nav class="navbar navbar-expand-md bg-light navbar-dark">
<div class="container-fluid" id="header">
    
    <div class="row">
        <a class="navbar-brand" id="nav" href="#">COCART</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
  </button>
        <ul class="navbar-nav" >
    <%--  <li class="nav-item">
          <button id="button" type="submit" value="Login.jsp" onclick="location=this.value">Login</button> 
      </li>--%>
    <div class="bthov">
      <li class="nav-item">
          <select id="button" onchange="location=this.value">
              <option value="#"  hidden >Login</option>
              <option value="Login.jsp">User Login</option>
              <option value="Admin-Login.jsp">Admin Login</option>
          </select>
      </li></div>
       <li class="nav-item">
          <button id="button_S" type="submit" value="Signup.jsp" onclick="location=this.value">Signup</button> 
      </li>
      
              </ul>        
    </div>
    </div>
</nav>