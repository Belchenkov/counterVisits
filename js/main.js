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
            if (!getcookie(ip)) {
                // Set Date
                var date = new Date();
                var currentDate = date.getUTCFullYear() + '-' + (date.getUTCMonth()+1) + '-' + date.getUTCDate() + ' ' + date.getUTCHours() + ':' + date.getUTCMinutes() + ":" + date.getUTCSeconds();

                //For Minutes
                //var minutes = 0.2;
                //date.setTime(date.getTime() + (minutes * 60 * 1000));
                //$.cookie(ip, currentDate, { expires: date });

                // One Day
                setcookie(ip, currentDate, (new Date).getTime() + (1 * 24 * 60 * 60 * 1000));
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

function setcookie(name, value, expires, path, domain, secure)
{
    document.cookie =    name + "=" + escape(value) +
                        ((expires) ? "; expires=" + (new Date(expires)) : "") +
                        ((path) ? "; path=" + path : "") +
                        ((domain) ? "; domain=" + domain : "") +
                        ((secure) ? "; secure" : "");
}

function getcookie(name)
{
    var cookie = " " + document.cookie;
    var search = " " + name + "=";
    var setStr = null;
    var offset = 0;
    var end = 0;
    
    if (cookie.length > 0)
    {
        offset = cookie.indexOf(search);
        
        if (offset != -1)
        {
            offset += search.length;
            end = cookie.indexOf(";", offset)
            
            if (end == -1)
            {
                end = cookie.length;
            }
            
            setStr = unescape(cookie.substring(offset, end));
        }
    }
    
    return(setStr);
}