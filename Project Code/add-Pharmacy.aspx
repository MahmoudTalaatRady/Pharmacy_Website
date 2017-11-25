<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add-Pharmacy.aspx.cs" Inherits="add_Pharmacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'/>
<!--//webfonts-->
<title>Add Pharmacy Order</title>
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'/>
		<link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/camera.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/responsiveslides.css"/>
		<link href="css/add-style.css" rel='stylesheet' type='text/css' />
        <link href="css/style2.css" rel="stylesheet" type="text/css"  media="all" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<script src="js/functions.js"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body onload="startTime()">
    <form id="form1" runat="server">
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
                        <asp:Button ID="btnLogout" runat="server"  type="submit" CssClass="float" Text="Log Out" OnClick="btnLogin_Click" />
				</div>
				<div class="clear"> </div>
				</div>
			</div>
<div class="clear"> </div>
				<ul id="topnav">
					<div class="wrap" id="nav">
			        <li><a href="Home.aspx">Home</a></li>
				        <li>
				            <a href="#">Pharmacists</a>
				            <span>
				                <a href="view-Pharmacist.aspx">view</a> |
				                <a href="add-Pharmacist.aspx">add</a> |
				                <a href="delete-Pharmacist.aspx">delete</a>
				            </span>
				        </li>
				        <li>
				            <a href="#">Physicians</a>
				            <span>
				                <a href="view-Physician.aspx">view </a> |
				                <a href="add-Physician.aspx">add</a> |
				                <a href="delete-Physician.aspx">delete</a>
				            </span>
				        </li>
				        <li>
				            <a href="#">Patients</a>
				            <span>
				                <a href="view-Patient.aspx">view</a> |
				                <a href="add-Patient.aspx">add</a> |
				                <a href="delete-Patient.aspx">delete</a> |
				            </span>
				        </li>
				       
        		<li><a href="#">Drugs</a>
        			 <span>
				                <a href="view-Drug.aspx">view</a> |
				                <a href="add-Drug.aspx">add</a> |
				                <a href="delete-Drug.aspx">delete</a> |
				            </span>

        		</li>
        		<li><a href="#">Companies</a>
        			 <span>
				                <a href="view-Company.aspx">view</a> |
				                <a href="add-Company.aspx">add</a> |
				                <a href="delete-Company.aspx">delete</a> |
				            </span>

        		</li>
        		<li><a href="#">Salesman</a>
        			 <span>
				                <a href="view-Salesman.aspx">view</a> |
				                <a href="add-Salesman.aspx">add</a> |
				                <a href="delete-Salesman.aspx">delete</a> |
				            </span>

        		</li>
        		<li><a href="#">Pharmacy</a>
        			 <span>
				                <a href="view-Pharmacy.aspx">view</a> |
				                <a href="add-Pharmacy.aspx">add</a> |
				                <a href="delete-Pharmacy.aspx">delete</a> |
				            </span>

        		</li>

        		</div>	
    		</ul>


<div class="main">
      <h2>Order</h2>
		   <div class="lable"> 
		        <div class="col_1_of_2 span_1_of_2" style="margin-left:200px ; margin-top:30px">	
                    <asp:DropDownList ID="drPatient" runat="server"  Height="50px" Width="383px" style="margin-left:0px" Font-Bold="True" Font-Size="Medium"  ForeColor="Gray" required>
                    </asp:DropDownList></div>
                <div class="col_1_of_2 span_1_of_2">     </div>
                <div class="clear"> </div>
                
               <div class="col_1_of_2 span_1_of_2" style="margin-left:200px ; margin-top:30px">	
                   <asp:DropDownList ID="drPhar" runat="server"  Height="50px" Width="383px" style="margin-left:0px" Font-Bold="True" Font-Size="Medium"  ForeColor="Gray" required>
                    </asp:DropDownList></div>
                <div class="col_1_of_2 span_1_of_2">     </div>
                <div class="clear"> </div>

               <div class="col_1_of_2 span_1_of_2" style="margin-left:200px ; margin-top:30px">	
                   <asp:DropDownList ID="drPhy" runat="server"  Height="50px" Width="383px" style="margin-left:0px" Font-Bold="True" Font-Size="Medium"  ForeColor="Gray" required>
                    </asp:DropDownList></div>
                <div class="col_1_of_2 span_1_of_2">     </div>
                <div class="clear"> </div>

               <div class="col_1_of_2 span_1_of_2" style="margin-left:200px ; margin-top:30px">	
                   <asp:DropDownList ID="drDrug" runat="server"  Height="50px" Width="383px" style="margin-left:0px" Font-Bold="True" Font-Size="Medium"  ForeColor="Gray" required>
                    </asp:DropDownList></div>
                <div class="col_1_of_2 span_1_of_2">     </div>
                <div class="clear"> </div>

                 
		   <div class="submit">
               <asp:Label ID="lbltryCatch" runat="server" ForeColor="#FF3300"></asp:Label>
               <asp:Button ID="btnAddOrder" runat="server" CssClass="submit" Text="Add Order" OnClick="btnAddOrder_Click" />
		   </div>
		   <div class="clear"> </div>
		<!-----//end-main---->
		</div>
		 
   		<script type="text/javascript">
		var d = new Date();
		document.getElementById("date").innerHTML = d.toDateString();

		</script>
    </form>
</body>
</html>
