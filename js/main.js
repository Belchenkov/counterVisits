$(document).ready(function() {
    var domain = 'busines-credit.ru';
    var ip = '';

    // Get IP
    $.ajax({
        url: 'server/get_ip.php',
        type: 'GET',
        success: function(location) {
            ip = location;
            console.log(location);

            $.ajax({
                url: 'https://api.filkos.com/getBidData.php',
                type: 'GET',
                success: function (data) {
                    var data = JSON.parse(data);
                    data = data.sources;
                    $.each(data, function (index, item) {
                        //console.log(item.domain);
                        //console.log(domain);
                        if (domain == item.domain) {
                            console.log('Isset match ', item.domain);

                            // Check if new User
                            if (!$.cookie(ip)) {
                                // Set Date
                                var date = new Date();
                                var currentDate = date.getUTCFullYear() + '-' + (date.getUTCMonth()+1) + '-' + date.getUTCDate() + ' ' + date.getUTCHours() + ':' + date.getUTCMinutes() + ":" + date.getUTCSeconds();

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
                    });
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
    }); // end ajax()
});