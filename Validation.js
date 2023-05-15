function validateForm() {
  const username = document.getElementById("username");
  const pin = document.getElementById("pin");
  const states = document.getElementById("states");
  const validatePinCheckbox = document.getElementById("validate-pin");
  const testMeCheckbox = document.getElementById("test-me");
  
  const validationMessages = [];
  
  if (username.value.length < 6 || username.value.length > 8) {
    validationMessages.push("Username should be between 6 and 8 characters.");
    alert("Username should be between 6 and 8 characters.");
  }
  
  if (validatePinCheckbox.checked && !pin.value.match(/^[a-zA-Z0-9]+$/)) {
    validationMessages.push("Pin should be alphanumeric.");
    alert("Pin should be alphanumeric.");
  }
  
  if (!states.value) {
    validationMessages.push("Please select a state.");
    alert("Please select a state.");
  }
  
  let optionChecked = false;
  const options = document.getElementsByName("option");
  options.forEach(option => {
    if (option.checked) {
      optionChecked = true;
    }
  });
  
  if (!optionChecked) {
    validationMessages.push("Please choose an option.");
    alert("Please choose an option.");
  }
  
  if (testMeCheckbox.checked) {
    validationMessages.push("Validation message checked.");
   document.getElementById("validation-messages").innerHTML = validationMessages;
  } else {
    validationMessages
  }
}