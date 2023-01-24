﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication52.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<style>
			    .card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
				.card-body{
					height:335px;
				}
.me-2 {
    margin-right: .5rem!important;
}
		</style>
    <title></title>
</head>
<body>
    <form id="form" runat="server">
        
      
      <div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<asp:Image ID="Image1" alt="Admin" class="rounded-circle p-1 bg-primary" width="110" runat="server" />
								<div class="mt-3">
									<h4><asp:Label ID="Label1" runat="server" Text="John Doe"></asp:Label></h4>
									<asp:FileUpload ID="FileUpload1" runat="server" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Full Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:TextBox ID="TxtName" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:TextBox ID="TxtPhone" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Age</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:TextBox ID="TxtAge" class="form-control" runat="server"></asp:TextBox>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">City</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									

									<asp:Button ID="Button1" class="btn btn-primary px-4" runat="server" Text="Save Changes" OnClick="Button1_Click" />

								</div>
							</div>
						</div>
					</div>
					
						
					
				</div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
