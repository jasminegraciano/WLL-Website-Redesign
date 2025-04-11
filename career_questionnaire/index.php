<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Career Questionnaire</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: "Open Sans", Helvetica, Arial, sans-serif;
            text-align: center;
            background-color: #00246B;
            margin: 0;
        }

        .container {
            z-index:2;
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: white; 
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .logo {
            z-index:1;
            position: absolute;
            top: 20px;
            left: 20px;
            width: 300px; 
            background-color: #00246B;
            max-width: 100%;
            height: auto;
            width: auto\9;
        }
    
        .question, .start, .end { display: none; }
        .navigation { margin-top: 20px; display: flex; justify-content: space-between;}
        .hidden { display: none; }
        .btn-selected { background-color: #003399; color: yellow !important; }
        .btn-nav { width: 48%; background-color:#003399}
        .btn-gen {background-color:#003399}
        #options button {color: #003399; border: 1px solid #003399; }
        #options button:hover { background-color: #F5C446;color: white;}
    </style>
</head>
<body class="d-flex justify-content-center align-items-center" style="margin-top: 20px;">
    <a href="https://www.southernct.edu/academics/world-languages-and-literatures">
        <img src="static/scsu-logo.png" alt="SCSU Logo" class="logo">
    </a>

    <div class="container text-center">
        <!-- Start Screen -->
        <div id="start">
            <h1>Welcome to the SCSU World Languages Questionnaire</h1>
            <p>Answer the following questions and we'll evaluate your answers into possible jobs focused on world language studies.</p>
            <button class="btn btn-primary" onclick="nextQuestion()">Start</button>
        </div>

        <!-- Questions Section -->
        <div id="questions" class="hidden">
            <h2 id="question-text"></h2>
            <div id="options" class="d-grid gap-2"></div>
            <div class="mt-3">
                <button id="prev" class="btn btn-secondary hidden" onclick="prevQuestion()">← Previous</button>
                <button id="next" class="btn btn-primary" onclick="nextQuestion()">Next →</button>
            </div>
        </div>

        
        <!-- End Screen -->
        <div id="end" class="hidden">
            <h2>Thank you for completing the questionnaire!</h2>
            <p>These are the closest matches we could find:</p>
            
            <!-- Accordion for Job Recommendation -->
            <div class="accordion" id="jobRecommendationAccordion">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingJob">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseJob" aria-expanded="true" aria-controls="collapseJob">
                            Job Title (Click to view description)
                        </button>
                    </h2>
                    <div id="collapseJob" class="accordion-collapse collapse" aria-labelledby="headingJob" data-bs-parent="#jobRecommendationAccordion">
                        <div class="accordion-body">
                            <div id="job-recommendation">
                                <!-- Job description will be inserted here -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- View all jobs -->
            <div id="show-jobs" class="mt-3">
                <button class="btn btn-outline-primary" onclick="fetchAllJobs()">Don't like these suggestions? Click here.</button>
            </div>
        </div>
    
        <!-- Job navigation -->
        <div id="job-pagination" class="mt-3 hidden justify-content-between">
            <button id="prevJobsBtn" class="btn btn-secondary" onclick="prevJobs()">← Previous</button>
            <button id="nextJobsBtn" class="btn btn-primary" onclick="nextJobs()">Next →</button>
        </div>

        <div id="restart" class="hidden">
            <!-- Restart Survey Button -->
            <div class="mt-3">
                <button class="btn btn-secondary" onclick="restartSurvey()">Restart Survey</button>
            </div>
        </div>

        
    </div>

    <script>
        let currentQuestion = -1;
        let selectedOptions = {};
        let questions = [];

        async function fetchQuestions() {
            const response = await fetch('get_questions.php');
            questions = await response.json();
            showQuestion();
        }

        function showQuestion() {
            if (currentQuestion === -1) {
                document.getElementById('start').style.display = 'block';
                document.getElementById('questions').style.display = 'none';
                document.getElementById('end').style.display = 'none';
            } else if (currentQuestion >= questions.length) {
                document.getElementById('start').style.display = 'none';
                document.getElementById('questions').style.display = 'none';
                document.getElementById('end').style.display = 'block';
                document.getElementById('restart').classList.remove('hidden');
                fetchJobEval();
            } else {
                document.getElementById('start').style.display = 'none';
                document.getElementById('questions').style.display = 'block';
                document.getElementById('end').style.display = 'none';

                document.getElementById('question-text').textContent = `Q${currentQuestion + 1}/${questions.length}: ${questions[currentQuestion].question_text}`;
                const optionsContainer = document.getElementById('options');
                optionsContainer.innerHTML = "";

                questions[currentQuestion].options.forEach(option => {
                    let button = document.createElement('button');
                    button.textContent = option.answer_text;
                    button.classList.add('btn', 'btn-outline-primary', 'w-100');
                    button.onclick = () => selectOption(option.answer_id, button);

                    if (selectedOptions[currentQuestion]?.includes(option.answer_id)) {
                        button.classList.add('btn-selected');
                    }

                    optionsContainer.appendChild(button);
                });

                document.getElementById('prev').classList.toggle('hidden', currentQuestion === 0);
                document.getElementById('next').textContent = currentQuestion === questions.length - 1 ? 'Finish' : 'Next →';
            }
        }

        function nextQuestion() {
            currentQuestion++;
            showQuestion();
        }

        function prevQuestion() {
            currentQuestion--;
            showQuestion();
        }

        function restartSurvey() {
            currentQuestion = -1;
            selectedOptions = {};
            sessionStorage.removeItem('responses');
            showQuestion();
        }

        function selectOption(option, button) {
            const isMultipleChoice = questions[currentQuestion].multiple_choice === 1;

            let currentResponses = JSON.parse(sessionStorage.getItem('responses')) || {};
            if (isMultipleChoice) {
                currentResponses[currentQuestion] = currentResponses[currentQuestion] || [];
                if (currentResponses[currentQuestion].includes(option)) {
                    currentResponses[currentQuestion] = currentResponses[currentQuestion].filter(o => o !== option);
                    button.classList.remove('btn-selected');
                } else {
                    currentResponses[currentQuestion].push(option);
                    button.classList.add('btn-selected');
                }
            } else {
                currentResponses[currentQuestion] = [option];
                document.querySelectorAll('#options button').forEach(btn => btn.classList.remove('btn-selected'));
                button.classList.add('btn-selected');
            }
            sessionStorage.setItem('responses', JSON.stringify(currentResponses));
        }

        async function fetchJobEval() {
            let responses = JSON.parse(sessionStorage.getItem('responses')) || {};
            let answerIds = Object.values(responses).flat();

            if (answerIds.length === 0) {
                document.getElementById('job-recommendation').textContent = 'No answers selected.';
                return;
            }

            const response = await fetch(`get_job_eval.php?${answerIds.map(id => `answer_id[]=${id}`).join('&')}`);
            const jobs = await response.json();

            const jobAccordion = document.getElementById('jobRecommendationAccordion');
            jobAccordion.innerHTML = '';

            if (!jobs.length) {
                jobAccordion.innerHTML = `<p>Sorry, we could not find a job recommendation for you at this time.</p>`;
                return;
            }

            jobs.forEach(job => {
                const jobId = job.job_id;
                const jobTitle = job.job_title;
                const jobDescription = job.alumni_stories?.trim() ? `<p>${job.job_description}</p>` : job.job_description;
                const alumniStories = job.alumni_stories?.trim() ? `<h5>Alumni Stories:</h5><p>${job.alumni_stories}</p>` : '';

                const accordionItem = document.createElement('div');
                accordionItem.classList.add('accordion-item');

                accordionItem.innerHTML = `
                    <h2 class="accordion-header" id="heading${jobId}">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${jobId}" aria-expanded="false" aria-controls="collapse${jobId}">
                            ${jobTitle}
                        </button>
                    </h2>
                    <div id="collapse${jobId}" class="accordion-collapse collapse" aria-labelledby="heading${jobId}" data-bs-parent="#jobRecommendationAccordion">
                        <div class="accordion-body">
                            ${jobDescription}
                            ${alumniStories}
                        </div>
                    </div>
                `;

                jobAccordion.appendChild(accordionItem);
            });
        }
        
        // This function handles showing all of the jobs, 8 at a time, if the user is unsatisfied with the results.
        let jobs = []
        let currentPage = 0
        let currentPageMax = 1

        async function fetchAllJobs() {
            const response = await fetch('get_all_jobs.php');
            jobs = await response.json(); // note: remove 'let' to use the global jobs array

            const jobAccordion = document.getElementById('jobRecommendationAccordion');
            jobAccordion.innerHTML = '';
            currentPage = 0;
            currentPageMax = Math.ceil(jobs.length / 8);

            document.getElementById('job-pagination').classList.remove('hidden');
            document.getElementById('job-pagination').classList.add('d-flex');
            document.getElementById('show-jobs').classList.add('hidden');
            renderJobs();
        }

        function renderJobs() {
            const jobAccordion = document.getElementById('jobRecommendationAccordion');
            jobAccordion.innerHTML = '';

            const startIndex = currentPage * 8;
            const endIndex = Math.min(startIndex + 8, jobs.length);

            for (let i = startIndex; i < endIndex; i++) {
                const job = jobs[i];
                const jobId = job.job_id;
                const jobTitle = job.job_title;
                const jobDescription = job.alumni_stories?.trim() ? `<p>${job.job_description}</p>` : job.job_description;
                const alumniStories = job.alumni_stories?.trim() ? `<h5>Alumni Stories:</h5><p>${job.alumni_stories}</p>` : '';

                const accordionItem = document.createElement('div');
                accordionItem.classList.add('accordion-item');
                accordionItem.innerHTML = `
                    <h2 class="accordion-header" id="headingAll${jobId}">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAll${jobId}" aria-expanded="false" aria-controls="collapseAll${jobId}">
                            ${jobTitle}
                        </button>
                    </h2>
                    <div id="collapseAll${jobId}" class="accordion-collapse collapse" aria-labelledby="headingAll${jobId}" data-bs-parent="#jobRecommendationAccordion">
                        <div class="accordion-body">
                            ${jobDescription}
                            ${alumniStories}
                        </div>
                    </div>
                `;
                
                jobAccordion.appendChild(accordionItem);
            }

            // Show or hide pagination buttons
            document.getElementById('prevJobsBtn').disabled = currentPage === 0;
            document.getElementById('nextJobsBtn').disabled = currentPage >= currentPageMax - 1;
        }

        function nextJobs() {
            if (currentPage < currentPageMax - 1) {
                currentPage++;
                renderJobs();
            }
        }

        function prevJobs() {
            if (currentPage > 0) {
                currentPage--;
                renderJobs();
            }
        }



        fetchQuestions();
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
