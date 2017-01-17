

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Bootstrap Login Template</title>
<meta name="viewport"
       content="width=device-width, initial-scale=1, maximum-scale=1">

<link
       href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
       rel="stylesheet">

<style type="text/css">
.modal-footer {
       border-top: 0px;
}
</style>
</head>

<body>

       <!--login modal-->
       <div id="loginModal">
              <div class="modal-dialog">
                     <div class="modal-content">
                          
                           <!-- Header Section -->
                           <div class="modal-header">
                                  <h2>Please sign in</h2>
                           </div>
                          
                           <!-- Body Section -->
                           <div class="modal-body">
                                  <form class="form col-md-12">

                                         <input type="text" class="form-control input-lg" placeholder="Email" required autofocus />
                                         <input type="password" class="form-control input-lg" placeholder="Password" required />
                                        
                                         <label class="checkbox"> <input type="checkbox"
                                                value="remember-me" /> Remember me
                                         </label>
                                        
                                         <button class="btn btn-primary btn-lg btn-block">Sign In</button>
                                  </form>
                           </div>
                          
                           <!-- Footer Section -->
                           <div class="modal-footer">
                                  <div class="col-md-12">
                                         <span class="pull-left"><a href="forgotpassword">Forgot Password?</a></span>
                                         <span><a href="#">Register</a></span>
                                  </div>
                           </div>
                     </div>
              </div>
       </div>

       <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>