<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vendor Registration</title>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
    background-color: #b7c9e2;
    font-family: sans-serif;
}

.progress-container {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 30px;
}

.dot {
    height: 25px;
    width: 25px;
    background-color: #03C03C;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 16px;
    font-weight: bold;
}

.line {
  height: 4px;
  width: 100px;
  background-color: blue; /* default: blue */
  margin: 0 10px;
  transition: background-color 0.3s ease;
}



.card-box {
    background-color: white;
    width: 800px;
    padding: 30px 50px;
    margin: 20px auto;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

.progress-labels {
    display: flex;
    justify-content: space-between;
    margin: 10px 60px 0 60px;
}

.progress-labels span {
    text-align: center;
    font-size: 12px;
}

.progress-titles {
    display: flex;
    justify-content: space-between;
    margin: 8px 50px 0 50px;
}

.progress-titles span {
    text-align: center;
    font-weight: bold;
    font-size: 14px;
}

.progress-bar-boxes {
    display: flex;
    justify-content: space-around;
    margin-top: 10px;
}

.progress-box {
    background-color: #E5F3FD;
    width: 70px;
    height: 25px;
    box-shadow: 0 2px 8px #E5F3FD;
    color: blue;
    font-size: 13px;
    border-radius: 10px;
    justify-content: center;
    text-align: center;
    padding-top: 5px;
}

.address-box {
    background-color: white;
    width: 600px;
    padding: 30px;
    margin: 20px auto;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}
.business-box {
    background-color: white;
    width: 600px;
    padding: 30px;
    margin: 20px auto;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}
.service-box {
    background-color: white;
    width: 600px;
    padding: 30px;
    margin: 20px auto;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}
.address-header {
    display: flex;
    align-items: center;
    gap: 10px;
}

.circle {
    border: 2px solid blue;
    background-color: #FFFFFF;
    height: 45px;
    width: 45px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.addressLogo {
    height: 35px;
    width: 35px;
    background-color: blue;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.addressLogo i {
    color: white;
    font-size: 18px;
}

.address-text {
    font-weight: bold;
    font-size: 18px;
}
.accordion-button {
      padding: 0.3rem 1rem;
      font-size: 0.9rem;
    }

    .accordion-body {
      padding: 0.5rem 1rem;
      font-size: 0.9rem;
    }

    .table th,
    .table td {
      padding: 0.3rem;
      font-size: 0.85rem;
    }

    .accordion-item {
      margin-bottom: 0.5rem;
    }

    input[type="number"] {
      width: 60px;
    }

    input[type="checkbox"] {
      transform: scale(0.9);
    }
</style>
</head>
<body>

    <!-- Progress Section -->
    <div class="card-box">
<div class="progress-container">
<div id="stepIcon">	
  <div class="circle" >
    <div class="addressLogo" >
      <i class="bi bi-lock-fill"></i>
    </div>
  </div>
  </div>
  <div class="line" id="stepLine1"></div>

 
  <div class="circle">
    <div class="addressLogo">
      <i class="bi bi-lock-fill"></i>
    </div>
  </div>
  <div class="line"></div>

  <div class="circle">
    <div class="addressLogo">
      <i class="bi bi-lock-fill"></i>
    </div>
  </div>
  <div class="line"></div>

  <div class="circle">
    <div class="addressLogo">
      <i class="bi bi-lock-fill"></i>
    </div>
  </div>
</div>


        <div class="progress-labels">
            <span>Step 1</span>
            <span>Step 2</span>
            <span>Step 3</span>
            <span>Step 4</span>
        </div>

        <div class="progress-titles">
            <span>Business Detail</span>
            <span>Contact Detail</span>
            <span>Service Detail</span>
            <span>Address Detail</span>
        </div>

        <div class="progress-bar-boxes">
            <span class="progress-box" id="status">Pending</span>
            <span class="progress-box">Pending</span>
            <span class="progress-box"></span>
            <span class="progress-box"></span>
        </div>
    </div>

    <!-- Address Section -->
    <div class="address-box" style="display: block;">
    <div class="address-header">
        <div class="circle">
            <div class="addressLogo">
                <i class="bi bi-geo-alt-fill"></i>
            </div>
        </div>
        <span class="address-text">Address Detail</span>
    </div>

    <div>
        <label for="addressLine1" class="form-label" style="margin-top: 8px;">Address Line 1</label>
        <input type="text" id="addressLine1" name="addressLine1" class="form-control" placeholder="Enter your address line 1" />

        <label for="addressLine2" class="form-label" style="margin-top: 8px;">Address Line 2</label>
        <input type="text" id="addressLine2" name="addressLine2" class="form-control" placeholder="Enter your address line 2" />

        <label for="postalCode" class="form-label" style="margin-top: 8px;">Postal Code</label>
        <input type="text" id="postalCode" name="postalCode" class="form-control" placeholder="Enter postal code" />

        <label for="city" class="form-label" style="margin-top: 8px;">City</label>
        <input type="text" id="city" name="city" class="form-control" placeholder="Enter city" />

        <label for="state" class="form-label" style="margin-top: 8px;">State</label>
        <input type="text" id="state" name="state" class="form-control" placeholder="Enter state" />

        <label for="country" class="form-label" style="margin-top: 8px;">Country</label>
        <input type="text" id="country" name="country" class="form-control" placeholder="Enter country" />
    </div>

    <!-- Next Button -->
    <div class="mt-4 text-end">
      <button type="button" id="nextBtn" class="btn btn-primary" onclick="goToNextStep()" disabled>Next</button>
    </div>
</div>

 <div class="service-box" style="display: none;">
    <div class="address-header">
        <div class="circle">
            <div class="addressLogo">
               <i class="fas fa-broom"></i>
            </div>
        </div>
        <span class="address-text">Service Detail</span>
    </div>

  <div class="container my-3">
  <label for="serviceSelect" class="form-label fw-bold">Choose a Service</label>
  <select id="serviceSelect" class="form-select w-100 w-sm-75 w-md-50">
    <option value="">-- Select Service --</option>
    <option value="laundry">Laundry</option>
    <option value="dry_cleaning">Dry Cleaning</option>
    <option value="ironing">Ironing</option>
  </select>
</div>

<div class="accordion" id="serviceAccordion">

  <!-- Women Clothes -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingWomen">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWomen" aria-expanded="true" aria-controls="collapseWomen">
        Women Clothes
      </button>
    </h2>
    <div id="collapseWomen" class="accordion-collapse collapse show" aria-labelledby="headingWomen" data-bs-parent="#serviceAccordion">
      <div class="accordion-body">
        <table class="table table-bordered">
          <thead class="table-light">
            <tr>
              <th>Select</th>
              <th>Item</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Saree</td>
              <td><input type="number" value="40" /></td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Kurti</td>
              <td><input type="number" value="30" /></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!-- Accessories -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingAccessories">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAccessories" aria-expanded="false" aria-controls="collapseAccessories">
        Accessories
      </button>
    </h2>
    <div id="collapseAccessories" class="accordion-collapse collapse" aria-labelledby="headingAccessories" data-bs-parent="#serviceAccordion">
      <div class="accordion-body">
        <table class="table table-bordered">
          <thead class="table-light">
            <tr>
              <th>Select</th>
              <th>Item</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Single Bedsheet</td>
              <td><input type="number" value="50" /></td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Double Bedsheet</td>
              <td><input type="number" value="75" /></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!-- Bedsheets -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingBedsheets">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseBedsheets" aria-expanded="false" aria-controls="collapseBedsheets">
        Bedsheets
      </button>
    </h2>
    <div id="collapseBedsheets" class="accordion-collapse collapse" aria-labelledby="headingBedsheets" data-bs-parent="#serviceAccordion">
      <div class="accordion-body">
         <table class="table table-bordered">
          <thead class="table-light">
            <tr>
              <th>Select</th>
              <th>Item</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Scarf</td>
              <td><input type="number" value="15" /></td>
            </tr>
            <tr>
              <td><input type="checkbox" /></td>
              <td>Dupatta</td>
              <td><input type="number" value="25" /></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>

</div>





    <!-- Next Button -->
    <div style="margin-top: 20px; text-align: right;">
        <button type="button" class="btn btn-primary" onclick="goToBusinessDetail()">Next</button>
    </div>
</div>

    <div class="business-box" style="display: none;">
    <div class="address-header">
        <div class="circle">
            <div class="addressLogo">
<i class="bi bi-person-badge"></i>
            </div>
        </div>
        <span class="address-text">Business Detail</span>
    </div>

    <div>
        <label for="addressLine1" class="form-label" style="margin-top: 8px;">Business Name</label>
        <input type="text" id="addressLine1" name="addressLine1" class="form-control" placeholder="Enter your address line 1" />

        <label for="addressLine2" class="form-label" style="margin-top: 8px;">Business GST</label>
        <input type="text" id="addressLine2" name="addressLine2" class="form-control" placeholder="Enter your address line 2" />

        <label for="postalCode" class="form-label" style="margin-top: 8px;">Business Description</label>
        <input type="text" id="postalCode" name="postalCode" class="form-control" placeholder="Enter postal code" />

        <label for="city" class="form-label" style="margin-top: 8px;">Business License Proof</label>
        <input type="file" class="form-control" required>

        <label for="state" class="form-label" style="margin-top: 8px;">ID Proof</label>
        <input type="file" class="form-control" required>

        
    </div>

    <!-- Next Button -->
    <div style="margin-top: 20px; text-align: right;">
        <button type="button" class="btn btn-primary" onclick="goToNextStep()">Next</button>
    </div>
</div>
<script>
function vendorRegistration() {
    
    const addressLine1 = document.getElementById("addressLine1").value || "";
    const addressLine2 = document.getElementById("addressLine2").value || "";
    const postalCode = document.getElementById("postalCode").value || "";
    const state = document.getElementById("state").value || "";
    const country = document.getElementById("country").value || "";
   
    

    const dataString =
   "addressLine1=" + addressLine1 +
    "&addressLine2=" + addressLine2 +
    "&postalCode=" + postalCode +
    "&state=" + state +
    "&country=" + country;
    
    alert(dataString);

    $.ajax({
        type: "POST",
        url: "vendorRegistration",
        data: dataString,
        success: function(response) {
            alert("Registration Successful!");
            console.log(response);
        },
        error: function(xhr, status, error) {
            alert("Error while registering. Please try again.");
            console.error(xhr.responseText);
        }
    });
}

</script>
<script>
function checkAddressFields() {
	  const addressLine1 = document.getElementById("addressLine1").value || "";
	  const addressLine2 = document.getElementById("addressLine2").value || "";
	  const postalCode = document.getElementById("postalCode").value || "";
	  const city = document.getElementById("city").value || "";
	  const state = document.getElementById("state").value || "";
	  const country = document.getElementById("country").value || "";

	  const allFilled = addressLine1 && addressLine2 && postalCode && city && state && country;

	  const nextBtn = document.getElementById("nextBtn");
	  const stepIcon = document.getElementById("stepIcon");
	  const stepLine1 = document.getElementById("stepLine1");
      const status = document.getElementById("status");
      const addressBox= document.querySelector(".address-box");
      const serviceBox=	document.querySelector(".service-box");	
	  nextBtn.disabled = !allFilled;

	  if (allFilled) {
		          nextBtn.disabled = false;
		          addressBox.style.display = "none"; // Hide address box
		          serviceBox.style.display = "block"; // Show service box
	    stepIcon.innerHTML = '<span class="dot">&#10004;</span>';
	    stepLine1.style.backgroundColor = "green";
	    status.textContent = "Completed";
	    status.style.backgroundColor = "#CAEEC2";
	    status.style.color = "green";
	  } else {
	    stepIcon.innerHTML = `
	      <div class="addressLogo">
	        <i class="bi bi-lock-fill"></i>
	      </div>`;
	    stepLine1.style.backgroundColor = "blue";
	  }
	}

	// Add event listeners
	window.addEventListener("DOMContentLoaded", () => {
	  const fields = ["addressLine1", "addressLine2", "postalCode", "city", "state", "country"];
	  fields.forEach(id => {
	    document.getElementById(id).addEventListener("input", checkAddressFields);
	  });
	});




</script>
<script>
     function goToBusinessDetail() {
        // Hide the address box
        const servicebox = document.querySelector(".service-box");
        if (servicebox) {
        	servicebox.style.display = "none";
        }

        // Optional: show the next step if you have one
         document.querySelector(".business-box").style.display = "block";
    }
</script>
 <script>
 function addRow() {
   const tableBody = document.getElementById("tableBody");
   const newRow = document.createElement("tr");
   newRow.innerHTML = `
     <td><input type="text" value=""></td>
     <td><input type="email" value=""></td>
     <td><input type="text" value=""></td>
     <td>
       <button class="btn btn-sm btn-danger" onclick="deleteRow(this)">Delete</button>
     </td>
   `;
   tableBody.appendChild(newRow);
 }

 function deleteRow(button) {
   const row = button.closest("tr");
   row.remove();
 }

  </script>
    

</body>
</html>
