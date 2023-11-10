<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futuristic Login & Signup</title>
    <script src="https://kit.fontawesome.com/f25cce70b4.js" crossorigin="anonymous"></script>
    <script>
    function checkPasswordStrength() {
        var password = document.getElementById("password").value;
        var indicator = document.getElementById("password-strength");
        
        // Check password complexity requirements here
        var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
        
        if (strongRegex.test(password)) {
            indicator.textContent = "Strong password!";
            indicator.style.color = "green";
        } else {
            indicator.textContent = "Weak password. Use symbols, numbers, and both uppercase and lowercase letters. Min length: 8 characters.";
            indicator.style.color = "red";
        }
    }

    function checkPasswordMatch() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;
        var matchIndicator = document.getElementById("password-match");

        if (password === confirmPassword && confirmPassword !== "") {
            matchIndicator.textContent = "Passwords match!";
            matchIndicator.style.color = "green";
        } else {
            matchIndicator.textContent = "Passwords do not match.";
            matchIndicator.style.color = "red";
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
    document.querySelector("form").addEventListener("submit", function(event) {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;

        if (password !== confirmPassword) {
            event.preventDefault();
            alert("Passwords do not match. Please correct them before submitting.");
        }
    });
});

    function validateForm(event) {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;
        var contact = document.querySelector("input[name='contact']").value;
        var aadhar = document.querySelector("input[name='Adhar']").value;
        var firstName = document.querySelector("input[name='first-name']").value;
        var lastName = document.querySelector("input[name='last-name']").value;

        var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");

        if (!strongRegex.test(password)) {
            event.preventDefault();
            alert("Your password must contain symbols, numbers, uppercase and lowercase letters, and have a minimum length of 8 characters.");
            return false;
        } else if (password !== confirmPassword) {
            event.preventDefault();
            alert("Passwords do not match. Please correct them before submitting.");
            return false;
        } else if (!/^\d+$/.test(contact) || contact.length !== 10) {
            event.preventDefault();
            alert("Please enter a valid 10-digit contact number.");
            return false;
        } else if (!/^\d+$/.test(aadhar) || aadhar.length !== 12) {
            event.preventDefault();
            alert("Please enter a valid 12-digit Aadhar number.");
            return false;
        } else if (!/^[a-zA-Z]+$/.test(firstName) || !/^[a-zA-Z]+$/.test(lastName)) {
            event.preventDefault();
            alert("First Name and Last Name should contain only text characters.");
            return false;
        }

        return true;  // continue with form submission
    }



    </script>
    <style>
        a{
            color: orange;
        }
        body {
            
            font-family: Arial, sans-serif;
            background-color: #101010;
            color: orange;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgb(78, 252, 78);
            width: 700px;
            text-align: center;
        }

        input[type="text"], input[type="password"],input[type="email"],input[type="number"],input[type="option"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            background-color: rgba(26, 191, 158, 0.1);
            color: #00ffcc;
            border-bottom: 2px solid #00ffcc;
        }

        button {
            padding: 10px 20px;
            border: none;
            background-color: rgb(5, 234, 5);
            color: #101010;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        #X:hover{
            box-shadow: 0 0 5px rgb(5, 234, 5),
                        0 0 25px rgb(5, 234, 5),
                        0 0 50px rgb(5, 234, 5);
        }
        button:hover {
            box-shadow:0 0 5px rgb(5, 234, 5),
                        0 0 25px rgb(5, 234, 5),
                        0 0 50px rgb(5, 234, 5),
                        0 0 100px rgb(5, 234, 5),
                        0 0 200px rgb(5, 234, 5);
        }

        .switch {
            margin-top: 20px;
            cursor: pointer;
        }
        input::placeholder {
          color: orange;
        }

        option{
          background-color: #101010; /* Dark background like your body's background */
          color: orange; /* Orange text to match your theme */
          padding: 5px 10px;
           /* Some padding for better appearance */
        }
        
        .form-row {
          display: flex;
          justify-content: space-between;
          width: 100%;
          align-items: center;
          margin-bottom: 10px;
          }

          .form-row .form-group {
          width: 45%; /* Adjust this value according to your design preference */
          }
        
        
        /*From ChatGPT*/
          .form-group {
    position: relative;
         }

       .password-toggle {
    position: absolute;
    top: 59%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
       }

/* Media query for smaller screens, for example below 768px (you can adjust this value) */
    @media (max-width: 428px) {
    .password-toggle {
    position: absolute;
    top: 69%;
    right: -1px;
    cursor: pointer;
     }
  }
    </style>
    
</head>

