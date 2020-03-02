const shotsDribbble = () => {
  var accessToken = '7d5566714a775fba8192df44a3b1ef6006a5bb84320ed3c816a8830770fb2f74';

  // Call Dribble v2 API
  $.ajax({
      url: 'https://api.dribbble.com/v2/user/shots?access_token='+accessToken,
      dataType: 'json',
      type: 'GET',
      success: function(data) {
        if (data.length > 0) {
          $.each(data.reverse(), function(i, val) {
            $('#shots').prepend(
              '<a class="shot" target="_blank" href="'+ val.html_url +'" title="' + val.title + '"><div class="title">' + val.title + '</div><img src="'+ val.images.hidpi +'"/></a>'
              )
          })
        }
        else {
          $('#shots').append('<p>No shots yet!</p>');
        }
      }
  });
}

export { shotsDribbble };
