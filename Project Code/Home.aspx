<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<title>pharmacy</title>
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'/>
		<link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/camera.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/responsiveslides.css"/>
        <link href="css/style2.css" rel="stylesheet" type="text/css"  media="all" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<script src="js/functions.js"></script>

			
		
		
		 
		 <style >
							 /* The container <div> - needed to position the dropdown content */
					.dropdown {
					    position: relative;
					    display: inline-block;
					}

					/* Dropdown Content (Hidden by Default) */
					.dropdown-content {
					    display: none;
					    position: absolute;
					    background-color: #0f6d75;
					    width: 100%;
					    
					    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
					}

					/* Links inside the dropdown */
					.dropdown-content a {
						display: inline-block;
						width: 60px;
						height: 20px;
					    color: white;
					    padding: 12px 16px;
					    text-decoration: none;
					    
					}

					/* Change color of dropdown links on hover */
					.dropdown-content a:hover {background-color: #f1f1f1}

					/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
					.show {display:block;}



		 </style>
</head>
<body onload="startTime()">
			<div class="header">
				<div class="wrap" id="wrap1">
				<div class="logo">
					<a href="Home.aspx"><img src="images/logo.png" title="logo" /></a>                
				</div>
				<div class="contact-info">
					<ul>
						<li>TODAY</li>
						<li id ="date"></li>
						<li id="time"></li>
					</ul>
                    <form id="formlogout" runat="server">
                        <asp:Button ID="btnLogout" runat="server"  type="submit" CssClass="float" Text="Log Out" OnClick="btnLogin_Click" />
                    </form>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
					
		<div class="clear"> </div>
			
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
							<div class="grids">

							 	
									<div class="grid box">
										<h4>Pharmacists</h4>
										<div class="dropdown">
										<img src="images/grid1.png" title="Pharmacists" onclick="myFunction()" class="dropbtn" />
										<div id="myDropdown" class="dropdown-content">
    										<a href="view-Pharmacist.aspx">view</a>
    										<a href="add-Pharmacist.aspx">add</a>
    										<a href="delete-Pharmacist.aspx">delete</a>
  										</div>
									</div>
								</div>


							<div class="grid box">
								<h4>Physicians</h4>
										<div class="dropdown">
										<img src="images/grid2.png" title="Physicians" onclick="myFunction2()" class="dropbtn" />
										<div id="myDropdown2" class="dropdown-content">
    										<a href="view-Physician.aspx">view</a>
    										<a href="add-Physician.aspx">add</a>
    										<a href="delete-Physician.aspx">delete</a>
  										</div>
									</div>
							</div>


							<div class="grid box">
								<h4>Patients</h4>
									<div class="dropdown">
										<img src="images/grid3.png" title="Patients" onclick="myFunction3()" class="dropbtn" />
										<div id="myDropdown3" class="dropdown-content">
    										<a href="view-Patient.aspx">view</a>
    										<a href="add-Patient.aspx">add</a>
    										<a href="delete-Patient.aspx">delete</a>
  										</div>
									</div>
							</div>


							<div class="grid box">
								<h4>drugs</h4>
									<div class="dropdown">
										<img src="images/grid4.png" title="drugs" onclick="myFunction4()" class="dropbtn" />
										<div id="myDropdown4" class="dropdown-content">
    										<a href="view-Drug.aspx#">view</a>
    										<a href="add-Drug.aspx">add</a>
    										<a href="delete-Drug.aspx">delete</a>
  										</div>
									</div>
							</div>


							<div class="grid box" id="pharmacy">
								<h4>companies</h4>
									<div class="dropdown">
										<img src="images/grid5.png" title="companies" onclick="myFunction5()" class="dropbtn" />
										<div id="myDropdown5" class="dropdown-content">
    										<a href="view-Company.aspx">view</a>
    										<a href="add-Company.aspx">add</a>
    										<a href="delete-Company.aspx">delete</a>
  										</div>
									</div>
							</div>


							<div class="grid box">
								<h4>Salesman</h4>
									<div class="dropdown">
										<img src="images/grid6.png" title="Salesman" onclick="myFunction6()" class="dropbtn" />
										<div id="myDropdown6" class="dropdown-content">
    										<a href="view-Salesman.aspx">view</a>
    										<a href="add-Salesman.aspx">add</a>
    										<a href="delete-Salesman.aspx">delete</a>
  										</div>
									</div>
							</div>


							<div class="grid box" >
								<h4>pharmacy Order</h4>
									<div class="dropdown">
										<img src="images/grid7.png" title="pharmacy" onclick="myFunction7()" class="dropbtn" />
										<div id="myDropdown7" class="dropdown-content">
    										<a href="view-pharmacy.aspx">view</a>
    										<a href="add-pharmacy.aspx">add</a>
    										<a href="delete-pharmacy.aspx">delete</a>
  										</div>
									</div>
							</div>



							<div class="clear"> </div>
						 </div>
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		<div class="section group" id="section-foo">
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
					<a href="Home.aspx"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="right-content">
					<p>all-care pharmacy  &#169	 All Rights Reserved | Developed By Mahmoud Talaat</p>
				</div>
				<div class="clear" id="clear-footer"> </div>
			</div>
		</div>

		<script type="text/javascript">
		var d = new Date();
		document.getElementById("date").innerHTML = d.toDateString();

		</script>
	
	</body>
</html>
