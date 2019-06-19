(function(){
  function create(form_id) {
    var $form = $(`#${form_id}`);

    // If we can't find the form on the page, quit
    if ($form.length < 1) {
      return;
    }

    var emailInputRow = $form.find('.js-email-row').clone(true);
    var emailInput = emailInputRow.find('#js-email-input');
    emailInput.val('');

    var emailListContainer = $form.find('#js-email-list-container').first();
    var addEmailBtn = $form.find('#js-add-email-btn');
    var removeEmailBtns = $form.find('.js-remove-email-btn');
    var index = removeEmailBtns.length;

    /* Remove email input rows */
    function registerEmailRowRemoval(elem) {
      $(elem).click(function() {
        var count = $form.find('.js-remove-email-btn').length;
        if (count > 1) {
          $(this).closest('.js-email-row').remove();
        }
      });
    }

    addEmailBtn.click(function(){
      var elem = emailInputRow.clone();
      var emailInput = elem.find('.js-email-input');
      var removeBtn = elem.find('.js-remove-email-btn');

      emailInput.attr('name', `media_member[emails][${index++}][address]`);
      emailInput.val('');
      registerEmailRowRemoval(removeBtn);
      emailListContainer.append(elem);
    });

    registerEmailRowRemoval(removeEmailBtns);
  }

  Chippa.EmailList = create;
})();
