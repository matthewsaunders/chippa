$(document).ready(function () {
  $('#sidebar-toggle').on('click', function () {
    console.log('toggle');
    $('.sidebar').toggleClass('active');
  });
});
