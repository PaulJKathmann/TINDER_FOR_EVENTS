function showEvent() {
  var copyTextareaBtn = document.querySelector('.js-textareacopybtn');

  copyTextareaBtn.addEventListener('click', function(event) {
    var copyTextarea = document.querySelector('.js-copytextarea');
    copyTextarea.focus();
    copyTextarea.select();

    try {
      var successful = document.execCommand('copy');
      var msg = successful ? 'successful' : 'unsuccessful';
      console.log('Copying the link was ' + msg + '!');
    } catch (err) {
      console.log('Oops, unable to copy');
    }
  });

  document.getElementById("btnCopy").addEventListener ('click',
    function() { //<-----anonyme Funktion
      document.getElementById("copied-info").style.visibility = "visible" ;
    },

    false);
};

export { showEvent };
