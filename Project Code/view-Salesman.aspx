<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-Salesman.aspx.cs" Inherits="view_Salesman" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'/>
<!--//webfonts-->
<title>View Pharmacist</title>
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'/>
		<link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href="css/add-style.css" rel='stylesheet' type='text/css' />

		<link href="css/style2.css" rel="stylesheet" type="text/css"  media="all" />

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<script src="js/functions.js"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>

    <style type="text/css">
					.lable input[type="text"] {
					width: 20%;
				}

				.lable button[type="submit"]{
					width: 20%;
					margin-left: 20px;
				}

				 .grid-view{
					margin: 20px 335px 20px 335px;
					width: 60%;					
				}
				.report-grid{
					width: 80%;
					margin-left: 100px;
					margin-right: 100px;
				}

				.view-btn{
					width: 20%;
					margin-top: 20px;
					margin-left: 650px;
				}

				hr{
					margin-top: 0px;
					margin-bottom: 3px;
					width: 70%;
					color: white;

				}

				.print-btn{
					margin-top: 20px;
					margin-left: 380px;
			  background: #0f6d75;
			  border: none;
			  font-size: 1.3em;
			  font-weight: 200;
			  padding: 5px 0;
			  width: 20%;
			  border-radius: 3px;
			  color: white;
			  border-bottom: 4px solid #0f6d75;
				}

			.print-btn:hover{
				background: #17a7b5;
			  -webkit-animation: hop 1s;
			  animation: hop 1s;
			  cursor: pointer;

			}



			</style>

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


<div class="clear"> </div>
        
<div class="clear" style="margin-top:20px ; margin-left:100px"> 
        <asp:Button ID="btnShowAll" runat="server" type="submit" class="view-btn" Width="10%" Text="show all" OnClick="btnShowAll_Click" />
        </div>
    		<!-- div for grid view-->


    		<div class="grid-view" style="width=100%"> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" style="text-align:center ; Width: 100% ; font-size:20px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Pharmaceutical_Company" HeaderText="Pharmaceutical_Company" SortExpression="Pharmaceutical_Company" />
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
    		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SELECT * FROM [TBL_Salesman]">
                </asp:SqlDataSource>
    		</div>

<!-- copy from here-->

			<hr>
    		<hr>

    		<div class="grid-view"> 
    			<div class="lable">

                    <asp:Label ID="Label1" runat="server" Style="font-size:20px" Text="The Salesman Who Made The Maximum Number Of Orders:" ForeColor="White"></asp:Label>
                    
                    <asp:Button ID="btnMakeReport"  type="submit" runat="server" Text="Make Report" Width="20%" style="margin-left:150px" OnClick="btnMakeReport_Click" />
				
				</div>

				<!-- div for report-->
				<div class="report-grid" id="printableArea" style="margin-top:20px ; margin-left:100px"> 
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="text-align:center ; Width: 100% ; font-size:20px">
                        <AlternatingRowStyle BackColor="White" />
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
				    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SP_Salesman_Max_Orders" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
				</div>

             	<button type="button" style="margin-left:390px" onclick="printDiv('printableArea')" class="print-btn" >print report</button>

    		</div>




<!-- END copy-->


   		<script type="text/javascript">
   		    var d = new Date();
   		    document.getElementById("date").innerHTML = d.toDateString();

		</script>

		<script>
		    function printDiv(divName) {
		        var printContents = document.getElementById(divName).innerHTML;
		        var originalContents = document.body.innerHTML;

		        document.body.innerHTML = printContents;

		        window.print();

		        document.body.innerHTML = originalContents;
		    }
            </script>
        </form>
</body>