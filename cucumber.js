export default {
  import: ['features/step_definitions/**/*.js', 'features/support/**/*.js'],
  format: ['progress-bar', 'html:reports/cucumber-report.html'],
  publishQuiet: true,
};
