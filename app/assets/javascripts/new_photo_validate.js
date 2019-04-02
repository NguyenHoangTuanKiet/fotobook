$(document).ready ( function() {
  $('#new-photo-form').validate(

    {
      rules: {
        "photo[title]": {
          required: true
        },
        "photo[description]": {
          required: true
        },
        "photo[attachment]": {
          required: true
        }
      },
      messages: {
        "photo[title]": {
          required: "Enter your photo title"
        },
        "photo[description]": {
          required: "Enter your description"
        },
        "photo[attachment]": {
          required: "Attach your photo file"
        }
      }

    }

  );

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $("#square").hide();
                $("img#photo-preview").attr('src', e.target.result);
                $("img#photo-preview").css({"width": "100%", "height": "100%"})
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

  $('#square').on ('click', function(e) {
    e.preventDefault();
    $('input[type=file]').click();
  })

  $('input[type=file]').change(function() {
    readURL(this)
  })


} )