// https://shancarter.github.io/mr-data-converter/

// Function to fetch data from the JSON file
function fetchData() {
    fetch('data.json')
        .then(response => response.json())
        .then(data => {
            populateDropdowns(data); 
        });
}

// Function to populate dropdown menus for general and language majors
function populateDropdowns(data) {
    const generalMajorDropdown = document.getElementById('generalMajor'); 
    const languageMajorDropdown = document.getElementById('languageMajor'); 

    // set initial options for the dropdown menus
    generalMajorDropdown.innerHTML = '<option value="">--Select General Major--</option>';
    languageMajorDropdown.innerHTML = '<option value="">--Select Language Major--</option>';

    
    const uniqueGenerals = [...new Set(data.map(item => item.General))].filter(value => value !== ""); 
    const uniqueLanguages = [...new Set(data.map(item => item.Language))].filter(value => value !== ""); 

    // Adding General Major options to the dropdown
    uniqueGenerals.forEach(general => {
        const option = document.createElement('option'); // Create a new dropdown option element
        option.value = general; 
        option.textContent = general; 
        generalMajorDropdown.appendChild(option);
    });

    // Add Language Major options to the dropdown
    uniqueLanguages.forEach(language => {
        const option = document.createElement('option'); // Create a new dropdown option element
        option.value = language; 
        option.textContent = language; 
        languageMajorDropdown.appendChild(option); 
    });
}

// !!!Main function for outputting result
// updates the result based on selected majors
function updateResult() {
    const generalMajor = document.getElementById('generalMajor').value; // Get the selected General Major value
    const languageMajor = document.getElementById('languageMajor').value; // Get the selected Language Major value

    // use fetch API to retrieve the JSON file again
    fetch('data.json')
        .then(response => response.json()) 
        .then(data => {
            // Find a matching entry based on the general and language selections
            const matchedMajor = data.find(item => item.General === generalMajor && item.Language === languageMajor);

            const resultElement = document.getElementById('result'); // main element to display the result
            const descriptionElement = document.getElementById('description'); // main element to display the description

            if (matchedMajor) {
                resultElement.textContent = `Combined Major: ${matchedMajor["Combined Major"]}`;
                descriptionElement.textContent = matchedMajor.Description;
            } else {
                // else case if no match is found
                resultElement.textContent = "No combined major found.";
                descriptionElement.textContent = "";
            }
        });
}


fetchData();
