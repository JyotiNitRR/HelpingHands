<!DOCTYPE html>
<html class="no-js">
<%@page import="ngo.com.bo.User" %>
    <head>
        <meta charset="utf-8">
        <title>Helping Hands</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">

        <!-- Template main Css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Modernizr -->
        <script src="assets/js/modernizr-2.6.2.min.js"></script>


    </head>

    <body>


    <header class="main-header">
        
    
        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-6 col-xs-12">

                        <ul class="list-unstyled list-inline header-contact">
                            <li> <i class="fa fa-phone"></i> <a href="tel:">+91 9691133221 </a> </li>
                             <li> <i class="fa fa-envelope"></i> <a href="mailto:contact@helpinghands.org">pandeyjyoti1819@gmail.com</a> </li>
                       </ul> <!-- /.header-contact  -->
                      
                    </div>

                    <div class="col-sm-6 col-xs-12 text-right">

                        <ul class="list-unstyled list-inline header-social">

                            <li> <a href="https://www.facebook.com/"> <i class="fa fa-facebook"></i> </a> </li>
                            <li> <a href="https://twitter.com/?lang=en"> <i class="fa fa-twitter"></i>  </a> </li>
                            <li> <a href="https://www.google.com/"> <i class="fa fa-google"></i>  </a> </li>
                            <li> <a href="https://www.youtube.com/"> <i class="fa fa-youtube"></i>  </a> </li>
                            <!-- <li> <a href="#"> <i class="fa fa fa-pinterest-p"></i>  </a> </li> -->
                       </ul> <!-- /.header-social  -->
                      
                    </div>


                  </div>
              </div>

            </div>

            <div class="navbar-main">
              
              <div class="container">

                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                  </button>
                  
                  <a class="navbar-brand" href="index.jsp">Helping Hands</a>
                  
                </div>
                <% 
            		User user = null;
						if(session.getAttribute("user") != null){
							user = (User)session.getAttribute("user");
						}
				%>

                <div id="navbar" class="navbar-collapse collapse pull-right">

                  <ul class="nav navbar-nav">

                    <li><a class="is-active" href="index.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>

                    
                    
                    <!-- <li class="has-child"><a href="#">CAUSES</a>

                      <ul class="submenu">
                         <li class="submenu-item"><a href="causes.html">Causes list </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                         <li class="submenu-item"><a href="causes-single.html">Single cause </a></li>
                      </ul>

                    </li> -->
                    <li><a href="gallery.jsp">GALLERY</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <%if(user != null){%>
                    	<li><a href="ShowDonationsController">DONATIONS</a></li>
                    	<li><a href="#"><%=user.getName().toUpperCase() %></a></li>
                    	<li><a href="LogoutController">LOGOUT</a></li>
                    <%} %>
                    
                    <%if(user == null){ %>
                    	<li><a href="login.jsp">LOGIN</a></li>
                    	<li><a href="SignupPart1.jsp">SIGNUP</a></li>
                    <%} %>

                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

    </header> <!-- /. main-header -->




    <!-- Carousel
    ================================================== -->
    <div id="homeCarousel" class="carousel slide carousel-home" data-ride="carousel">

          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#homeCarousel" data-slide-to="1"></li>
            <li data-target="#homeCarousel" data-slide-to="2"></li>
          </ol>

          <div class="carousel-inner" role="listbox">

            <div class="item active">

              <img src="assets/images/slider/home-slider-1.jpg" alt="">

              <div class="container">

                <div class="carousel-caption">
					<% if(request.getAttribute("message") != null){ %>
							<h4 class="carousel-subtitle bounceInUp animated slow "><%=request.getAttribute("message") %></h4>
							<%response.setHeader("refresh", "2; url=index.jsp");%>
						<%-- <%}else{%>
							<h4 class="carousel-subtitle bounceInUp animated slow "><%="unsuccessful" %></h4>
							<%response.setHeader("refresh", "2; url=index.jsp");%>
						<%} %> --%>
						 
					<%} %>
               	  <h2 class="carousel-title bounceInDown animated slow">Because they need your help</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow ">Do not let them down</h4>
                  <a href="#" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow" data-toggle="modal" data-target="#donateModal">DONATE NOW</a>

                </div> <!-- /.carousel-caption -->

              </div>

            </div> <!-- /.item -->


            <div class="item ">

              <img src="assets/images/slider/home-slider-2.jpg" alt="">

              <div class="container">

                <div class="carousel-caption">

                  <h2 class="carousel-title bounceInDown animated slow">Together we can improve their lives</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow"> So let's do it !</h4>
                  <a href="#" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated" data-toggle="modal" data-target="#donateModal">DONATE NOW</a>

                </div> <!-- /.carousel-caption -->

              </div>

            </div> <!-- /.item -->




            <div class="item ">

              <img src="assets/images/slider/home-slider-3.jpg" alt="">

              <div class="container">

                <div class="carousel-caption">

                  <h2 class="carousel-title bounceInDown animated slow" >A penny is a lot of money, if you have not got a penny.</h2>
                  <h4 class="carousel-subtitle bounceInUp animated slow">You can make the diffrence !</h4>
                  <a href="#" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow" data-toggle="modal" data-target="#donateModal">DONATE NOW</a>

                </div> <!-- /.carousel-caption -->

              </div>

            </div> <!-- /.item -->

          </div>

          <a class="left carousel-control" href="#homeCarousel" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>

          <a class="right carousel-control" href="#homeCarousel" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>

    </div><!-- /.carousel -->

    <div class="section-home about-us fadeIn animated">

        <div class="container">

            <div class="row">

                <div class="col-md-3 col-sm-6">
                
                  <div class="about-us-col">

                        <div class="col-icon-wrapper">
                          <img src="assets/images/icons/our-mission-icon.png" alt="">
                        </div>
                        <h3 class="col-title">our mission</h3>
                        <div class="col-details">

                          <p>Our mission is to provide best services to the needy peoples.</p>
                          
                        </div>
                        <a href="about.jsp" class="btn btn-primary"> Read more </a>
                    
                  </div>
                  
                </div>


                <div class="col-md-3 col-sm-6">
                
                  <div class="about-us-col">

                        <div class="col-icon-wrapper">
                          <img src="assets/images/icons/make-donation-icon.png" alt="">
                        </div>
                        <h3 class="col-title">Make donations</h3>
                        <div class="col-details">

                          <p>Donate your unneccessary things. One can be happy with our one help.</p>
                          
                        </div>
                        <a href="about.jsp" class="btn btn-primary"> Read more </a>
                    
                  </div>
                  
                </div>


                <div class="col-md-3 col-sm-6">
                
                  <div class="about-us-col">

                        <div class="col-icon-wrapper">
                          <img src="assets/images/icons/help-icon.png" alt="">
                        </div>
                        <h3 class="col-title">Help & support</h3>
                        <div class="col-details">

                          <p>Please help and support us to change the future of needy childrens.</p>
                          
                        </div>
                        <a href="about.jsp" class="btn btn-primary"> Read more </a>
                    
                  </div>
                  
                </div>


                <div class="col-md-3 col-sm-6">
                
                  <div class="about-us-col">

                        <div class="col-icon-wrapper">
                          <img src="assets/images/icons/programs-icon.png" alt="">
                        </div>
                        <h3 class="col-title">our programs</h3>
                        <div class="col-details">

                          <p>We organised various programs to reach maximum no. of people throughout the year.</p>
                          
                        </div>
                        <a href="about.jsp" class="btn btn-primary"> Read more </a>
                    
                  </div>
                  
                </div>
                

                
            </div>

        </div>
      
    </div> <!-- /.about-us -->

    <div class="section-home home-reasons">

        <div class="container">

            <div class="row">
                
                <div class="col-md-6">

                    <div class="reasons-col animate-onscroll fadeIn">

                        <img src="assets/images/reasons/we-fight-togother.jpg" alt="">

                        <div class="reasons-titles">

                            <h3 class="reasons-title">We fight together</h3>
                            <h5 class="reason-subtitle">We are humans</h5>
                            
                        </div>

                        <div class="on-hover hidden-xs">
                            
                                <p> When you donate for such children through our NGO, you are bringing them out of danger and giving them a protected environment to live with all the basic necessities and have a fair shot in life.

