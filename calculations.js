/*function calculate() {
  // Get the selected values from the two select elements
  const num1 = parseInt(document.getElementById('cropdata').value);
  const num2 = parseInt(document.getElementById('soil').value);

  // Perform the addition
  const sum = num1 + num2;

  // Display the result
  document.getElementById('wateroutput').textContent = sum;
  //document.getElementById('timetaken').textContent = sum;
}
function calculate() {
  // Get the selected value from the select element
  const num1 = parseInt(document.getElementById('cropdata').value);

  // Get the entered value from the input field
  const num2 = parseInt(document.getElementById('area').value);

  const num3 = parseInt(document.getElementById('soil').value);

  // Perform the addition
  const sum = num1 + num2 + num3;

  // Set the result to the input value
  document.getElementById('wateroutput').value = sum;
  document.getElementById('timetaken').value = sum;
  document.getElementById('fert').value = sum;
  document.getElementById('seed').value = sum;
  document.getElementById('cost').value = sum;
}
function handleOption() {
  const selectedOption = document.getElementById('options').value;

  switch (selectedOption) {
    case 'option1':
      // Code to execute for Option 1
      console.log("Option 1 selected");
      break;
    case 'option2':
      // Code to execute for Option 2
      console.log("Option 2 selected");
      break;
    case 'option3':
      // Code to execute for Option 3
      console.log("Option 3 selected");
      break;
    default:
      console.log("Invalid option");
      break;
  }
}

function handleOption() {
  const selectedOption = document.getElementById('options').value;

  if (selectedOption === 'option1') {
    // Code to execute for Option 1
    console.log("Option 1 selected");
  } else if (selectedOption === 'option2') {
    // Code to execute for Option 2
    console.log("Option 2 selected");
  } else if (selectedOption === 'option3') {
    // Code to execute for Option 3
    console.log("Option 3 selected");
  } else {
    console.log("Invalid option");
  }
}
document.getElementById('wateroutput').value = num1 + "-" + sum;
  document.getElementById('timetaken').value = sum;
  document.getElementById('fert').value = sum;
  document.getElementById('seed').value = sum;
  document.getElementById('cost').value = sum;

*/function reset() {
  // Reset the selected value in the select element
  document.getElementById('wateroutput').selectedIndex = 0;

  document.getElementById('cropdata').selectedIndex = 0;

  document.getElementById('soil').selectedIndex = 0;

  // Clear the entered value in the input field
  document.getElementById('area').value = '';

  // Clear the displayed result
  document.getElementById('wateroutput').value = '';
  document.getElementById('timetaken').value = '';
  document.getElementById('fert').value = '';
  document.getElementById('seed').value = '';
  document.getElementById('cost').value = '';
}



function calculate() {
  // Get the selected value from the select element
  const num1 = parseInt(document.getElementById('cropdata').value);

  // Get the entered value from the input field
  const num2 = parseInt(document.getElementById('area').value);

  const num3 = parseInt(document.getElementById('soil').value);

  // Perform the addition
  //const sum = num1 + num2 + num3;

  if (num1 === 50) {
    const w1=500,w2=600,t1=3,s1=200,s2=300,sK=0.3,n1=1200,n2=1500,N=1.5,P=0.8,p1=600,p2=800,ar=33,ar1=50,arA=0.0125;
   
   if(num3== -2 || num3== -3 || num3== -4 || num3== -7 ){
    const w1=400,w2=500;
    document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" liters per week";
    document.getElementById('timetaken').value = t1+"-4"+" months";
    document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
    document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
    document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
   }else if(num3== -6){
    const w1=600,w2=800,s1=500,s2=600,sK=0.6;
    document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" liters per week";
    document.getElementById('timetaken').value = "4"+"-5"+" months";
    document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
    document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
    document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
   }else if(num3== -5 || num3== -8){
    const w1=300,w2=500;
    document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" liters per week";
    document.getElementById('timetaken').value = "4"+"-5"+" months";
    document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
    document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
    document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
   }else if(num3== -1){
    document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" liters per week";
    document.getElementById('timetaken').value = "4"+"-5"+" months";
    document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
    document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
    document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
   }

    // Code to execute for Option 1
    //document.getElementById('wateroutput').value = num1 + "-" + sum;
  } if (num1 === 18) {
    const w1=250,w2=300,t1=4,s1=100,s2=150,sK=0.15,N=1.5,P=3,ar=30,ar1=53,arA=0.0130,ml_l=0.3;
    if(num3== -2 || num3==-3  || num3== -4 || num3== -7){
      const w1=350,w2=450,ml_l=0.3,ar=42;
      document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" ml " + "("+ml_l*num2+"liters)" +"per week";
      document.getElementById('timetaken').value = t1+"-5"+" months";
      document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
      document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
      document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";

    }
    else if(num3==-6){
      const w1=800,w2=1200,s1=1000,s2=1200,sK=1.2,ml_l=1.2,ar=48;
      document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" ml " + "("+ml_l*num2+"liters)" +"per week";
      document.getElementById('timetaken').value = t1+"-5"+" months";
      document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
      document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
      document.getElementById('cost').value =ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
    }
    else if(num3== -5 || num3==-8){
      const w1=400,w2=600,ml_l=0.6,ar=37;
      document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" ml " + "("+ml_l*num2+"liters)" +"per week";
      document.getElementById('timetaken').value = t1+"-5"+" months";
      document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
      document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
      document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
    }
    else if(num3==-1)

      document.getElementById('wateroutput').value = w1*num2+"-"+w2*num2+" ml " + "("+ml_l*num2+"liters)" +"per week";
      document.getElementById('timetaken').value = t1+"-5"+" months";
      document.getElementById('fert').value = "("+N*num2+"N-"+P*num2+"P-"+P*num2+"K )kgs";
      document.getElementById('seed').value = s1*num2+"-"+s2*num2+" grams"+"("+sK*num2+"kgs)";
      document.getElementById('cost').value = ar*num2+"-"+ar1*num2+"sq meters"+"("+arA*num2+"acres)";
    }
  }  if (num1 === 45) {
    // Code to execute for Option 3
    
  } else {
    document.alert("Invalid option");
  }

  
