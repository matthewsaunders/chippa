(function(){
  function create(form_id) {
    var $form = $(`#${form_id}`);

    // If we can't find the form on the page, quit
    if ($form.length < 1) {
      return;
    }

    var $newTagForm     = form_id === 'js-tag-form-new';
    var $formToggles    = $(`.${form_id}-toggle`);
    var $cancelBtn      = $form.find('#js-tag-form-cancel-btn');
    var $colorBtn       = $form.find('#js-tag-form-color-btn');
    var $colorInput     = $form.find('#js-tag-form-color-input');
    var $tagNameInput   = $form.find('#js-tag-form-name-input');
    var $previewTag     = $form.find('#js-tag-form-preview');
    var $formInputs     = $form.find('#js-tag-form-inputs');

    function toggleFormVisibility() {
      if ($newTagForm) {
        $form.slideToggle('fast');
      } else {
        updateTagText(origText);
        updateTagColor(origColor);
        $formInputs.slideToggle('fast');
      }
    }

    function updateTagColor(color) {
      setButtonColor($colorBtn, color);
      setButtonColor($previewTag, color);
      $colorInput.val(color);
    }

    function updateTagColorWithRandom() {
      updateTagColor(Chippa.utils.randomColorHex());
    }

    function setButtonColor(btn, color) {
      btn.css('background-color', color);
      btn.css('border-color', color);
      btn.css('color', Chippa.utils.labelColor(color));
    }

    function updateTagText(text) {
      $previewTag.text(text);
    }

    $formToggles.click(toggleFormVisibility);
    $cancelBtn.click(toggleFormVisibility);
    $colorBtn.click(updateTagColorWithRandom);
    $tagNameInput.change(function() {
      updateTagText($(this).val());
    });

    // Initialize the new tag form with a random color
    if ($newTagForm) {
      updateTagColorWithRandom();
    }

    var origColor = $colorInput.val();
    var origText = $previewTag.text();
  }

  Chippa.Tag = create;
})();
