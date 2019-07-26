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

  const getTooltip = tippy('#myButton', {
    content: "Copied!",
    placement: 'bottom',
    trigger: 'click',
    arrow: true,
    arrowType: 'sharp',
    animation: 'fade',
    delay: 300
  });
};

export { showEvent };
