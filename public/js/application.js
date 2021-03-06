$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('form#add_comment').on('submit', function(event){
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({url: '/comment',
           method: 'post',
           data: $target.serialize(),
           dataType: 'html'
    }).done(function(data){
      $('#add_comment').trigger('reset');
    });
  });

  // TODO: I want to be able to delete my comments just by simply pressing delete and having a confirmation window pop up rather than redirecting to a new page.

  // $('#del-comment').on('click', function(event){
  //   event.preventDefault();
  //   var $target = $(event.target);
  //   $.ajax({
  //     url: $target.attr('action'),
  //     type: 'delete'
  //   }).done(function(data){

  //   });
  // });

  // TODO: I want to be able to refresh my comments constantly incase a user submits a comment. This way, it will auto update the div.
  // setInterval(function() {
  //   $.ajax({
  //     url:,
  //     type:,
  //     data:,
  //   }
  // });
});