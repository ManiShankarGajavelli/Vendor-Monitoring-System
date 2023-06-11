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
  </style>
</head>
<body>
  <!-- Header Section -->
  <header class="d-flex justify-content-between align-items-center p-3">
    <div>
      <img src="vendor-monitoring-service-logo.png" alt="Vendor Monitoring Service Logo" width="100">
    </div>
    <div>
      <i class="fas fa-user"></i>
    </div>
  </header>

  <!-- Navigation and Content Section -->
  <div class="d-flex">
    <!-- Left-hand Navigation -->
    <nav class="bg-light p-3">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Vendor Ranks</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Settings</a>
        </li>
      </ul>
    </nav>

    <!-- Content Section -->
    <main class="content">
<div class="container mt-5 mb-3">
    <div class="row">
        <div class="col-md-4">
            <div class="card p-3 mb-2">
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row align-items-center">
                        <div class="icon"> <i class="fab fa-jira"></i> </div>
                        <div class="ms-2 c-details">
                            <h6 class="mb-0">Jira<a href="#" class="copy-url" data-vendor="Vendor 1"> <i
						class="far fa-copy"></i>
					</a></h6> <span> <i class="fas fa-circle" style="color: #ff0000;"></i>1 days ago</span>
                           
					
                        </div>
                    </div>
                    <div class="badge"> <span>Design</span> </div>
                </div>
                <div class="mt-5">
<!--                     <h3 class="heading">Senior Product<br>Designer-Singapore</h3> -->
                    <div class="mt-5">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="mt-3"> <span class="text1">32 Pending <span class="text2">of 50 Total</span></span> </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 mb-2">
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row align-items-center">
                        <div class="icon"><i class="fab fa-jenkins"></i></div>
                        <div class="ms-2 c-details">
                            <h6 class="mb-0">Jenkins</h6> <span>4 days ago</span>
                        </div>
                    </div>
                    <div class="badge"> <span>Product</span> </div>
                </div>
                <div class="mt-5">
                    <!-- <h3 class="heading">Junior Product<br>Designer-Singapore</h3> -->
                    <div class="mt-5">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="mt-3"> <span class="text1">42 Pending <span class="text2">of 70 Total</span></span> </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 mb-2">
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row align-items-center">
                        <div class="icon"> <i class="bx bxl-reddit"></i> </div>
                        <div class="ms-2 c-details">
                            <h6 class="mb-0">SiteMinder</h6> <span>2 days ago</span>
                        </div>
                    </div>
                    <div class="badge"> <span>Design</span> </div>
                </div>
                <div class="mt-5">
                    <!-- <h3 class="heading">Software Architect <br>Java - USA</h3> -->
                    <div class="mt-5">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <div class="mt-3"> <span class="text1">52 Pending <span class="text2">of 100 Total</span></span> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </main>
  </div>

   <!-- Vendor Modal -->
  <div class="modal fade" id="vendorModal" tabindex="-1" role="dialog" aria-labelledby="vendorModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active" id="tickets-tab" data-toggle="tab" href="#tickets">Tickets</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="documentation-tab" data-toggle="tab" href="#documentation">Documentation</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="faqs-tab" data-toggle="tab" href="#faqs">FAQs</a>
            </li>
          </ul>
        </div>
        <div class="modal-body">
          <div class="tab-content">
            <div class="tab-pane fade show active" id="tickets">
              <p>No records as of now.</p>
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


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function() {
      $('.view-more').click(function() {
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

  </script>
</body>
</html>
