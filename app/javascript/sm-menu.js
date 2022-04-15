window.addEventListener('DOMContentLoaded', function () {
    "use strict";

  let smMenuBtn = $("#sm-menu-button");
  let openBtn = $("#open-button");
  let closeBtn = $("#close-button");

  smMenuBtn.click(function () {
    $('#sm-menu').toggleClass('hidden');
    if(closeBtn.hasClass('hidden')){
      closeBtn.removeClass('hidden');
      openBtn.addClass('hidden');
    }else{
      openBtn.removeClass('hidden');
      closeBtn.addClass('hidden');
    }
  });
});
