<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Vendor Monitoring Service</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

	<style>
		/* Header Styles */
		header {
			background-color: #f8f9fa;
			padding: 10px;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}

		/* Navigation Styles */
		nav {
			background-color: #e9ecef;
			padding: 20px;
		}

		.nav-link {
			color: #343a40;
			font-weight: bold;
		}

		.nav-link:hover {
			background-color: #343a40;
			color: #fff;
		}

		.nav-link.active {
			background-color: #343a40;
			color: #fff;
		}

		/* Content Styles */
		.content {
			flex: 1;
			padding: 20px;
		}

		.card {
			margin-bottom: 20px;
		}

		.card-title {
			color: #343a40;
		}

		.card-link {
			color: #007bff;
		}

		/* Modal Styles */
		.modal-title {
			color: #343a40;
		}

		.nav-tabs .nav-link {
			color: #343a40;
			font-weight: bold;
		}

		.nav-tabs .nav-link:hover {
			background-color: #343a40;
			color: #fff;
		}

		.nav-tabs .nav-link.active {
			background-color: #343a40;
			color: #fff;
		}

		body {
			background-color: #eee
		}

		.card {
			border: none;
			border-radius: 10px
		}

		.c-details span {
			font-weight: 300;
			font-size: 13px
		}

		.icon {
			width: 50px;
			height: 50px;
			background-color: #eee;
			border-radius: 15px;
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 39px
		}

		.badge span {
			background-color: #fffbec;
			width: 60px;
			height: 25px;
			padding-bottom: 3px;
			border-radius: 5px;
			display: flex;
			color: #fed85d;
			justify-content: center;
			align-items: center
		}

		.progress {
			height: 10px;
			border-radius: 10px
		}

		.progress div {
			background-color: red
		}

		.text1 {
			font-size: 14px;
			font-weight: 600
		}

		.text2 {
			color: #a5aec0
		}

		body {
			margin-top: 20px;
			background: #eee;
		}

		/* ========================================================================
 * MESSAGES
 * ======================================================================== */
		.message form {
			padding: 6px 15px;
			background-color: #FAFAFA;
			border-bottom: 1px solid #E6EBED;
		}

		.message form .has-icon .form-control-icon {
			position: absolute;
			z-index: 5;
			top: 0;
			right: 0;
			width: 34px;
			line-height: 33px;
			text-align: center;
			color: #777;
		}

		.message>a {
			position: relative;
		}

		.message .indicator {
			text-align: center;
		}

		.message .indicator .spinner {
			left: 26%;
			width: 200px;
			font-size: 13px;
			line-height: 17px;
			color: #999;
		}

		.message-wrapper {
			position: relative;
			padding: 0px;
			background-color: #ffffff;
			margin: 0px;
		}

		.message-wrapper .message-sideleft {
			vertical-align: top !important;
		}

		.message-wrapper .message-sideleft[class*="col-"] {
			padding-right: 0px;
			padding-left: 0px;
		}

		.message-wrapper .message-sideright {
			background-color: #f8f8f8;
		}

		.message-wrapper .message-sideright[class*="col-"] {
			padding: 30px;
		}

		.message-wrapper .message-sideright .panel {
			border-top: 1px dotted #DDD;
			padding-top: 20px;
		}

		.message-wrapper .message-sideright .panel:first-child {
			border-top: none;
			padding-top: 0px;
		}

		.message-wrapper .message-sideright .panel .panel-heading {
			border-bottom: none;
		}

		.message-wrapper .panel {
			background-color: transparent !important;
			-moz-box-shadow: none !important;
			-webkit-box-shadow: none !important;
			box-shadow: none !important;
		}

		.message-wrapper .panel .panel-heading,
		.message-wrapper .panel .panel-body {
			background-color: transparent !important;
		}

		.message-wrapper .media .media-body {
			font-weight: 300;
		}

		.message-wrapper .media .media-heading {
			margin-bottom: 0px;
		}

		.message-wrapper .media small {
			color: #999999;
			font-weight: 400;
		}

		.list-message .list-group-item {
			padding: 15px;
			color: #999999 !important;
			border-right: 3px solid #8CC152 !important;
		}

		.list-message .list-group-item.active {
			background-color: #EEEEEE;
			border-bottom: 1px solid #DDD !important;
		}

		.list-message .list-group-item.active p {
			color: #999999 !important;
		}

		.list-message .list-group-item.active:hover,
		.list-message .list-group-item.active:focus,
		.list-message .list-group-item.active:active {
			background-color: #EEEEEE;
		}

		.list-message .list-group-item small {
			font-size: 12px;
		}

		.list-message .list-group-item .list-group-item-heading {
			color: #999999 !important;
		}

		.list-message .list-group-item .list-group-item-text {
			margin-bottom: 10px;
		}

		.list-message .list-group-item:last-child {
			-moz-border-radius: 0px;
			-webkit-border-radius: 0px;
			border-radius: 0px;
			border-bottom: 1px solid #DDD !important;
		}

		.avatar {
			width: 50px;
			height: 50px;
		}
	</style>
