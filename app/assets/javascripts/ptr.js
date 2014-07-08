$("#ptr").change(function() {
    if(this.checked) {
        alert( "Please enter a domain name, the script will automatically find the IP address and do a reverse dig" );
    }
});