We will also send you the details of your beneficiary along with an annual report about their educational progress. If you want to meet the child in person, we can arrange a visit for you to get first-hand feedback on the change your donation has brought to the child life.

Support our operation kindness through donation for orphans. Your donation can change generations for life.</p>
<p>
There are children in India who were born to some parents but are now left alone to fend for themselves. These children are either thrown in a dumpster or left to survive in the orphanage, with no idea where to earn their bread and butter. It would be natural to think for such children and take affirmative action in some form.

While there are several means to support them, one of the most trusted ways is to get associated with an NGO. Your donation for orphans through an NGO will ensure that the children are not shunted out to brave the streets without any help or support.
</p>
                                
                        </div>
                    </div>
                    
                </div>


                <div class="col-md-6">

                    <div class="reasons-col animate-onscroll fadeIn">

                        <img src="assets/images/reasons/we-care-about.jpg" alt="">

                        <div class="reasons-titles">

                            <h3 class="reasons-title">WE care about others</h3>
                            <h5 class="reason-subtitle">We are humans</h5>
                            
                        </div>

                        <div class="on-hover hidden-xs">
                            
                                <p> 
There are children in India who were born to some parents but are now left alone to fend for themselves. These children are either thrown in a dumpster or left to survive in the orphanage, with no idea where to earn their bread and butter. It would be natural to think for such children and take affirmative action in some form.

