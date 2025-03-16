$(document).ready(function () {
    let offeredLanguages = {
        "French": "FRE",
        "Italian": "ITA",
        "Spanish": "SPA",
        "German": "GER",
        "Arabic": "ARB",
        "Portuguese": "POR",
        "Latin": "LAT"
    };

    let selectedLangCode = ""; // Stores the language code

    // Step 1: Handle Language Selection
    $('#languageDropdown').change(function () {
        let selectedLang = $(this).val();

        if (offeredLanguages[selectedLang]) {
            selectedLangCode = offeredLanguages[selectedLang]; // Update language code dynamically
            $('#placementMethodContainer').removeClass('hidden'); // Show Placement Method Dropdown
            $('#scoreContainer, #examScoreContainer, #placeWaiverScoreContainer, #highSchoolExperienceContainer, #studyAbroadContainer, #placementResult, #placeWaiverResult, #sealBiliteracyContainer, #waiverContainer, #placementMethodText').addClass('hidden'); // Hide other sections
        } else {
            // Show waiver info for unoffered languages
            selectedLangCode = "";
            $('#placementMethodContainer, #scoreContainer, #examScoreContainer, #placeWaiverScoreContainer, #highSchoolExperienceContainer, #studyAbroadContainer, #placementResult, #placeWaiverResult, #sealBiliteracyContainer').addClass('hidden');
            $('#waiverContainer').removeClass('hidden');

            $('#waiverText').html(`
                <h3>${selectedLang}</h3>
                <p><strong>${selectedLang} is not offered as a course at this time.</strong></p>
                <p>To receive a waiver, you must:</p>
                <ul>
                    <li>✅ Submit official documentation</li>
                    <li>✅ Take a proficiency test</li>
                </ul>
                <p>If approved, you may receive credit for WLL101 or WLL200.</p>
                <button class="button">Waive Submission</button>
            `);
        }
    });

    // Step 2: Handle Placement Method Selection
    $('#placementMethodDropdown').change(function () {
        let selectedMethod = $(this).val();
        let methodText = "";

        $('#examScoreContainer, #scoreContainer, #placeWaiverScoreContainer, #highSchoolExperienceContainer, #studyAbroadContainer, #placementResult, #placeWaiverResult, #sealBiliteracyContainer, #waiverContainer').addClass('hidden');
        $('#examScoreDropdown').empty();

        switch (selectedMethod) {
            case "PLACE Test":
                methodText = "You have selected the standard placement test.";
                $('#scoreContainer').removeClass('hidden');
                break;
            case "PLACE Waiver Exam":
                methodText = "Select your PLACE Waiver Exam score.";
                $('#placeWaiverScoreContainer').removeClass('hidden');
                break;
            case "High School Placement":
                methodText = "Select your High School Experience level.";
                $('#highSchoolExperienceContainer').removeClass('hidden');
                break;
            case "Advanced Placement (AP)":
                methodText = "Select your AP exam score.";
                $('#examScoreContainer').removeClass('hidden');
                $('#examScoreDropdown').append(`
                    <option value="" disabled selected>Select your AP score</option>
                    <option value="AP-3">Score 3</option>
                    <option value="AP-4-5">Score 4-5</option>
                `);
                break;
            case "CLEP Exam":
                methodText = "Select your CLEP exam score.";
                $('#examScoreContainer').removeClass('hidden');
                $('#examScoreDropdown').append(`
                    <option value="" disabled selected>Select your CLEP score</option>
                    <option value="CLEP-50-65">Score 50-65</option>
                    <option value="CLEP-66">Score >= 66</option>
                `);
                break;
            case "Seal of Biliteracy":
                $('#sealBiliteracyContainer').removeClass('hidden');
                let text = selectedLangCode ? `
                    <p><strong>Eligible for course credit:</strong></p>
                    <p>If your Seal of Biliteracy is recognized, you may waive WLL101 or WLL200.</p>
                    <p>Submit official documentation to receive credit.</p>
                    <button class="button">Documentation Submission</button>
                ` : `
                    <h4><strong>Example: Student Selects "Seal of Biliteracy" for a Language Not Offered</strong></h4>
                    <p>Seal of Biliteracy for this language is not applicable.</p>
                    <p>The selected language is not offered as a course at this time.</p>
                    <p>To receive a waiver, submit official documentation.</p>
                    <button class="button">Waive Submission</button>
                `;
                $('#sealBiliteracyText').html(text);
                break;
            case "Study Abroad":
                methodText = "Did you complete a study abroad program in this language?";
                $('#studyAbroadContainer').removeClass('hidden');
                break;
            default:
                methodText = "";
        }

        $('#placementMethodResult').text(methodText);
        $('#placementMethodText').toggleClass('hidden', !methodText);
    });

   // Step 3: Handle PLACE Waiver Score Selection 
$('#placeWaiverScoreDropdown').change(function () {
    let selectedScore = $(this).val();
    let waiverText = "";

    if (selectedScore === "3") {
        waiverText = `You will receive credit for WLL 101. You may waive WLL 101.`;
    } else if (selectedScore === "4") {
        waiverText = `You will receive credit for WLL 101 & 200. You may waive WLL 101 & 200.`;
    }

    if (waiverText) {
        $('#placeWaiverText').html(waiverText);
        $('#placeWaiverResult').removeClass('hidden');  
    } else {
        $('#placeWaiverResult').addClass('hidden');  
    }
});

    // Step 4: Handle PLACE Test Score Selection
    $('#scoreDropdown').change(function () {
        let selectedScore = $(this).val();
        let placementText = selectedLangCode ? `
            You should enroll in ${selectedLangCode} ${selectedScore === "0-1" ? "100" : selectedScore === "2" ? "101" : selectedScore === "3" ? "200" : selectedScore === "4" ? "210" : "300"}.
        ` : "";

        $('#resultText').html(placementText);
        $('#placementResult').toggleClass('hidden', !placementText);
    });

    // Step 5: Handle AP/CLEP Score Selection
    $('#examScoreDropdown').change(function() {
        let selectedScore = $(this).val();
        let examText = "";
        if (!selectedLangCode) return; // Prevent displaying if no valid language is selected

        // Generate correct placement message
        if (selectedScore.includes("AP")) {
            examText = `AP Exam Result: You will receive credit for ${selectedLangCode} ${selectedScore.includes("4-5") ? "101 & 200" : "101"}. You may waive ${selectedLangCode} ${selectedScore.includes("4-5") ? "101 & 200" : "101"}.`;
        } else if (selectedScore.includes("CLEP")) {
            examText = `CLEP Exam Result: You will receive credit for ${selectedLangCode} ${selectedScore.includes("66") ? "101 & 200" : "100 & 101"}. You may waive ${selectedLangCode} ${selectedScore.includes("66") ? "101 & 200" : "101"}.`;
        }
        if (examText) {
            $('#resultText').text(examText);
            $('#placementResult').removeClass('hidden'); // Show result box
    
            $('#examScoreContainer').after($('#placementResult'));  
        } else {
            $('#placementResult').addClass('hidden'); // Hide if no selection
        }
    }); 
});