<body style="background-image: url(images/imagplus/maizefarmer.jpg);background-repeat:no-repeat;background-position:center center; background-size:cover;  background-attachment:fixed;">
    
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    
    <div class="container" id="X">
        <form method="post" action="login" class="register-form"
							id="register-form" onsubmit="validateForm(event)">
							
							
						<div class="form-row">	
							<div class="form-group">
                               <label for="name"><i class="fas fa-user"></i> First Name</label> 
                               <input type="text" name="first-name" placeholder="First Name" minlength="3" required maxlength="50">
                            </div>
                            <div class="form-group">
								<label for="name"><i class="fas fa-user"></i> Last Name</label>
                                    <input type="text" name="last-name" placeholder="Last Name" minlength="3" required maxlength="50">
                            </div>
                       </div> 
                       
                       <div class="form-row">  
                            <div class="form-group">
								<label for="name"><i class="fas fa-id-card"></i> Aadhar Number</label> 
                                    <input type="text" name="Adhar" placeholder="Aadhar Number" required maxlength="12">
                            </div>
							<div class="form-group">
								<label for="email"><i class="fas fa-phone"></i> Phone</label> 
                                <input type="text" name="contact" placeholder="Phone" required maxlength="10"> 
							</div>
					  </div>
					  
					  <div class="form-row">		
							<div class="form-group">
								<label for="pass"><i class="fas fa-envelope"></i> Email ID</label> 
                                <input type="email" name="email" placeholder="Email ID" required maxlength="50">
                            </div>
                            <br>
                            <div>
                                <label for="City"><i class="fas fa-map-marked-alt"></i> District</label>
                                <input type="text" list="mylist" placeholder="Enter City"  size="2"  name="City" required/>
		                       <datalist id="mylist">
		                          
	<!-- Andhra Pradesh -->	                             
    <option value="Alluri Sitharama Raju"/>
    <option value="Anakapalli"/>
    <option value="Ananthapuramu"/>
    <option value="Annamayya"/>
    <option value="Bapatla"/>
    <option value="Chittoor"/>
    <option value="Dr. B.R. Ambedkar Konaseema"/>
    <option value="East Godavari"/>
    <option value="Eluru"/>
    <option value="Guntur"/>
    <option value="Kakinada"/>
    <option value="Krishna"/>
    <option value="Kurnool"/>
    <option value="Nandyal"/>
    <option value="Nellore"/>
    <option value="NTR"/>
    <option value="Palnadu"/>
    <option value="Parvathipuram Manyam"/>
    <option value="Prakasam"/>
    <option value="Srikakulam"/>
    <option value="Sri Sathya Sai"/>
    <option value="Tirupati"/>
    <option value="Visakhapatnam"/>
    <option value="Vizianagaram"/>
    <option value="West Godavari"/>
    <option value="YSR Kadapa"/>
    <!-- Arunachal Pradesh -->	
    <option value="Anjaw"/>
    <option value="Changlang"/>
    <option value="East Kameng"/>
    <option value="East Siang"/>
    <option value="Itanagar capital complex"/>
    <option value="Kamle"/>
    <option value="Kra Daadi"/>
    <option value="Kurung Kumey"/>
    <option value="Lepa Rada"/>
    <option value="Lohit"/>
    <option value="Longding"/>
    <option value="Lower Dibang Valley"/>
    <option value="Lower Siang"/>
    <option value="Lower Subansiri"/>
    <option value="Namsai"/>
    <option value="Pakke-Kessang"/>
    <option value="Papum Pare"/>
    <option value="Shi Yomi"/>
    <option value="Siang"/>
    <option value="Tawang"/>
    <option value="Tirap"/>
    <option value="Upper Dibang Valley"/>
    <option value="Upper Siang"/>
    <option value="Upper Subansiri"/>
    <option value="West Kameng"/>
    <option value="West Siang"/>
    <!-- Assam -->	
    <option value="Baksa"/>
    <option value="Barpeta"/>
    <option value="Bongaigaon"/>
    <option value="Cachar"/>
    <option value="Charaideo"/>
    <option value="Chirang"/>
    <option value="Darrang"/>
    <option value="Dhemaji"/>
    <option value="Dhubri"/>
    <option value="Dibrugarh"/>
    <option value="Dima Hasao"/>
    <option value="Goalpara"/>
    <option value="Golaghat"/>
    <option value="Hailakandi"/>
    <option value="Jorhat"/>
    <option value="Kamrup"/>
    <option value="Kamrup Metropolitan"/>
    <option value="Karbi Anglong"/>
    <option value="Karimganj"/>
    <option value="Kokrajhar"/>
    <option value="Lakhimpur"/>
    <option value="Majuli"/>
    <option value="Morigaon"/>
    <option value="Nagaon"/>
    <option value="Nalbari"/>
    <option value="Sivasagar"/>
    <option value="Sonitpur"/>
    <option value="South Salmara Mankachar"/>
    <option value="Tinsukia"/>
    <option value="Udalguri"/>
    <option value="West Karbi Anglong"/>
    <!--Bihar -->
    <option value="Araria"/>
    <option value="Arwal"/>
    <option value="Aurangabad"/>
    <option value="Banka"/>
    <option value="Begusarai"/>
    <option value="Bhagalpur"/>
    <option value="Bhojpur"/>
    <option value="Buxar"/>
    <option value="Darbhanga"/>
    <option value="East Champaran"/>
    <option value="Gaya"/>
    <option value="Gopalganj"/>
    <option value="Jamui"/>
    <option value="Jehanabad"/>
    <option value="Kaimur"/>
    <option value="Katihar"/>
    <option value="Khagaria"/>
    <option value="Kishanganj"/>
    <option value="Lakhisarai"/>
    <option value="Madhepura"/>
    <option value="Madhubani"/>
    <option value="Munger"/>
    <option value="Muzaffarpur"/>
    <option value="Nalanda"/>
    <option value="Nawada"/>
    <option value="Patna"/>
    <option value="Purnia"/>
    <option value="Rohtas"/>
    <option value="Saharsa"/>
    <option value="Samastipur"/>
    <option value="Saran"/>
    <option value="Sheikhpura"/>
    <option value="Sheohar"/>
    <option value="Sitamarhi"/>
    <option value="Siwan"/>
    <option value="Supaul"/>
    <option value="Vaishali"/>
    <option value="West Champaran"/>
    <!-- Chhattisgarh -->
    <option value="Balod"/>
    <option value="Baloda Bazar"/>
    <option value="Balrampur-Ramanujganj"/>
    <option value="Bastar"/>
    <option value="Bemetara"/>
    <option value="Bijapur"/>
    <option value="Bilaspur"/>
    <option value="Dantewada"/>
    <option value="Dhamtari"/>
    <option value="Durg"/>
    <option value="Gariaband"/>
    <option value="Gaurela-Pendra-Marwahi"/>
    <option value="Janjgir-Champa"/>
    <option value="Jashpur"/>
    <option value="Kabirdham"/>
    <option value="Kanker"/>
    <option value="Khairagarh-Chhuikhadan-Gandai"/>
    <option value="Kondagaon"/>
    <option value="Korba"/>
    <option value="Korea"/>
    <option value="Mahasamund"/>
    <option value="Manendragarh-Chirmiri-Bharatpur"/>
    <option value="Mohla-Manpur-Ambagarh Chowki"/>
    <option value="Mungeli"/>
    <option value="Narayanpur"/>
    <option value="Raigarh"/>
    <option value="Raipur"/>
    <option value="Rajnandgaon"/>
    <option value="Sarangarh-Bilaigarh"/>
    <option value="Shakti"/>
    <option value="Sukma"/>
    <option value="Surajpur"/>
    <option value="Surguja"/>
    
    <!-- Goa entries -->
    <option value="North Goa"/>
    <option value="South Goa"/>
    
    <!-- Gujarat entries -->
    <option value="Ahmedabad"/>
    <option value="Amreli"/>
    <option value="Anand"/>
    <option value="Aravalli"/>
    <option value="Banaskantha"/>
    <option value="Bharuch"/>
    <option value="Bhavnagar"/>
    <option value="Botad"/>
    <option value="Chhota Udaipur"/>
    <option value="Dahod"/>
    <option value="Dang"/>
    <option value="Devbhumi Dwarka"/>
    <option value="Gandhinagar"/>
    <option value="Gir Somnath"/>
    <option value="Jamnagar"/>
    <option value="Junagadh"/>
    <option value="Kheda"/>
    <option value="Kutch"/>
    <option value="Mahisagar"/>
    <option value="Mehsana"/>
    <option value="Morbi"/>
    <option value="Narmada"/>
    <option value="Navsari"/>
    <option value="Panchmahal"/>
    <option value="Patan"/>
    <option value="Porbandar"/>
    <option value="Rajkot"/>
    <option value="Sabarkantha"/>
    <option value="Surat"/>
    <option value="Surendranagar"/>
    <option value="Tapi"/>
    <option value="Vadodara"/>
    <option value="Valsad"/>

    <!-- Haryana entries -->
    <option value="Ambala"/>
    <option value="Bhiwani"/>
    <option value="Charkhi Dadri"/>
    <option value="Faridabad"/>
    <option value="Fatehabad"/>
    <option value="Gurugram"/>
    <option value="Hisar"/>
    <option value="Jhajjar"/>
    <option value="Jind"/>
    <option value="Kaithal"/>
    <option value="Karnal"/>
    <option value="Kurukshetra"/>
    <option value="Mahendragarh"/>
    <option value="Nuh"/>
    <option value="Palwal"/>
    <option value="Panchkula"/>
    <option value="Panipat"/>
    <option value="Rewari"/>
    <option value="Rohtak"/>
    <option value="Sirsa"/>
    <option value="Sonipat"/>
    <option value="Yamunanagar"/>

    <!-- Himachal Pradesh entries -->
    <option value="Bilaspur"/>
    <option value="Chamba"/>
    <option value="Hamirpur"/>
    <option value="Kangra"/>
    <option value="Kinnaur"/>
    <option value="Kullu"/>
    <option value="Lahaul and Spiti"/>
    <option value="Mandi"/>
    <option value="Shimla"/>
    <option value="Sirmaur"/>
    <option value="Solan"/>
    <option value="Una"/>

    <!-- Jharkhand entries -->
    <option value="Bokaro"/>
    <option value="Chatra"/>
    <option value="Deoghar"/>
    <option value="Dhanbad"/>
    <option value="Dumka"/>
    <option value="East Singhbhum"/>
    <option value="Garhwa"/>
    <option value="Giridih"/>
    <option value="Godda"/>
    <option value="Gumla"/>
    <option value="Hazaribag"/>
    <option value="Jamtara"/>
    <option value="Khunti"/>
    <option value="Koderma"/>
    <option value="Latehar"/>
    <option value="Lohardaga"/>
    <option value="Pakur"/>
    <option value="Palamu"/>
    <option value="Ramgarh"/>
    <option value="Ranchi"/>
    <option value="Sahibganj"/>
    <option value="Seraikela-Kharsawan"/>
    <option value="Simdega"/>
    <option value="West Singhbhum"/>
    <!-- Karnataka entries -->
    <option value="Bagalkot"/>
    <option value="Ballari"/>
    <option value="Belagavi"/>
    <option value="Bangalore Rural"/>
    <option value="Bangalore Urban"/>
    <option value="Bidar"/>
    <option value="Chamarajanagar"/>
    <option value="Chikkaballapura"/>
    <option value="Chikmagalur district"/>
    <option value="Chitradurga"/>
    <option value="Dakshina Kannada"/>
    <option value="Davanagere"/>
    <option value="Dharwada"/>
    <option value="Gadaga"/>
    <option value="Kalaburagi"/>
    <option value="Hassan"/>
    <option value="Haveri"/>
    <option value="Kodagu"/>
    <option value="Kolar"/>
    <option value="Koppal"/>
    <option value="Mandya"/>
    <option value="Mysore"/>
    <option value="Raichur"/>
    <option value="Ramanagara"/>
    <option value="Shimoga"/>
    <option value="Tumakuru"/>
    <option value="Udupi"/>
    <option value="Uttara Kannada"/>
    <option value="Vijayanagara"/>
    <option value="Bijapur"/>
    <option value="Yadgir"/>

    <!-- Kerala entries -->
    <option value="Alappuzha"/>
    <option value="Ernakulam"/>
    <option value="Idukki"/>
    <option value="Kannur"/>
    <option value="Kasaragod"/>
    <option value="Kollam"/>
    <option value="Kottayam"/>
    <option value="Kozhikode"/>
    <option value="Malappuram"/>
    <option value="Palakkad"/>
    <option value="Pathanamthitta"/>
    <option value="Thiruvananthapuram"/>
    <option value="Thrissur"/>
    <option value="Wayanad"/>

    <!-- Madhya Pradesh entries -->
    <option value="Agar Malwa"/>
    <option value="Alirajpur"/>
    <option value="Anuppur"/>
    <option value="Ashoknagar"/>
    <option value="Balaghat"/>
    <option value="Barwani"/>
    <option value="Betul"/>
    <option value="Bhind"/>
    <option value="Bhopal"/>
    <option value="Burhanpur"/>
    <option value="Chhatarpur"/>
    <option value="Chhindwara"/>
    <option value="Damoh"/>
    <option value="Datia"/>
    <option value="Dewas"/>
    <option value="Dhar"/>
    <option value="Dindori"/>
    <option value="Guna"/>
    <option value="Gwalior"/>
    <option value="Harda"/>
    <option value="Hoshangabad"/>
    <option value="Indore"/>
    <option value="Jabalpur"/>
    <option value="Jhabua"/>
    <option value="Katni"/>
    <option value="Khandwa"/>
    <option value="Khargone"/>
    <option value="Mandla"/>
    <option value="Mandsaur"/>
    <option value="Morena"/>
    <option value="Narsinghpur"/>
    <option value="Neemuch"/>
    <option value="Niwari"/>
    <option value="Panna"/>
    <option value="Raisen"/>
    <option value="Rajgarh"/>
    <option value="Ratlam"/>
    <option value="Rewa"/>
    <option value="Sagar"/>
    <option value="Satna"/>
    <option value="Sehore"/>
    <option value="Seoni"/>
    <option value="Shahdol"/>
    <option value="Shajapur"/>
    <option value="Sheopur"/>
    <option value="Shivpuri"/>
    <option value="Sidhi"/>
    <option value="Singrauli"/>
    <option value="Tikamgarh"/>
    <option value="Ujjain"/>
    <option value="Umaria"/>
    <option value="Vidisha"/>

    <!-- Maharashtra entries -->
    <option value="Ahmednagar"/>
    <option value="Akola"/>
    <option value="Amravati"/>
    <option value="Beed"/>
    <option value="Bhandara"/>
    <option value="Buldhana"/>
    <option value="Chandrapur"/>
    <option value="Osmanabad"/>
    <option value="Dhule"/>
    <option value="Gadchiroli"/>
    <option value="Gondia"/>
    <option value="Hingoli"/>
    <option value="Jalgaon"/>
    <option value="Jalna"/>
    <option value="Kolhapur"/>
    <option value="Latur"/>
    <option value="Mumbai City"/>
    <option value="Mumbai Suburban"/>
    <option value="Nanded"/>
    <option value="Nandurbar"/>
    <option value="Nagpur"/>
    <option value="Nashik"/>
    <option value="Palghar"/>
    <option value="Parbhani"/>
    <option value="Pune"/>
    <option value="Raigad"/>
    <option value="Ratnagiri"/>
    <option value="Aurangabad"/>
    <option value="Sangli"/>
    <option value="Satara"/>
    <option value="Sindhudurg"/>
    <option value="Solapur"/>
    <option value="Thane"/>
    <option value="Wardha"/>
    <option value="Washim"/>
    <option value="Yavatmal"/>

    <!-- Manipur entries -->
    <option value="Bishnupur"/>
    <option value="Chandel"/>
    <option value="Churachandpur"/>
    <option value="Imphal East"/>
    <option value="Imphal West"/>
    <option value="Jiribam"/>
    <option value="Kakching"/>
    <option value="Kamjong"/>
    <option value="Kangpokpi"/>
    <option value="Noney"/>
    <option value="Pherzawl"/>
    <option value="Senapati"/>
    <option value="Tamenglong"/>
    <option value="Tengnoupal"/>
    <option value="Thoubal"/>
    <option value="Ukhrul"/>
    
    <!-- Meghalaya entries -->
    <option value="East Garo Hills"/>
    <option value="East Khasi Hills"/>
    <option value="East Jaintia Hills"/>
    <option value="Eastern West Khasi Hills"/>
    <option value="North Garo Hills"/>
    <option value="Ri Bhoi"/>
    <option value="South Garo Hills"/>
    <option value="South West Garo Hills"/>
    <option value="South West Khasi Hills"/>
    <option value="West Garo Hills"/>
    <option value="West Jaintia Hills"/>
    <option value="West Khasi Hills"/>

    <!-- Mizoram entries -->
    <option value="Aizawl"/>
    <option value="Champhai"/>
    <option value="Hnahthial"/>
    <option value="Khawzawl"/>
    <option value="Kolasib"/>
    <option value="Lawngtlai"/>
    <option value="Lunglei"/>
    <option value="Mamit"/>
    <option value="Saiha"/>
    <option value="Saitual"/>
    <option value="Serchhip"/>

    <!-- Nagaland entries -->
    <option value="Chümoukedima"/>
    <option value="Dimapur"/>
    <option value="Kiphire"/>
    <option value="Kohima"/>
    <option value="Longleng"/>
    <option value="Mokokchung"/>
    <option value="Mon"/>
    <option value="Niuland"/>
    <option value="Noklak"/>
    <option value="Peren"/>
    <option value="Phek"/>
    <option value="Shamator"/>
    <option value="Tseminyü"/>
    <option value="Tuensang"/>
    <option value="Wokha"/>
    <option value="Zunheboto"/>

    <!-- Odisha entries -->
    <option value="Angul"/>
    <option value="Boudh"/>
    <option value="Bhadrak"/>
    <option value="Balangir"/>
    <option value="Bargarh"/>
    <option value="Balasore"/>
    <option value="Cuttack"/>
    <option value="Debagarh"/>
    <option value="Dhenkanal"/>
    <option value="Ganjam"/>
    <option value="Gajapati"/>
    <option value="Jharsuguda"/>
    <option value="Jajpur"/>
    <option value="Jagatsinghpur"/>
    <option value="Khordha"/>
    <option value="Kendujhar"/>
    <option value="Kalahandi"/>
    <option value="Kandhamal"/>
    <option value="Koraput"/>
    <option value="Kendrapara"/>
    <option value="Malkangiri"/>
    <option value="Mayurbhanj"/>
    <option value="Nabarangpur"/>
    <option value="Nuapada"/>
    <option value="Nayagarh"/>
    <option value="Puri"/>
    <option value="Rayagada"/>
    <option value="Sambalpur"/>
    <option value="Subarnapur"/>
    <option value="Sundargarh"/>

    <!-- Punjab entries -->
    <option value="Amritsar"/>
    <option value="Barnala"/>
    <option value="Bathinda"/>
    <option value="Firozpur"/>
    <option value="Faridkot"/>
    <option value="Fatehgarh Sahib"/>
    <option value="Fazilka"/>
    <option value="Gurdaspur"/>
    <option value="Hoshiarpur"/>
    <option value="Jalandhar"/>
    <option value="Kapurthala"/>
    <option value="Ludhiana"/>
    <option value="Malerkotla"/>
    <option value="Mansa"/>
    <option value="Moga"/>
    <option value="Sri Muktsar Sahib"/>
    <option value="Pathankot"/>
    <option value="Patiala"/>
    <option value="Rupnagar"/>
    <option value="Sahibzada Ajit Singh Nagar"/>
    <option value="Sangrur"/>
    <option value="Shahid Bhagat Singh Nagar"/>
    <option value="Tarn Taran"/>

   <!-- Rajasthan entries -->
    <option value="Anupgarh"/>
    <option value="Ajmer"/>
    <option value="Alwar"/>
    <option value="Balotra"/>
    <option value="Beawar"/>
    <option value="Bikaner"/>
    <option value="Barmer"/>
    <option value="Banswara"/>
    <option value="Bharatpur"/>
    <option value="Baran"/>
    <option value="Bundi"/>
    <option value="Bhilwara"/>
    <option value="Churu"/>
    <option value="Chittorgarh"/>
    <option value="Dausa"/>
    <option value="Deeg"/>
    <option value="Didwana"/>
    <option value="Dholpur"/>
    <option value="Dudu"/>
    <option value="Dungarpur"/>
    <option value="Gangapur city"/>
    <option value="Sri Ganganagar"/>
    <option value="Hanumangarh"/>
    <option value="Jaipur rural"/>
    <option value="Jhunjhunu"/>
    <option value="Jalore"/>
    <option value="Jodhpur"/>
    <option value="Jodhpur Gramin"/>
    <option value="Jaipur"/>
    <option value="Jaisalmer"/>
    <option value="Jhalawar"/>
    <option value="Karauli"/>
    <option value="Kekri"/>
    <option value="Khairthal-Tijara"/>
    <option value="Kotputli-Behror"/>
    <option value="Kota"/>
    <option value="Kuchaman"/>
    <option value="Malpura"/>
    <option value="Nagaur"/>
    <option value="Neem Ka Thana"/>
    <option value="Pali"/>
    <option value="Phalodi"/>
    <option value="Pratapgarh"/>
    <option value="Rajsamand"/>
    <option value="Sanchore"/>
    <option value="Salumbar"/>
    <option value="Sikar"/>
    <option value="Shahpura"/>
    <option value="Sawai Madhopur"/>
    <option value="Sirohi"/>
    <option value="Sujangarh"/>
    <option value="Tonk"/>
    <option value="Udaipur"/>
    <!-- Sikkim entries -->
    <option value="Gangtok"/>
    <option value="Mangan"/>
    <option value="Pakyong"/>
    <option value="Soreng"/>
    <option value="Namchi"/>
    <option value="Gyalshing"/>
    <!-- Tamil Nadu (TN) entries -->
    <option value="Ariyalur"/>
    <option value="Chengalpattu"/>
    <option value="Chennai"/>
    <option value="Coimbatore"/>
    <option value="Cuddalore"/>
    <option value="Dharmapuri"/>
    <option value="Dindigul"/>
    <option value="Erode"/>
    <option value="Kallakurichi"/>
    <option value="Kanchipuram"/>
    <option value="Kanyakumari"/>
    <option value="Karur"/>
    <option value="Krishnagiri"/>
    <option value="Madurai"/>
    <option value="Mayiladuthurai"/>
    <option value="Nagapattinam"/>
    <option value="Nilgiris"/>
    <option value="Namakkal"/>
    <option value="Perambalur"/>
    <option value="Pudukkottai"/>
    <option value="Ramanathapuram"/>
    <option value="Ranipet"/>
    <option value="Salem"/>
    <option value="Sivaganga"/>
    <option value="Tenkasi"/>
    <option value="Tiruppur"/>
    <option value="Tiruchirappalli"/>
    <option value="Theni"/>
    <option value="Tirunelveli"/>
    <option value="Thanjavur"/>
    <option value="Thoothukudi"/>
    <option value="Tirupattur"/>
    <option value="Tiruvallur"/>
    <option value="Tiruvarur"/>
    <option value="Tiruvannamalai"/>
    <option value="Vellore"/>
    <option value="Viluppuram"/>
    <option value="Virudhunagar"/>

    <!-- Telangana (TS) entries -->
    <option value="Adilabad"/>
    <option value="Bhadradri Kothagudem"/>
    <option value="Hanamkonda"/>
    <option value="Hyderabad"/>
    <option value="Jagtial"/>
    <option value="Jangaon"/>
    <option value="Jayashankar Bhupalpally"/>
    <option value="Jogulamba Gadwal"/>
    <option value="Kamareddy"/>
    <option value="Karimnagar"/>
    <option value="Khammam"/>
    <option value="Kumuram Bheem Asifabad"/>
    <option value="Mahabubabad"/>
    <option value="Mahbubnagar"/>
    <option value="Mancherial"/>
    <option value="Medak"/>
    <option value="Medchal–Malkajgiri"/>
    <option value="Mulugu"/>
    <option value="Nalgonda"/>
    <option value="Narayanpet"/>
    <option value="Nagarkurnool"/>
    <option value="Nirmal"/>
    <option value="Nizamabad"/>
    <option value="Peddapalli"/>
    <option value="Rajanna Sircilla"/>
    <option value="Ranga Reddy"/>
    <option value="Sangareddy"/>
    <option value="Siddipet"/>
    <option value="Suryapet"/>
    <option value="Vikarabad"/>
    <option value="Wanaparthy"/>
    <option value="Warangal"/>
    <option value="Yadadri Bhuvanagiri"/>

    <!-- Tripura (TR) entries -->
    <option value="Dhalai"/>
    <option value="Gomati"/>
    <option value="Khowai"/>
    <option value="North Tripura"/>
    <option value="Sepahijala"/>
    <option value="South Tripura"/>
    <option value="Unakoti"/>
    <option value="West Tripura"/>
    <!-- Uttar Pradesh (UP) entries -->
    <option value="Agra"/>
    <option value="Aligarh"/>
    <option value="Ambedkar Nagar"/>
    <option value="Amethi"/>
    <option value="Amroha"/>
    <option value="Auraiya"/>
    <option value="Ayodhya"/>
    <option value="Azamgarh"/>
    <option value="Bagpat"/>
    <option value="Bahraich"/>
    <option value="Ballia"/>
    <option value="Balrampur"/>
    <option value="Banda"/>
    <option value="Barabanki"/>
    <option value="Bareilly"/>
    <option value="Basti"/>
    <option value="Bhadohi"/>
    <option value="Bijnor"/>
    <option value="Budaun"/>
    <option value="Bulandshahr"/>
    <option value="Chandauli"/>
    <option value="Chitrakoot"/>
    <option value="Deoria"/>
    <option value="Etah"/>
    <option value="Etawah"/>
    <option value="Farrukhabad"/>
    <option value="Fatehpur"/>
    <option value="Firozabad"/>
    <option value="Gautam Buddha Nagar"/>
    <option value="Ghaziabad"/>
    <option value="Ghazipur"/>
    <option value="Gonda"/>
    <option value="Gorakhpur"/>
    <option value="Hamirpur"/>
    <option value="Hapur"/>
    <option value="Hardoi"/>
    <option value="Hathras"/>
    <option value="Jalaun"/>
    <option value="Jaunpur"/>
    <option value="Jhansi"/>
    <option value="Kannauj"/>
    <option value="Kanpur Dehat"/>
    <option value="Kanpur Nagar"/>
    <option value="Kasganj"/>
    <option value="Kaushambi"/>
    <option value="Kushinagar"/>
    <option value="Lakhimpur Kheri"/>
    <option value="Lalitpur"/>
    <option value="Lucknow"/>
    <option value="Maharajganj"/>
    <option value="Mahoba"/>
    <option value="Mainpuri"/>
    <option value="Mathura"/>
    <option value="Mau"/>
    <option value="Meerut"/>
    <option value="Mirzapur"/>
    <option value="Moradabad"/>
    <option value="Muzaffarnagar"/>
    <option value="Pilibhit"/>
    <option value="Pratapgarh"/>
    <option value="Prayagraj"/>
    <option value="Raebareli"/>
    <option value="Rampur"/>
    <option value="Saharanpur"/>
    <option value="Sambhal"/>
    <option value="Sant Kabir Nagar"/>
    <option value="Shahjahanpur"/>
    <option value="Shamli"/>
    <option value="Shravasti"/>
    <option value="Siddharthnagar"/>
    <option value="Sitapur"/>
    <option value="Sonbhadra"/>
    <option value="Sultanpur"/>
    <option value="Unnao"/>
    <option value="Varanasi"/>

    <!-- Uttarakhand (UK) entries -->
    <option value="Almora"/>
    <option value="Bageshwar"/>
    <option value="Chamoli"/>
    <option value="Champawat"/>
    <option value="Dehradun"/>
    <option value="Haridwar"/>
    <option value="Nainital"/>
    <option value="Pauri Garhwal"/>
    <option value="Pithoragarh"/>
    <option value="Rudraprayag"/>
    <option value="Tehri Garhwal"/>
    <option value="Udham Singh Nagar"/>
    <option value="Uttarkashi"/>

    <!-- West Bengal (WB) entries -->
    <option value="Alipurduar"/>
    <option value="Bankura"/>
    <option value="Birbhum"/>
    <option value="Cooch Behar"/>
    <option value="Dakshin Dinajpur"/>
    <option value="Darjeeling"/>
    <option value="Hooghly"/>
    <option value="Howrah"/>
    <option value="Jalpaiguri"/>
    <option value="Jhargram"/>
    <option value="Kalimpong"/>
    <option value="Kolkata"/>
    <option value="Maldah"/>
    <option value="Murshidabad"/>
    <option value="Nadia"/>
    <option value="North 24 Parganas"/>
    <option value="Paschim Bardhaman"/>
    <option value="Paschim Medinipur"/>
    <option value="Purba Bardhaman"/>
    <option value="Purba Medinipur"/>
    <option value="Purulia"/>
    <option value="South 24 Parganas"/>
    <option value="Uttar Dinajpur"/>
    <!-- Andaman and Nicobar (AN) entries -->
    <option value="Nicobar"/>
    <option value="North and Middle Andaman"/>
    <option value="South Andaman"/>

    <!-- Chandigarh (CH) entries -->
    <option value="Chandigarh"/>

    <!-- Dadra and Nagar Haveli and Daman and Diu (DD) entries -->
    <option value="Daman"/>
    <option value="Diu"/>
    <option value="Dadra and Nagar Haveli"/>

    <!-- Jammu and Kashmir (JK) entries -->
    <option value="Anantnag"/>
    <option value="Budgam"/>
    <option value="Bandipore"/>
    <option value="Baramulla"/>
    <option value="Doda"/>
    <option value="Ganderbal"/>
    <option value="Jammu"/>
    <option value="Kathua"/>
    <option value="Kishtwar"/>
    <option value="Kulgam"/>
    <option value="Kupwara"/>
    <option value="Poonch"/>
    <option value="Pulwama"/>
    <option value="Rajouri"/>
    <option value="Ramban"/>
    <option value="Reasi"/>
    <option value="Samba"/>
    <option value="Shopian"/>
    <option value="Srinagar"/>
    <option value="Udhampur"/>

    <!-- Ladakh (LA) entries -->
    <option value="Kargil"/>
    <option value="Leh"/>

    <!-- Lakshadweep (LD) entries -->
    <option value="Lakshadweep"/>

    <!-- National Capital Territory of Delhi (DL) entries -->
    <option value="Central Delhi"/>
    <option value="East Delhi"/>
    <option value="New Delhi"/>
    <option value="North Delhi"/>
    <option value="North East Delhi"/>
    <option value="North West Delhi"/>
    <option value="Shahdara district"/>
    <option value="South Delhi"/>
    <option value="South East Delhi"/>
    <option value="South West Delhi"/>
    <option value="West Delhi"/>

    <!-- Puducherry (PY) entries -->
    <option value="Karaikal"/>
    <option value="Mahé"/>
    <option value="Puducherry"/>
    <option value="Yanam"/>

    
    
    
                               </datalist>

                            </div>		
					</div>	
					
					<div id="password-strength"></div>
					<div class="form-row">
					        <div class="form-group">
                            <label for="re-pass"><i class="fas fa-lock"></i> Create Password</label>
                            <input type="password" id="password" name="password" placeholder="Password" minlength="8" maxlength="20" oninput="checkPasswordStrength();" onpaste="return false;" required>
                            <i class="fas fa-eye password-toggle" onclick="togglePasswordVisibility('password', this)"></i>
                        </div>
                        
                            <div id="password-strength"></div>
							<div class="form-group">
								<label for="contact"><i class="fas fa-lock"></i> Retype Password</label>
								<input type="password" id="confirm-password" name="confirm-password" placeholder="Retype Password" oninput="checkPasswordMatch();" onpaste="return false;" required>
							</div>
					</div>		
                            <div id="password-match"></div><br>
                            <div class="form-group">
								<label><i class="fas fa-user-tag"></i> Role :</label>                    
                                <input type="radio" name="role" value="buyer" required> Buyer
                                <input type="radio" name="role" value="seller" required> Seller
                                <input type="radio" name="role" value="other" required> Other
                             </div>
							<div class="form-group"><br>
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<button type="submit" name="signup" id="signup"
									class="form-submit" value="Register" >Register</button>
							</div><br>
							<div>
							 <a href="login.jsp">Already have an Account?</a>
							</div>
						</form>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- link rel="stylesheet" href="alert/dist/sweetalert.css">
	 -->	
	 <script type="text/javascript">
	      <!--var status = document.getElementById("status").value;
	      console.log(status);
	      if(status =="failed"){
	    	  swal("Sorry","The Email/Phone/Adhar is already registered :( ","error")	      
           }
	      -->
	      document.addEventListener("DOMContentLoaded", function() {
	    	    var status = document.getElementById("status").value;
	    	    console.log(status);
	    	     // Check if status has a value
	    	        if(status == "success") {
	    	            swal("Congrats", "Account Created Successfully", "success");
	    	        } else if (status == "duplicate_email") {
	    	            swal("Oops!", "Email already in use. Please use a different email address.", "error");
	    	        } else if (status == "duplicate_adhar") {
	    	            swal("Oops!", "The entered Aadhar number already in use. Please verify the Aadhar number.", "error");
	    	        } else if (status == "duplicate_contact") {
	    	            swal("Oops!", "The entered contact number is already in use. Please use a different number.", "error");
	    	        } else if (status == "error") {
	    	            swal("Oops!", "There was an issue creating your account! Please Try Again", "error");
	    	        }
	    	    
	    	});


	      function togglePasswordVisibility(inputId, iconElement) {
	    	    var passwordInput = document.getElementById(inputId);
	    	    if (passwordInput.type === "password") {
	    	        passwordInput.type = "text";
	    	        iconElement.classList.remove("fa-eye");
	    	        iconElement.classList.add("fa-eye-slash");
	    	    } else {
	    	        passwordInput.type = "password";
	    	        iconElement.classList.remove("fa-eye-slash");
	    	        iconElement.classList.add("fa-eye");
	    	    }
	    	}
	</script>
</body>

</html>
