<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-Drug.aspx.cs" Inherits="view_Drug" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'/>
<!--//webfonts-->
<title>View Drug</title>
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
    		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SELECT * FROM [TBL_Drug]">
                </asp:SqlDataSource>
    		</div>

<!-- copy from here-->

			<hr>
    		<hr>

    		<div class="grid-view"> 
    			<div class="lable">

                    <asp:Label ID="Label1" runat="server" Style="font-size:20px" Text="The Drug Which Made The Maximum Number Of Orders:" ForeColor="White"></asp:Label>
                    
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
				    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SP_Drug_Max_Orders" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
				</div>

             	<button type="button" style="margin-left:390px" onclick="printDiv('printableArea')" class="print-btn" >print report</button>

    		</div>




<!-- END copy-->

        <!-- copy from here-->

			<hr>
    		<hr>

    		<div class="grid-view"> 
    			<div class="lable">

                    <asp:Label ID="Label2" runat="server" Style="font-size:20px" Text="The Drug That Is Expired:" ForeColor="White"></asp:Label>


                    <asp:Button ID="btnMakeReport1" runat="server" type="submit" Text="Make Report" Width="20%" style="margin-left:450px" OnClick="btnMakeReport1_Click" />

				
				</div>

				<!-- div for report-->
				<div class="report-grid" id="printableArea1" style="margin-top:20px ; margin-left:100px">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" style="text-align:center ; Width: 120% ; font-size:20px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
				    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SP_Drug_Expired" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
				</div>

             	<button type="button" style="margin-left:390px" onclick="printDiv('printableArea1')" class="print-btn" >print report</button>

    		</div>




<!-- END copy-->

        <!-- copy from here-->

			<hr>
    		<hr>

    		<div class="grid-view"> 
    			<div class="lable">
                   

                    <asp:Label ID="Label3" runat="server" Style="font-size:20px" Text="The Drugs Which Is Less Than The Quantity You Want:" ForeColor="White"></asp:Label>
                    
                    <asp:Button ID="btnMakeReport2" type="submit" runat="server" Text="Make Report" Width="20%" style="margin-left:180px" OnClick="btnMakeReport2_Click" />
				

                    <asp:TextBox ID="txtQ1" runat="server" type="text" class="text" placeholder="The Quantity You Want">
                    </asp:TextBox>
				
				</div>

				<!-- div for report-->
				<div class="report-grid" id="printableArea2" style="margin-top:20px ; margin-right:200px ; margin-left:0x"> 
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Drug_ID" DataSourceID="SqlDataSource4" style="text-align:center ; Width: 140% ; font-size:20px" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Drug_ID" HeaderText="Drug_ID" InsertVisible="False" ReadOnly="True" SortExpression="Drug_ID" />
                            <asp:BoundField DataField="Drug" HeaderText="Drug" SortExpression="Drug" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                            <asp:BoundField DataField="Company Mobile" HeaderText="Company Mobile" SortExpression="Company Mobile" />
                            <asp:BoundField DataField="Company Email" HeaderText="Company Email" SortExpression="Company Email" />
                            <asp:BoundField DataField="Salesman Name" HeaderText="Salesman Name" ReadOnly="True" SortExpression="Salesman Name" />
                            <asp:BoundField DataField="Salesman Mobile" HeaderText="Salesman Mobile" SortExpression="Salesman Mobile" />
                            <asp:BoundField DataField="Salesman Email" HeaderText="Salesman Email" SortExpression="Salesman Email" />
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
				    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SP_Drug_Less_Than_Quantity" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtQ1" Name="Quantity" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
				</div>

             	<button type="button" onclick="printDiv('printableArea2')" class="print-btn" >print report</button>

    		</div>




<!-- END copy-->

        <!-- copy from here-->

			<hr>
    		<hr>

    		<div class="grid-view"> 
    			<div class="lable">

                    <asp:Label ID="Label4" runat="server" Style="font-size:20px" Text="The Drugs Which Expire Date Is Less Than Months You Want:" ForeColor="White"></asp:Label>
                    <asp:Button ID="btnMakeReport3" runat="server" Text="Make Report" Width="20%" style="margin-left:120px" OnClick="btnMakeReport3_Click" />


                    <asp:TextBox ID="txtQ11" runat="server" type="text" class="text" placeholder="Expire Less Than Months">
                    </asp:TextBox>
                    <asp:TextBox ID="txtQ2" runat="server" type="text" class="text" placeholder="Expire in Months">
                    </asp:TextBox>
                    <asp:TextBox ID="txtQ3" runat="server" type="text" class="text" placeholder="Drug Name">
                    </asp:TextBox>
						  
                    
				
				</div>

				<!-- div for report-->
				<div class="report-grid" id="printableArea3" style="margin-top:20px ; margin-left:0px"> 
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource5" style="text-align:center ; Width: 150% ; font-size:20px" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                            <asp:BoundField DataField="Prep_Date" HeaderText="Prep_Date" SortExpression="Prep_Date" />
                            <asp:BoundField DataField="Exp_Date" HeaderText="Exp_Date" SortExpression="Exp_Date" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Company_ID" HeaderText="Company_ID" SortExpression="Company_ID" />
                            <asp:BoundField DataField="Salesman_ID" HeaderText="Salesman_ID" SortExpression="Salesman_ID" />
                            <asp:BoundField DataField="Months to Expire" HeaderText="Months to Expire" ReadOnly="True" SortExpression="Months to Expire" />
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
				    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TestPharmacyConnectionString %>" SelectCommand="SP_Drug_Expire_Months" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtQ11" Name="Expire_Less_Than_Months" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="txtQ2" Name="Expire_in_Months" PropertyName="Text" Type="Int32" DefaultValue="" />
                            <asp:ControlParameter ControlID="txtQ3" Name="Drug_Name" PropertyName="Text" Type="String" DefaultValue="" />
                        </SelectParameters>
                    </asp:SqlDataSource>
				</div>

             	<button type="button" onclick="printDiv('printableArea3')" class="print-btn" >print report</button>

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