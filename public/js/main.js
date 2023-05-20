$(function() {
    $('#markasread').click(function() {
     //   alert('succccccccccccc');
    });
});

function markNotificationAsRead(id) {
   // if(notificationCount !=='0'){
        $.get('/markAsRead/'+id);
    //}
}

