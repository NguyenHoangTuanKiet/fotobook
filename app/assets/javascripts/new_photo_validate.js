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

} )