</head>

<body>
	<script>
		var i = 10;
		document.addEventListener('DOMContentLoaded', function () {
			fetch('http://localhost:8080/vendor-locomotive/api/vendors/list')
				.then(response => response.json())
				.then(data => {
					data.forEach(vendor => {

						console.log("vendor object" + vendor);
						let color = "#ff0000";
						if (vendor.status) {
							color = "green";
						}
						let design = vendor ? vendor.category ? vendor.category : "design1" : "design2";
						let urlLastValidated = vendor ? vendor.urlLastValidated ? vendor.urlLastValidated : 2 : 1;
						let totalPendingIssue = vendor ? vendor.totalPendingIssue ? vendor.totalPendingIssue : 25 : 50;
						let totalIssue = vendor ? vendor.totalIssue ? vendor.totalIssue : 50 : 50;
						let image = vendor ? vendor.logo ? vendor.logo : "fab fa-jira" : "fab fa-jira";
						let progress = (totalPendingIssue / totalIssue) * 100;

						console.log("image..." + image);

						var dynamicData =
							'<!-- <a class="card-block stretched-link text-decoration-none view-more" data-toggle="modal" data-target="#vendorModal" href="#"> -->                                               '+
							'<div class="card card-grow p-3 mb-2" style = "width: 333px;float:left;margin-right:30px;">' +
							'<div class="d-flex justify-content-between">' +
							'<div class="d-flex flex-row align-items-center">' +
							'<div class="icon">' +
							'<i class="' + image + '"></i>' +
							'</div>' +
							'<div class="ms-2 c-details">' +
							'<h6 class="mb-0">' +
							vendor.name + '<a href="#" class="copy-url" data-vendor=' + vendor.url + '>' +
							'<i class="far fa-copy"></i>' +
							'</a>' +
							'</h6>' +
							'<span> <i class="fas fa-circle" style="color:' + color + '"></i>' + urlLastValidated + ' days ago' +
							'</span>' +
							'</div>' +
							'</div>' +
							'<div class="badge">' +
							'<span>' + design + '</span>' +
							'</div>' +
							'</div>' +
							'<div class="mt-5">' +
							'<!--                     <h3 class="heading">Senior Product<br>Designer-Singapore</h3> -->' +
							'<div class="mt-5">' +
							'<div class="progress">' +
							'<div class="progress-bar" role="progressbar" style="width: ' + progress + '%"' +
							'aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>' +
							'</div>' +
							'<a class="card-block stretched-link text-decoration-none view-more"' +
							'data-toggle="modal" data-target="#vendorModal" href="#">' +
							'<div class="mt-3">' +
							'<span class="text1">' + totalPendingIssue + ' Pending <span class="text2">of' +
							'' + totalIssue + ' Total</span></span>' +
							'</div>' +
							'</a>' +
							'</div>' +
							'</div>' +
							'</div>';


						document.getElementById("appendData").innerHTML += dynamicData;

						i = i + 9;
					});
				})
				.catch(error => {
					console.error('Error fetching vendors:', error);
				});
		});


	</script>
	<!-- Header Section -->
	<header class="d-flex justify-content-between align-items-center p-3">
		<div>
			<img src="${pageContext.request.contextPath}/VMS.PNG" alt="Vendor Monitoring Service Logo" width="100">
		</div>
		<div>
			<i class="fas fa-user"></i>
		</div>
	</header>

	<!-- Navigation and Content Section -->
	<div class="d-flex">
		<!-- Left-hand Navigation -->
		<nav class="col-md-2">
			<ul class="nav flex-column">

				<li class="nav-item"><a class="nav-link active" href="#Vendors"><i class="fas fa-users"></i> Vendors</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#Tickets"><i class="fas fa-ticket-alt"></i> Tickets</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#Dashboard"><i class="fas fa-tachometer-alt"></i>
						Dashboard</a></li>
				<li class="nav-item"><a class="nav-link" href="#Settings"><i class="fas fa-cog"></i> Settings</a></li>
				<li class="nav-item"><a class="nav-link" href="#Reports"><i class="fas fa-chart-bar"></i> Reports</a>
				</li>

			</ul>
		</nav>

		<!-- Content Section -->

		<div class="col-md-10">
			<div id="Vendors" class="content">
				<div class="container mt-5 mb-3">
					<div class="row">

						<div id="appendData"></div>





					</div>
				</div>
			</div>
			<div id="Tickets" class="content">
				<div class="container mt-4">
					<h2>Ticket List</h2>
					<div class="mb-3">
						<button class="btn btn-primary" data-toggle="modal" data-target="#createTicketModal">Create
							Ticket</button>
					</div>
					<div class="mb-3">
						<div class="form-inline">
							<label class="mr-2">Filter:</label> <select id="filterPriority" class="form-control mr-2">
								<option value="">All</option>
								<option value="low">Low</option>
								<option value="medium">Medium</option>
								<option value="high">High</option>
							</select>
							<button id="clearFilter" class="btn btn-light">Clear</button>
						</div>
					</div>
					<table id="ticketTable" class="table">
						<thead>
							<tr>
								<th>Ticket Name</th>
								<th>Product Name</th>
								<th>Description</th>
								<th>Type</th>
								<th>Priority</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>


			</div>
			<div id="Dashboard" class="content">Dashboard Content</div>
			<div id="Settings" class="content">Settings Content</div>
			<div id="Reports" class="content">Reports Content</div>
		</div>
		<main class="content"></main>
	</div>

	<!-- Vendor Modal -->
	<div class="modal fade" id="vendorModal" tabindex="-1" role="dialog" aria-labelledby="vendorModalLabel"
		data-backdrop="static" aria-hidden="true">
		<div class="modal-dialog" role="document" style="max-width: 1200px;">
			<div class="modal-content">
				<div class="modal-header">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active" id="tickets-tab" data-toggle="tab"
								href="#tickets">Tickets</a></li>
						<li class="nav-item"><a class="nav-link" id="documentation-tab" data-toggle="tab"
								href="#documentation">Documentation</a>
						</li>
						<li class="nav-item"><a class="nav-link" id="faqs-tab" data-toggle="tab" href="#faqs">FAQs</a>
						</li>
					</ul>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="tickets">
							<div class="container">
								<div class="row message-wrapper rounded shadow mb-20">
									<div class="col-md-4 message-sideleft">
										<div class="panel">
											<div class="panel-heading d-flex justify-content-between">
												<div>
													<h3 class="panel-title">Conversations</h3>
												</div>
												<div>
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-success">All
															Sources</button>
														<button type="button"
															class="btn btn-sm btn-success dropdown-toggle"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<span class="caret"></span> <span class="sr-only">Toggle
																Dropdown</span>
														</button>
														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuButton">
															<a class="dropdown-item" href="#"><i
																	class="fa fa-download"></i> Email</a> <a
																class="dropdown-item" href="#"><i
																	class="fa fa-upload"></i> Message</a> <a
																class="dropdown-item" href="#"><i
																	class="fa fa-trash-o"></i> Chat</a>
															<div class="dropdown-divider"></div>
															<a class="dropdown-item" href="#"><i
																	class="fa fa-briefcase"></i> Other</a>
														</div>
													</div>

												</div>
											</div>
											<!-- /.panel-heading -->
											<div class="panel-body no-padding">
												<div class="list-group no-margin list-message">
													<a href="#" class="list-group-item">
														<h4 class="list-group-item-heading">
															jiraadmin@atlasian.com <small>Yesterday at 15:45</small>
														</h4>
														<p class="list-group-item-text">
															Ticket #78: <strong>JIRA URL is not Working</strong>
														</p> <span class="badge badge-warning float-right">OPEN</span>
													</a> <a href="#" class="list-group-item active">
														<h4 class="list-group-item-heading">
															Rebecca@atlasian.com<small>Sunday at 12:33</small>
														</h4>
														<p class="list-group-item-text">
															Ticket #43: <strong>JIRA Custom Dashboard issue</strong>
														</p> <span
															class="badge badge-success float-right rounded">SOLVED</span>
													</a> <a href="#" class="list-group-item">
														<h4 class="list-group-item-heading">
															Rebecca@atlasian.com <small>Sunday at 9:12</small>
														</h4>
														<p class="list-group-item-text">
															Ticket #15: <strong>JIRA Reports has invalid
																Data :(</strong>
														</p> <span
															class="badge badge-success float-right circle">SOLVED</span>
													</a>
												</div>
												<!-- /.list-group -->
											</div>
											<!-- /.panel-body -->
										</div>
										<!-- /.panel -->
									</div>
									<!-- /.message-sideleft -->
									<div class="col-md-8 message-sideright">
										<div class="panel">
											<div class="panel-heading">
												<a href="mail-compose.html"
													class="btn btn-danger float-right rounded"><i
														class="fas fa-share-alt"></i></a>
												<div class="media">
													<a class="mr-3" href="#">
														<img src="https://bootdey.com/img/Content/avatar/avatar1.png"
															alt="Rebecca Cabean" class="img-circle avatar">
													</a>
													<div class="media-body">
														<h4 class="media-heading">Rebecca@atlasian.com <small>(Jira
																response)</small></h4>
														<small>Thursday 10th June 2023-via Email</small>
													</div>
												</div>
											</div>
											<!-- /.panel-heading -->
											<div class="panel-body">
												<p class="lead">
													<br> RE : We have an expected outage and we will inform once it was
													fixed.
												</p>
												<hr>
												<p>
													Thanks! <br> Rebecca.
												</p>
											</div>
											<!-- /.panel-body -->
										</div>
										<!-- /.panel -->
										<div class="panel">
											<div class="panel-heading">
												<div class="media">
													<a class="mr-3" href="#">
														<img src="https://bootdey.com/img/Content/avatar/avatar6.png"
															alt="sarah tingting" class="img-circle avatar">
													</a>
													<div class="media-body">
														<h4 class="media-heading">Siva</h4>
														<small>Thursday 10th June 2023-via JMS</small>
													</div>
												</div>
											</div>
											<!-- /.panel-heading -->
											<div class="panel-body">
												<p class="lead">
													Hi<br> Jira URL for Entain are not working in some area, please
													check this on priority.
												</p>
												<hr>
												<p>
													Thanks! <br> Siva.
												</p>
											</div>
											<hr>
											<!-- /.panel-body -->
											<div class="panel-footer">
												<form>
													<div class="form-group">
														<label for="message">Your Reply:</label>
														<textarea class="form-control" id="message" rows="3"
															style="resize: none;"></textarea>
													</div>
													<div class="form-group">
														<label for="attachment">Attachment:</label>
														<div class="custom-file">
															<input type="file" class="custom-file-input"
																id="attachment">
															<label class="custom-file-label" for="attachment">Choose
																file</label>
														</div>
													</div>
													<button type="submit" class="btn btn-primary">Submit</button>
												</form>
											</div>
										</div>
										<!-- /.panel -->
									</div>


									<!-- /.message-sideright -->
								</div>
							</div>

						</div>
						<div class="tab-pane fade" id="documentation">
							<p>No records as of now.</p>
						</div>
						<div class="tab-pane fade" id="faqs">
							<p>No records as of now.</p>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Ticket Details Modal -->
	<div class="modal fade" id="ticketDetailsModal" tabindex="-1" role="dialog"
		aria-labelledby="ticketDetailsModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ticketDetailsModalLabel">Ticket
						Details</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h5 id="ticketName"></h5>
					<p>
						<strong>Product Name:</strong> <span id="productName"></span>
					</p>
					<p>
						<strong>Description:</strong> <span id="description"></span>
					</p>
					<p>
						<strong>Type:</strong> <span id="ticketType"></span>
					</p>
					<p>
						<strong>Priority:</strong> <span id="priority"></span>
					</p>
					<h6 class="mt-4">Conversation</h6>
					<div id="conversationThread"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Create Ticket Modal -->
	<div class="modal fade" id="createTicketModal" data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="createTicketModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="createTicketModalLabel">Create
						Ticket</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="ticketForm">
						<div class="form-group">
							<label for="productName">Vendor Name:</label> <input type="text" class="form-control"
								id="productName" required>
						</div>
						<div class="form-group">
							<label for="ticketName">Ticket Subject:</label> <input type="text" class="form-control"
								id="ticketName" required>
						</div>

						<div class="form-group">
							<label for="description">Description :</label>
							<textarea class="form-control" id="description" rows="3" required></textarea>
						</div>
						<div class="form-group">
							<label for="ticketType">Type:</label> <select class="form-control" id="ticketType" required>
								<option value="">Select Type</option>
								<option value="issue">Issue</option>
								<option value="suggestion">Suggestion</option>
							</select>
						</div>
						<div class="form-group">
							<label for="priority">Priority:</label> <select class="form-control" id="priority" required>
								<option value="">Select Priority</option>
								<option value="low">Low</option>
								<option value="medium">Medium</option>
								<option value="high">High</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Create</button>
					</form>
				</div>
			</div>
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function () {
			// Hide all content divs except the first one
			$('.content').not(':first').hide();

			// Handle click event on navigation links
			$('.nav-link').click(function (e) {
				e.preventDefault();

				// Remove active class from all navigation links
				$('.nav-link').removeClass('active');

				// Add active class to the clicked navigation link
				$(this).addClass('active');

				// Get the target content div ID from the href attribute
				var targetId = $(this).attr('href');

				// Hide all content divs
				$('.content').hide();

				// Show the selected content div
				$(targetId).show();
			});
		});


		$(document).ready(function () {
			$('.card').click(function () {
				$('#vendorModal .modal-title').text($(this).siblings('.card-title').text());
			});
		});
		$(document).ready(function () {
			$('.copy-url').click(function (e) {
				e.preventDefault();
				var vendorName = $(this).data('vendor');
				copyToClipboard(vendorName);
			});
		});

		function copyToClipboard(text) {
			var dummy = document.createElement('textarea');
			document.body.appendChild(dummy);
			dummy.value = text;
			dummy.select();
			document.execCommand('copy');
			document.body.removeChild(dummy);
		}

		$(document).ready(function () {
			var dummyTickets = [
				{
					ticketName: "Ticket 1",
					productName: "Product 1",
					description: "Description for Ticket 1",
					ticketType: "issue",
					priority: "high",
					conversation: []
				},
				{
					ticketName: "Ticket 2",
					productName: "Product 2",
					description: "Description for Ticket 2",
					ticketType: "suggestion",
					priority: "medium",
					conversation: []
				},
				{
					ticketName: "Ticket 3",
					productName: "Product 3",
					description: "Description for Ticket 3",
					ticketType: "issue",
					priority: "low",
					conversation: []
				}
			];

			// Function to render the ticket list
			function renderTicketList() {
				var ticketTable = $("#ticketTable tbody");
				ticketTable.empty();

				// Iterate through the dummy tickets and create table rows
				for (var i = 0; i < dummyTickets.length; i++) {
					var ticket = dummyTickets[i];
					var tableRow = $("<tr>");

					// Add ticket details
					tableRow.append($("<td>").text(ticket.ticketName));
					tableRow.append($("<td>").text(ticket.productName));
					tableRow.append($("<td>").text(ticket.description));
					tableRow.append($("<td>").text(ticket.ticketType));
					tableRow.append($("<td>").append(createPriorityTag(ticket.priority)));

					// Add click event to show ticket details modal
					tableRow.click((function (index) {
						return function () {
							showTicketDetails(index);
						}
					})(i));

					ticketTable.append(tableRow);
				}
			}

			// Function to create priority tag
			function createPriorityTag(priority) {
				var tagClass = "";
				switch (priority) {
					case "low":
						tagClass = "badge-success";
						break;
					case "medium":
						tagClass = "badge-warning";
						break;
					case "high":
						tagClass = "badge-danger";
						break;
				}
				return $("<span>").addClass("badge " + tagClass).text(priority);
			}

			// Function to render the conversation thread
			function renderConversationThread(conversation) {
				var conversationThread = $("#conversationThread");
				conversationThread.empty();

				// Iterate through the conversation and create chat-like messages
				for (var i = 0; i < conversation.length; i++) {
					var message = conversation[i];
					var messageDiv = $("<div>").addClass("mb-2");

					// Add timestamp
					messageDiv.append($("<small>").text(message.timestamp));

					// Add sender and message content
					var messageContent = $("<p>").addClass("mb-0");
					if (message.sender === "user") {
						messageContent.addClass("text-right");
					}
					messageContent.text(message.content);
					messageDiv.append(messageContent);

					conversationThread.append(messageDiv);
				}
			}

			// Function to show ticket details in the modal
			function showTicketDetails(index) {
				var ticket = dummyTickets[index];
				$("#ticketName").text(ticket.ticketName);
				$("#productName").text(ticket.productName);
				$("#description").text(ticket.description);
				$("#ticketType").text(ticket.ticketType);
				$("#priority").text(ticket.priority);
				renderConversationThread(ticket.conversation);
				$("#ticketDetailsModal").modal("show");
			}

			// Function to clear filter
			function clearFilter() {
				$("#filterPriority").val("");
				renderTicketList();
			}

			// Handle form submission
			$("#ticketForm").submit(function (event) {
				event.preventDefault();

				// Get form values
				var ticketName = $("#ticketName").val();
				var productName = $("#productName").val();
				var description = $("#description").val();
				var ticketType = $("#ticketType").val();
				var priority = $("#priority").val();

				// Create new ticket object
				var newTicket = {
					ticketName: ticketName,
					productName: productName,
					description: description,
					ticketType: ticketType,
					priority: priority,
					conversation: []
				};

				// Add new ticket to the array
				dummyTickets.push(newTicket);

				// Render updated ticket list
				renderTicketList();

				// Reset form fields
				$("#ticketName").val("");
				$("#productName").val("");
				$("#description").val("");
				$("#ticketType").val("");
				$("#priority").val("");

				// Close create ticket modal
				$("#createTicketModal").modal("hide");
			});

			// Handle priority filter change
			$("#filterPriority").change(function () {
				var filterValue = $(this).val();
				if (filterValue !== "") {
					var filteredTickets = dummyTickets.filter(function (ticket) {
						return ticket.priority === filterValue;
					});
					renderTicketList(filteredTickets);
				} else {
					renderTicketList();
				}
			});

			// Handle clear filter button click
			$("#clearFilter").click(function () {
				clearFilter();
			});

			// Handle ticket details modal close event
			$("#ticketDetailsModal").on("hidden.bs.modal", function () {
				clearFilter();
			});

			// Initial rendering of the ticket list
			renderTicketList();
		});


	</script>
</body>

</html>