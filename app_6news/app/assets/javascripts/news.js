function parseKey(targetKey)
{
	var key = targetKey.replace(/\n/g, '');
    key = key.replace(/\t/g, '');
    key = key.trim();

    return key;
}

function parseNewsForLink(news, targetKey)
{
    var key = parseKey(targetKey);

    var val = news[key];
    if(val != undefined)
    {
    	return val[1];
    }

    return "Fail";
}
function parseNewsForBody(news, targetKey)
{
    var key = parseKey(targetKey);

    var val = news[key];
    if(val != undefined)
    {
    	return val[0];
    }

    return "Fail";
}