/*
CODE 01===========================================================
function calculate() {
  // Get values from the document
  const num1 = parseInt(document.getElementById('cropdata').value);
  const num2 = parseInt(document.getElementById('area').value);
  const num3 = parseInt(document.getElementById('soil').value);
  
  let w1, w2, s1, s2, sK, t1,N,P;
  const  ar = 500, arA = 0.1235;
  
  if (num1 === 50) {
    t1 = 3;
    s1 = 200; 
    s2 = 300; 
    sK = 0.3;
    N = 1.5;
    P = 0.8;
    if (num3 == -2 || num3 == -3 || num3 == -4) {
      w1 = 400; w2 = 500;
    } else if (num3 == -6) {
      w1 = 600; w2 = 800; s1 = 500; s2 = 600; sK = 0.6;
      t1 = 4;
    } else if (num3 == -5) {
      w1 = 300; w2 = 500;
      t1 = 4;
    } else if (num3 == -1) {
      w1 = 500; w2 = 600;
      t1 = 4;
    }
    
    document.getElementById('wateroutput').value = w1*num2 + "-" + w2*num2 + " liters per week";
    document.getElementById('timetaken').value = t1 + "-5 months";
    document.getElementById('fert').value = "(" + N*num2 + "N-" + P*num2 + "P-" + P*num2 + "K )kgs";
    document.getElementById('seed').value = s1*num2 + "-" + s2*num2 + " grams (" + sK*num2 + "kgs)";
    document.getElementById('cost').value = ar*num2 + "sq meters (" + arA*num2 + "acres)";
    
  } else if (num1 === 100) {
    alert("Option 2 selected");
  } else if (num1 === 45) {
    // Code for Option 3 (currently empty)
  } else {
    alert("Invalid option");
  }
}
CODE 02===========================================================
function calculate() {
  // Get values from the document
  const num1 = parseInt(document.getElementById('cropdata').value);
  const num2 = parseInt(document.getElementById('area').value);
  const num3 = parseInt(document.getElementById('soil').value);
  
  let w1, w2, s1, s2, sK, t1,N,P;
  const  ar = 500, arA = 0.1235;
  
  function displayResults(w1, w2, s1, s2, sK, t1, num2,P,N) {
    document.getElementById('wateroutput').value = w1*num2 + "-" + w2*num2 + " liters per week";
    document.getElementById('timetaken').value = t1 + "-5 months";
    document.getElementById('fert').value = "(" + N*num2 + "N-" + P*num2 + "P-" + P*num2 + "K )kgs";
    document.getElementById('seed').value = s1*num2 + "-" + s2*num2 + " grams (" + sK*num2 + "kgs)";
    document.getElementById('cost').value = ar*num2 + "sq meters (" + arA*num2 + "acres)";
  }
  
  if (num1 === 50) {
    t1 = 3;
    s1 = 200; 
    s2 = 300; 
    sK = 0.3;
    N = 1.5;
    P = 0.8;
    if (num3 == -2 || num3 == -3 || num3 == -4) {
      w1 = 400; w2 = 500;
    } else if (num3 == -6) {
      w1 = 600; w2 = 800; s1 = 500; s2 = 600; sK = 0.6;
      t1 = 4;
    } else if (num3 == -5) {
      w1 = 300; w2 = 500;
      t1 = 4;
    } else if (num3 == -1) {
      w1 = 500; w2 = 600;
      t1 = 4;
    }
    
    displayResults(w1, w2, s1, s2, sK, t1, num2,P,N);
    
  } else if (num1 === 100) {
    alert("Option 2 selected");
  } else if (num1 === 45) {
    // Code for Option 3 (currently empty)
  } else {
    alert("Invalid option");
  }
}*/



