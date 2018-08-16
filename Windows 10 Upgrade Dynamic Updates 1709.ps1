$rss = 'https://support.microsoft.com/app/content/api/content/feeds/sap/en-us/6ae59d69-36fc-8e4d-23dd-631d98bf74a9/rss'
$rssFeed = [xml](New-Object System.Net.WebClient).DownloadString($rss)
$rssFeed.rss.channel.item | Where-Object {$_.title -like "*upgrading to Windows 10 Version 1709*"} | Select-Object -Property pubDate, Title, Link
