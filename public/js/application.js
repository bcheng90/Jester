$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('form#add_comment').on('submit', function(event){
    event.preventDefault();
    $.ajax({url: '/comment',
           method: 'post',
           data: $(event.target).serialize(),
           dataType: 'html'
    }).done(function(data){
      $('#add_comment').reset();
    });
  });

});
