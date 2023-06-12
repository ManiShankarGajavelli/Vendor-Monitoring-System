
     $(document).ready(function() {
         // Hide all content divs except the first one
         $('.content').not(':first').hide();

         // Handle click event on navigation links
         $('.nav-link').click(function(e) {
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

	 
    $(document).ready(function() {
      $('.card').click(function() {
        $('#vendorModal .modal-title').text($(this).siblings('.card-title').text());
      });
    });
    $(document).ready(function() {
    	  $('.copy-url').click(function(e) {
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


  