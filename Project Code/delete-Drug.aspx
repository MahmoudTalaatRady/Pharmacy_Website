<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delete-Drug.aspx.cs" Inherits="delete_Drug" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'/>
<!--//webfonts-->
<title>Delete Drug</title>
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
                        <asp:Button ID="btnLogout" runat="server"  type="submit" CssClass="float" Text="Log Out" OnClick="btnLogin_Click" UseSubmitBehavior="False" />
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
		   <div class="lable"> 
		        <div class="col_1_of_2 span_1_of_2">	<asp:TextBox ID="txtSearchID" runat="server" CssClass="text" placeholder="Search By ID"></asp:TextBox></div>
                <div class="col_1_of_2 span_1_of_2">    </div>
                <div class="clear"> 
           </div>

           <div class="submit">
		        <div class="col_1_of_2 span_1_of_2">	
                    <asp:Button ID="btnSearch" runat="server" CssClass="submit" Text="Search" OnClick="btnSearch_Click" />
		        </div>
                <div class="col_1_of_2 span_1_of_2">
                    <asp:Button ID="btnDelete" runat="server" CssClass="submit" Text="Delete" OnClick="btnDelete_Click" />
                </div>
		        <asp:Label ID="lblOk" runat="server" ForeColor="#FF3300"></asp:Label>
		   </div>
</div>
    </div>
		   <div style="margin-left:150px">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align:center ; Width: 1500px ; font-size:20px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                       <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                       <asp:BoundField DataField="Maximum_Dose" HeaderText="Maximum_Dose" SortExpression="Maximum_Dose" />
                       <asp:BoundField DataField="Minimum_Dose" HeaderText="Minimum_Dose" SortExpression="Minimum_Dose" />
                       <asp:BoundField DataField="Prep_Date" HeaderText="Prep_Date" SortExpression="Prep_Date" />
                       <asp:BoundField DataField="Exp_Date" HeaderText="Exp_Date" SortExpression="Exp_Date" />
                       <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                       <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                       <asp:BoundField DataField="Company_ID" HeaderText="Company_ID" SortExpression="Company_ID" />
                       <asp:BoundField DataField="Salesman_ID" HeaderText="Salesman_ID" SortExpression="Salesman_ID" />
                   </Columns>
                   <EditRowStyle BackColor="#7C6F57" />
                   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#E3EAEB" />
                   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F8FAFA" />
                   <SortedAscendingHeaderStyle BackColor="#246B61" />
                   <SortedDescendingCellStyle BackColor="#D4DFE1" />
                   <SortedDescendingHeaderStyle BackColor="#15524A" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SELECT * FROM [TBL_Drug] WHERE (([ID] = @ID) OR ([Price] = @Price))




">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="txtSearchID" Name="ID" PropertyName="Text" Type="Int32" />
                       <asp:ControlParameter ControlID="txtSearchID" Name="Price" PropertyName="Text" />
                   </SelectParameters>
               </asp:SqlDataSource>
		   </div>

		<!-----//end-main---->
	
		 
   		<script type="text/javascript">
		var d = new Date();
		document.getElementById("date").innerHTML = d.toDateString();

		</script>
    </form>
</body>
</html>

