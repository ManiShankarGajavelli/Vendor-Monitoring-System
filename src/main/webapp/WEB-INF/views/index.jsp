<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Monitoring</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Vendor Monitoring</h1>
        <div id="vendorCards"></div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            fetch('http://localhost:8080/vendor-locomotive/api/vendors/list')
                .then(response => response.json())
                .then(data => {
                    const vendorCards = document.getElementById('vendorCards');
                    data.forEach(vendor => {
                        const card = document.createElement('div');
                        card.className = 'card';

                        const cardBody = document.createElement('div');
                        cardBody.className = 'card-body';

                        const vendorName = document.createElement('h5');
                        vendorName.className = 'card-title';
                        vendorName.textContent = vendor.name;

                        const vendorStatus = document.createElement('p');
                        vendorStatus.className = 'card-text';
                        vendorStatus.textContent = "Status:" + vendor.status;

                        const copyButton = document.createElement('button');
                        copyButton.className = 'btn btn-primary';
                        copyButton.textContent = 'Copy URL';
                        copyButton.addEventListener('click', function () {
                            navigator.clipboard.writeText(vendor.url)
                                .then(() => {
                                    alert('URL copied to clipboard!');
                                })
                                .catch(error => {
                                    console.error('Error copying URL:', error);
                                });
                        });

                        cardBody.appendChild(vendorName);
                        cardBody.appendChild(vendorStatus);
                        cardBody.appendChild(copyButton);

                        card.appendChild(cardBody);
                        vendorCards.appendChild(card);
                    });
                })
                .catch(error => {
                    console.error('Error fetching vendors:', error);
                });
        });
    </script>
</body>
</html>
