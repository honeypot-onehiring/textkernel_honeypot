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
{
  lang: 'english',
  file: 'cv.pdf',
  last_modified: '2017-10-02T19:33',
  partial_extraction_indicator: '0',
  personal: {
    first_name: 'John',
    middle_name: '',
    last_name: 'Doe',
    date_of_birth: '',
    nationality: { code: '', code_description: '' },
    gender: { code: '1', code_description: 'Male' },
    drivers_license: '',
    address: {
      street_name: '',
      street_number_base: '',
      postal_code: '',
      city: '',
      region: { code: '', code_description: '' },
      country: { code: 'GB', code_description: 'United Kingdom' }
    },
    mobile_phone: [{ phone: '' }],
    home_phone: [{ phone: '' }],
    email: [{ email: 'xx@gmail.com' }],
    social_media_link: [{ url: 'http://github.com/x', type: 'github' }],
    personal_website: [{ url: '' }]
  },
  summary: {
    total_experience_years: '6',
    current_job: 'Software engineer',
    current_employer: 'X Software',
    highest_education: {
      level_code: '',
      level_code_description: '',
      level_code_de: '',
      level_code_description_de: '',
      level_code_fr: '',
      level_code_description_fr: ''
    },
    summary_ambition_section: ''
  },
  education_history: [
    {
      level_code: '4',
      level_code_description: 'Bachelor',
      level_code_de: '45',
      level_code_description_de: 'Bachelor',
      level_code_fr: 'BAC3',
      level_code_description_fr: 'Bac3',
      degree_direction: 'BSc in Computer Science',
      start_date: '',
      end_date: '2013-06-30',
      institute_name: 'Mars X College',
      institute_place: '',
      diploma_code: '',
      diploma_code_description: '',
      grade_point_average: '88'
    }
  ],
  employment_history: [
    {
      job_title: 'Software engineer',
      job_code: '2608',
      job_code_description: 'Software Engineer',
      job_group: '82',
      job_group_description: 'Programmers',
      job_class: '9',
      job_class_description: 'Information and Communication Technology',
      start_date: '2017-07-01',
      end_date: 'present',
      experience_years: '5',
      employer_name: 'X Software',
      employer_place: '',
      description: "*  Developed web-application from scratch using Angular 4 and typescript.\n*  Wrote unit-test using Jasmine.\n*  Maintained code to ensure functionality, stability and scalability.\n*  Added bug fixes for next release."
    },
    {
      job_title: 'Software Engineering intern',
      job_code: '4108',
      job_code_description: 'Intern',
      job_group: '0',
      job_group_description: 'Other Professions',
      job_class: '0',
      job_class_description: 'Other',
      start_date: '2016-08-01',
      end_date: '2017-06-30',
      experience_years: '1',
      employer_name: 'X Software',
      employer_place: '',
      description: "*   Resolved memory corruption and other technical issues by leveraging strengths in coding,\n    debugging.\n*   Worked effectively with design teams to ensure software solutions elevated client side\n    experience.\n*   Handled client side and server side programming tasks (primarily using AngularJS, Java, and\n    HTML), working an average of 20 hours per week while maintaining a high average.\n*   Wrote end to end tests using Protractor."
    }
  ],
  skills: {
    computer_skill: [
      { name: 'Angular', duration: '5' },
      { name: 'typescript', duration: '5' },
      { name: 'Jasmine', duration: '5' },
      { name: 'scalability', duration: '5' },
      { name: 'bug fixes', duration: '5' },
      { name: 'coding', duration: '1' },
      { name: 'debugging', duration: '1' },
      { name: 'server side', duration: '1' },
      { name: 'programming', duration: '1' },
      { name: 'AngularJS', duration: '1' },
      { name: 'Java', duration: '1' },
      { name: 'HTML', duration: '1' },
      { name: 'Protractor', duration: '1' },
      { name: 'entity framework', duration: '' },
      { name: 'WPF', duration: '' },
      { name: 'C#', duration: '' },
      { name: 'ASP.NET WEB API', duration: '' },
      { name: 'Android', duration: '' },
      { name: 'C', duration: '' },
      { name: 'Javascript', duration: '' },
      { name: 'SQL', duration: '' },
      { name: 'Visual Studio', duration: '' },
      { name: 'Eclipse', duration: '' },
      { name: 'Android Studio', duration: '' },
      { name: 'Webstorm', duration: '' },
      { name: 'Docker', duration: '' },
      { name: 'Agile/Scrum', duration: '' }
    ],
    language_skill: [
      {
        language_code: 'EN',
        language_code_description: 'English',
        proficiency_code: '',
        proficiency_code_description: ''
      }
    ],
    soft_skill: [{ name: '' }],
    other_skill: [{ name: '' }]
  },
  other: {
    hobbies: [{ hobby: '' }],
    profile_picture: { base64_content: '', filename: '', content_type: '' }
  },
  custom_area: {}
}
```

## License

MIT