If your heart breaks for orphaned or abandoned children, you might be looking for, orphanage near me to donate food or money.<br> In addition to finding nearby orphanages, you can also take a look at the following ways to donate and help the orphans in need.

Donate Clothes and Toys, Sponsor Food and Healthcare, Support education
Growing children always need clothes and toys, but the financial condition of orphans might not be able to cover their needs. However, you can help them by donating these things, especially during the festive season, to make them feel the love and affection of having a family. Additionally, you can also sponsor their school uniforms and other school supplies like books and stationery and see them grow into confident teens.
</p>


                                
                        </div>


                    </div>
                    
                </div>


            </div>
          
  

        </div>
      

    </div> <!-- /.home-reasons -->

    <div class="section-home our-causes animate-onscroll fadeIn">

        <div class="container">

            <h2 class="title-style-1">Our Causes <span class="title-under"></span></h2>

            <div class="row">

                <div class="col-md-3 col-sm-6">

                    <div class="cause">

                        <img src="assets/images/causes/cause-hunger.jpg" alt="" class="cause-img">

                        <!-- <div class="progress cause-progress">
                          <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                            10$ / 500$
                          </div>
                        </div> -->

                        <h4 class="cause-title"><a href="#">HUNGER AND POVERTY </a></h4>
                        <div class="cause-details">
                            Poverty can contribute to worsening malnutrition by compromising the quality of food intake and bolstering hidden hunger which is the deficiency. Please donate foods to fight against the poverty and hunger.
                        </div>

                        <div class="btn-holder text-center">

                          <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#donateModal"> DONATE NOW</a>
                          
                        </div>

                        

                    </div> <!-- /.cause -->
                    
                </div> 

                <div class="col-md-3 col-sm-6">

                    <div class="cause">

                        <img src="assets/images/causes/cause-education.jpg" alt="" class="cause-img">

                       <!--  <div class="progress cause-progress">
                          <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            400$ / 700$
                          </div>
                        </div> -->

                        <h4 class="cause-title"><a href="#">EDUCATION AND TRAINING</a></h4>
                        <div class="cause-details">
                             Early childhood is not only preparation for primary school, it also aims to develop basic life skills in children to lay a foundation of lifelong learning and sucess. It also ensure social developement of a child.
                        </div>

                        <div class="btn-holder text-center">

                          <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#donateModal"> DONATE NOW</a>
                          
                        </div>

                        

                    </div> <!-- /.cause -->
                    
                </div>


                <div class="col-md-3 col-sm-6">

                    <div class="cause">

                        <img src="assets/images/causes/cause-rights.jpg" alt="" class="cause-img">

                        <!-- <div class="progress cause-progress">
                          <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                            400$ / 1000$
                          </div>
                        </div> -->

                        <h4 class="cause-title"><a href="#">HUMAN RIGHTS</a></h4>
                        <div class="cause-details">
                             Everyone has the right to freedom of opinion and expression, this right includes freedom to hold opinions without interference and seek to receive and impact information and ideas through any media.
                        </div>

                        <div class="btn-holder text-center">

                          <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#donateModal"> DONATE NOW</a>
                          
                        </div>

                        

                    </div> <!-- /.cause -->
                    
                </div>

                <div class="col-md-3 col-sm-6">

                    <div class="cause">

                        <img src="assets/images/causes/cause-culture.jpg" alt="" class="cause-img">

                       <!--  <div class="progress cause-progress">
                          <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            400$ / 700$
                          </div>
                        </div> -->

                        <h4 class="cause-title"><a href="#">ARTS AND CULTURE </a></h4>
                        <div class="cause-details">
                            Culture plays an important role in the development of any nation. Arts influences society by changing opinions, installing values and translating experiences across space and time.
                        </div>

                        <div class="btn-holder text-center">

                          <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#donateModal"> DONATE NOW</a>
                          
                        </div>

                        

                    </div> <!-- /.cause -->
                    
                </div>

            </div>

        </div>
        
    </div> <!-- /.our-causes -->

    




    <div class="section-home our-sponsors animate-onscroll fadeIn">
    
        <div class="container">

            <h2 class="title-style-1">Our Sponsors <span class="title-under"></span></h2>

            <ul class="owl-carousel list-unstyled list-sponsors">

              <li> <img src="assets/images/sponsors/bus.png" alt=""></li>
              <li> <img src="assets/images/sponsors/wikimedia.png" alt=""></li>
              <li> <img src="assets/images/sponsors/one-world.png" alt=""></li>
              <li> <img src="assets/images/sponsors/wikiversity.png" alt=""></li>
              <li> <img src="assets/images/sponsors/united-nations.png" alt=""></li>

              <li> <img src="assets/images/sponsors/bus.png" alt=""></li>
              <li> <img src="assets/images/sponsors/wikimedia.png" alt=""></li>
              <li> <img src="assets/images/sponsors/one-world.png" alt=""></li>
              <li> <img src="assets/images/sponsors/wikiversity.png" alt=""></li>
              <li> <img src="assets/images/sponsors/united-nations.png" alt=""></li>

            </ul>

        </div>

    </div> <!-- /.our-sponsors -->


    


    <footer class="main-footer">

        <div class="footer-top">
            
        </div>


         <div class="footer-main">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">About us <span class="title-under"></span></h4>

                            <div class="footer-content">
                                <p>
                                    <strong>Helping Hands</strong> We firmly believe that every child deserves the best chance for a bright future, which is why, we are fiercely committed to ensure that children not only survive, but thrive. With a bold ambition and a powerful vigilance, we do whatever it takes to save the children.In India and across the world, Helping Hands works on-ground every day and especially, in times of crisis. 
                                </p> 

                                <p>
                                    Our pioneering programs address children unique needs; giving them a healthy start, an opportunity to learn as well as protection from harm. 
                                </p>

                            </div>
                            
                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">LAST TWEETS <span class="title-under"></span></h4>

                            <div class="footer-content">
                                <ul class="tweets list-unstyled">
                                    <li class="tweet"> 
                                        Helping Hand proofs their statement "No child should grow up alone" by their work. -Rashmi Singh
									</li>

                                    <li class="tweet"> 

                                        Environment of Helping Hands is really great, children here are not only given food and education but also a family to ensure proper mental wellbeing. -Sakshi Sinha

                                    </li>

                                    <li class="tweet"> 
										Supporting orphaned and vulnerable children while bringing about sustainable change is done here. -Rahul Thakur 
                                    </li>

                                </ul>
                            </div>
                            
                        </div>

                    </div>


                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">Contact us <span class="title-under"></span></h4>

                            <div class="footer-content">

                                <div class="footer-form" >
                                    <br>
                                	Helping Hands, Plot No. 4, Block C-1,<br> Institutional Area, Nelson Mandela Marg,<br> Vasant Kunj, New Delhi, Delhi 110070
                                   <!--  <form action="php/mail.php" class="ajax-form">

                                        <div class="form-group">
                                            <input type="text" name="name" class="form-control" placeholder="Name" required>
                                        </div>

                                         <div class="form-group">
                                            <input type="email" name="email" class="form-control" placeholder="E-mail" required>
                                        </div>

                                        <div class="form-group">
                                            <textarea name="message" class="form-control" placeholder="Message" required></textarea>
                                        </div>

                                        <div class="form-group alerts">
                        
                                            <div class="alert alert-success" role="alert">
                                              
                                            </div>

                                            <div class="alert alert-danger" role="alert">
                                              
                                            </div>
                                            
                                        </div>

                                         <div class="form-group">
                                            <button type="submit" class="btn btn-submit pull-right">Send message</button>
                                        </div>
                                        
                                    </form> -->
									<br><br>
									<img src="assets/images/c.jpg" alt="" class="cause-img" height ="150" weight="150">
                                </div>
                            </div>
                            
                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">

            <div class="container text-right">
                Helping Hands <a href="http://www.ouarmedia.com" target="_blank"></a>
            </div>
        </div>
        
    </footer>




    <!-- Donate Modal -->
    <div class="modal fade" id="donateModal" tabindex="-1" role="dialog" aria-labelledby="donateModalLabel" aria-hidden="true">

      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="donateModalLabel">DONATE NOW</h4>
          </div>
          <div class="modal-body">

                <form class="form-donation" action="AddDonationController" method="post">

                        <h3 class="title-style-1 text-center">Thank you for your donation <span class="title-under"></span>  </h3>

                        <div class="row">

                            <div class="form-group col-md-6 ">
                                <label id="item">Item Type</label>
                                 <select class="form-control" id="item" name="item" >
                                 	<option value="-1" selected>Category</option>
								    <option value="Food">Food Items</option>
								    <option value="Books and Stationaries">Books and Stationaries</option>
								    <option value="Medicine">Medicine</option>
								    <option value="Clothes">Clothes</option>
								    <option value="Others">Others</option>
								  </select>
                            	</div>
                            	<div class="form-group col-md-6">
                            	<label id="DOB">Your Date of birth</label>
                                	<input type="date" class="form-control" name="dob" placeholder="Your Age">
                            	</div>
                            	
								
                        </div>


                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="firstName" placeholder="First name*">
                            </div>

                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="lastName" placeholder="Last name*">
                            </div>
                        </div>


                        <div class="row">

                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="email" placeholder="Email*">
                            </div>

                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="phone" placeholder="Phone">
                            </div>

                        </div>

                        <div class="row">

                            <div class="form-group col-md-12">
                                <input type="text" class="form-control" name="address" placeholder="Address">
                            </div>

                        </div>


                        <div class="row">

                            <div class="form-group col-md-12">
                                <textarea cols="30" rows="4" class="form-control" name="itemDetails" placeholder="Item specification and Quantity"></textarea>
                            </div>

                        </div>
                        

                        <div class="row">

                            <div class="form-group col-md-12">
                                <button type="submit" class="btn btn-primary pull-right" name="donateNow" >DONATE NOW</button>
                            </div>

                        </div>



                       
                    
                </form>
            
          </div>
        </div>
      </div>

    </div> <!-- /.modal -->





    <!--  Scripts
    ================================================== -->

    <!-- jQuery -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>

    <!-- Bootsrap javascript file -->
    <script src="assets/js/bootstrap.min.js"></script>
    
    <!-- owl carouseljavascript file -->
    <script src="assets/js/owl.carousel.min.js"></script>

    <!-- Template main javascript -->
    <script src="assets/js/main.js"></script>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
        function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
        e=o.createElement(i);r=o.getElementsByTagName(i)[0];
        e.src='//www.google-analytics.com/analytics.js';
        r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
        ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>

    </body>
</html>
