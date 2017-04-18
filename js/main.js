$(document).ready(function() {
    var domain = (window.location.hostname);
    var ip = '';

    // Get IP
    $.ajax({
        url: 'server/get_ip.php',
        type: 'GET',
        success: function(location) {
            ip = location;
            console.log(location);

            // Check on new User
            if (!$.cookie(ip)) {
                // Set Date
                var date = new Date();
                var currentDate = date.getUTCFullYear() + '-' + date.getUTCMonth() + '-' + date.getUTCDay() + ' ' + date.getUTCHours() + ':' + date.getUTCMinutes() + ":" + date.getUTCSeconds();

                //For Minutes 
                //var minutes = 0.2;
                //date.setTime(date.getTime() + (minutes * 60 * 1000));
                //$.cookie(ip, currentDate, { expires: date });

                // One Day
                $.cookie(ip, currentDate, { expires: 1 });
                console.log('Новый посетитель!', currentDate);


                // Send on DateBase
                $.ajax({
                    url: 'server/count.php',
                    type: 'POST',
                    data: {
                        domain: domain,
                        ip: ip,
                        date: currentDate
                    },
                    success: function(date) {
                        console.log(date);
                    },
                    error: function(error) {
                        console.log(error);
                    }
                });
            } else {
                console.log('Такой посетитель уже сегодня заходил!');
            }
        }
    }); // end ajax()
    
});