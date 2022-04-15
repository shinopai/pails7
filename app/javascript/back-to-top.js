window.addEventListener('DOMContentLoaded', function () {
    "use strict";

  let backBtn = $("#back-button");

  backBtn.click(function () {
    $("body,html").animate(
      {
        scrollTop: 0,
      },
      500
    );
    return false;
  });
});
