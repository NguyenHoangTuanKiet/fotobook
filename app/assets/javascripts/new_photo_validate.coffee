validate = ->
  $('#new-photo-form').validate
    rules:
      "photo[title]":
          required: true
      "photo[description]":
          required: true
      "photo[attachment]":
          required: true

previewPhoto = ->
  $('input[type=file]').change ->
    input = this
    if input.files and input.files[0]
      reader = new FileReader

      reader.onload = (e) ->
          $('#square').hide()
          $("img#photo-preview").attr 'src', e.target.result
          $("img#photo-preview").css "width": "100%", "height": "100%"

      reader.readAsDataURL input.files[0]

maskUploadClicking = ->
  $('#square').on 'click', (e) ->
    e.preventDefault();
    $('input[type=file]').click();

@NewPhoto =
  run: ->
    $ ->
      validate()
      previewPhoto()
      maskUploadClicking()

