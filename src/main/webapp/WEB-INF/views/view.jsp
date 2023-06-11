<!DOCTYPE html>
<html>

<head>
  <title>Unified Ticketing System</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
  <div class="container mt-4">
    <h2>Ticket List</h2>
    <div class="mb-3">
      <button class="btn btn-primary" data-toggle="modal" data-target="#createTicketModal">Create Ticket</button>
    </div>
    <div class="mb-3">
      <div class="form-inline">
        <label class="mr-2">Filter:</label>
        <select id="filterPriority" class="form-control mr-2">
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

  <!-- Ticket Details Modal -->
  <div class="modal fade" id="ticketDetailsModal" tabindex="-1" role="dialog" aria-labelledby="ticketDetailsModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="ticketDetailsModalLabel">Ticket Details</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <h5 id="ticketName"></h5>
          <p><strong>Product Name:</strong> <span id="productName"></span></p>
          <p><strong>Description:</strong> <span id="description"></span></p>
          <p><strong>Type:</strong> <span id="ticketType"></span></p>
          <p><strong>Priority:</strong> <span id="priority"></span></p>
          <h6 class="mt-4">Conversation</h6>
          <div id="conversationThread"></div>
        </div>
      </div>
    </div>
  </div>

  <!-- Create Ticket Modal -->
  <div class="modal fade" id="createTicketModal" tabindex="-1" role="dialog" aria-labelledby="createTicketModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="createTicketModalLabel">Create Ticket</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="ticketForm">
            <div class="form-group">
              <label for="ticketName">Ticket Name:</label>
              <input type="text" class="form-control" id="ticketName" required>
            </div>
            <div class="form-group">
              <label for="productName">Product Name:</label>
              <input type="text" class="form-control" id="productName" required>
            </div>
            <div class="form-group">
              <label for="description">Description:</label>
              <textarea class="form-control" id="description" rows="3" required></textarea>
            </div>
            <div class="form-group">
              <label for="ticketType">Type:</label>
              <select class="form-control" id="ticketType" required>
                <option value="">Select Type</option>
                <option value="issue">Issue</option>
                <option value="suggestion">Suggestion</option>
              </select>
            </div>
            <div class="form-group">
              <label for="priority">Priority:</label>
              <select class="form-control" id="priority" required>
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
