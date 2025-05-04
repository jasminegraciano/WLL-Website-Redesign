# WLL-Website-Redesign
Group project to enhance the SCSU World Languages &amp; Literatures external website.

This project consists of 3 different parts, Language Placement, Major Merge, and Career Questionaire which can be run separately. Each needed file is in its own folder.
Special thanks to SCSU WLL Faculty Erin Larkin (larkine3@southernct.edu) for assisting with the creation of Major Merge Data. Excel/csv file containing the data is located within assets folder.

# How to run
There's two ways to do this. You can see the older, online version by simply going to:
</br>https://go.southernct.edu/wll/career-questionnaire/
</br>https://go.southernct.edu/wll/major-merge/
</br>https://go.southernct.edu/wll/language-placement/

Or, if you want to see the most recently updated version follow these steps:

Language Placement Dropdown:
1. Download Language_Placement as a zip
2. Unzip it
3. Double click index.html, and it should open in a browser.

Major Merge:
1. Download Major_Merge as a zip
2. Unzip it
3. Double click index.html, and it should open in a browser.
4. To ensure functionality with .JSON file, make sure to host the file locally.
(To change data, simply edit the excel/csv file, navigate to https://shancarter.github.io/mr-data-converter/, convert excel sheet to json, and replace json file with new content)

Career Questionnaire:
1. Download the career_questionnaire folder.
2. Install XAMPP
  Make sure the following components are selected during installation:
  - Apache, MySQL, PHP
3. Put the folder in C:\xampp\htdocs
4. Start XAMPP and turn on Apache and MySQL.
5. Click on ‘Admin’ in the XAMPP app next to MySQL, click new, and click import database.
5. Import questionnaire_db.sql.
6. Open a web browser and go to http://localhost/career_questionnaire/
