$(document).ready(function () {
  console.log('one');
  var messages = $('#chatbox');

  function init() {
    messages.scrollTop(messages[0].scrollHeight);
    console.log('fuck');
  }

  window.setTimeout(50, init());
});




