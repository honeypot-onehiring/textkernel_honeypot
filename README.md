# Welcome to textkernel_honeypot gem

This gem is a very simple wrapper for textkernel API to be able to parse CV PDFs in ruby language.

## Required ENV variables

- `TEXTKERNEL_ENV` (default: staging, possible values: `staging` | `home`)
- `TEXTKERNEL_USERNAME`
- `TEXTKERNEL_ACCOUNT`
- `TEXTKERNEL_PASSWORD`

## Usage

```ruby
Textkernel.parse_cv(File.open(File.expand_path('~/Desktop/cv.pdf')))
```

## Example output

```ruby
{"lang"=>"english",
 "file"=>"cv.pdf",
 "lastModified"=>"2017-10-02T19:33",
 "partialExtractionIndicator"=>"0",
 "personal"=>
  {"firstName"=>"John",
   "middleName"=>"",
   "lastName"=>"Doe",
   "dateOfBirth"=>"",
   "nationality"=>{"code"=>"", "codeDescription"=>""},
   "gender"=>{"code"=>"1", "codeDescription"=>"Male"},
   "driversLicense"=>"",
   "address"=>
    {"streetName"=>"",
     "streetNumberBase"=>"",
     "postalCode"=>"",
     "city"=>"",
     "region"=>{"code"=>"", "codeDescription"=>""},
     "country"=>{"code"=>"GB", "codeDescription"=>"United Kingdom"}},
   "mobilePhone"=>[{"phone"=>""}],
   "homePhone"=>[{"phone"=>""}],
   "email"=>[{"email"=>"xx@gmail.com"}],
   "socialMediaLink"=>[{"url"=>"http://github.com/x", "type"=>"github"}],
   "personalWebsite"=>[{"url"=>""}]},
 "summary"=>
  {"totalExperienceYears"=>"6",
   "currentJob"=>"Software engineer",
   "currentEmployer"=>"X Software",
   "highestEducation"=>
    {"levelCode"=>"", "levelCodeDescription"=>"", "levelCodeDE"=>"", "levelCodeDescriptionDE"=>"", "levelCodeFR"=>"", "levelCodeDescriptionFR"=>""},
   "summaryAmbitionSection"=>""},
 "educationHistory"=>
  [{"levelCode"=>"4",
    "levelCodeDescription"=>"Bachelor",
    "levelCodeDE"=>"45",
    "levelCodeDescriptionDE"=>"Bachelor",
    "levelCodeFR"=>"BAC3",
    "levelCodeDescriptionFR"=>"Bac3",
    "degreeDirection"=>"BSc in Computer Science",
    "startDate"=>"",
    "endDate"=>"2013-06-30",
    "instituteName"=>"Mars X College",
    "institutePlace"=>"",
    "diplomaCode"=>"",
    "diplomaCodeDescription"=>"",
    "gradePointAverage"=>"88"}],
 "employmentHistory"=>
  [{"jobTitle"=>"Software engineer",
    "jobCode"=>"2608",
    "jobCodeDescription"=>"Software Engineer",
    "jobGroup"=>"82",
    "jobGroupDescription"=>"Programmers",
    "jobClass"=>"9",
    "jobClassDescription"=>"Information and Communication Technology",
    "startDate"=>"2017-07-01",
    "endDate"=>"present",
    "experienceYears"=>"5",
    "employerName"=>"X Software",
    "employerPlace"=>"",
    "description"=>
     "*  Developed web-application from scratch using Angular 4 and typescript.\n*  Wrote unit-test using Jasmine.\n*  Maintained code to ensure functionality, stability and scalability.\n*  Added bug fixes for next release."},
   {"jobTitle"=>"Software Engineering intern",
    "jobCode"=>"4108",
    "jobCodeDescription"=>"Intern",
    "jobGroup"=>"0",
    "jobGroupDescription"=>"Other Professions",
    "jobClass"=>"0",
    "jobClassDescription"=>"Other",
    "startDate"=>"2016-08-01",
    "endDate"=>"2017-06-30",
    "experienceYears"=>"1",
    "employerName"=>"X Software",
    "employerPlace"=>"",
    "description"=>
     "*   Resolved memory corruption and other technical issues by leveraging strengths in coding,\n    debugging.\n*   Worked effectively with design teams to ensure software solutions elevated client side\n    experience.\n*   Handled client side and server side programming tasks (primarily using AngularJS, Java, and\n    HTML), working an average of 20 hours per week while maintaining a high average.\n*   Wrote end to end tests using Protractor."}],
 "skills"=>
  {"computerSkill"=>
    [{"name"=>"Angular", "duration"=>"5"},
     {"name"=>"typescript", "duration"=>"5"},
     {"name"=>"Jasmine", "duration"=>"5"},
     {"name"=>"scalability", "duration"=>"5"},
     {"name"=>"bug fixes", "duration"=>"5"},
     {"name"=>"coding", "duration"=>"1"},
     {"name"=>"debugging", "duration"=>"1"},
     {"name"=>"server side", "duration"=>"1"},
     {"name"=>"programming", "duration"=>"1"},
     {"name"=>"AngularJS", "duration"=>"1"},
     {"name"=>"Java", "duration"=>"1"},
     {"name"=>"HTML", "duration"=>"1"},
     {"name"=>"Protractor", "duration"=>"1"},
     {"name"=>"entity framework", "duration"=>""},
     {"name"=>"WPF", "duration"=>""},
     {"name"=>"C#", "duration"=>""},
     {"name"=>"ASP.NET WEB API", "duration"=>""},
     {"name"=>"Android", "duration"=>""},
     {"name"=>"C", "duration"=>""},
     {"name"=>"Javascript", "duration"=>""},
     {"name"=>"SQL", "duration"=>""},
     {"name"=>"Visual Studio", "duration"=>""},
     {"name"=>"Eclipse", "duration"=>""},
     {"name"=>"Android Studio", "duration"=>""},
     {"name"=>"Webstorm", "duration"=>""},
     {"name"=>"Docker", "duration"=>""},
     {"name"=>"Agile/Scrum", "duration"=>""}],
   "languageSkill"=>[{"languageCode"=>"EN", "languageCodeDescription"=>"English", "proficiencyCode"=>"", "proficiencyCodeDescription"=>""}],
   "softSkill"=>[{"name"=>""}],
   "otherSkill"=>[{"name"=>""}]},
 "other"=>{"hobbies"=>[{"hobby"=>""}], "profilePicture"=>{"base64Content"=>"", "filename"=>"", "contentType"=>""}},
 "customArea"=>{}}
```

## License

MIT
