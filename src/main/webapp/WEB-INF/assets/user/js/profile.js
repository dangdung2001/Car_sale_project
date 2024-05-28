var itemProfile = document.getElementsByClassName("HVZpoT");

Array.from(itemProfile).forEach(item =>{
    item.addEventListener('click', function(){

        Array.from(itemProfile).forEach(item=>{
            item.className ='HVZpoT';
        })

        item.className = 'HVZpoT VfX643';
    });
})

var listItemProfile = document.getElementById("listItemProfile");
var itemHeader = document.getElementsByClassName("stardust-dropdown");

var firstItemHeader = itemHeader[0]

firstItemHeader.addEventListener('click', function(){

    

    listItemProfile.className= 'stardust-dropdown__item-body--open';
})

for (let index = 1; index < itemHeader.length; index++) {
    
    itemHeader[index].addEventListener('click', function(){
        listItemProfile.className= 'stardust-dropdown__item-body';
    })
    
}


var contents_body = document.getElementsByClassName("content_body");

var profile = document.getElementById("profile");
var address = document.getElementById("address");
var oders = document.getElementById("oders");
var change_pass = document.getElementById("change_pass");

function displayProfile (){

    Array.from(itemProfile).forEach(item=>{
        item.className ='HVZpoT';
    })
    itemProfile[0].className ='HVZpoT VfX643';

    Array.from(contents_body).forEach(content => {
        content.style.display = "none";
    })
    profile.style.display = 'block';
}

function displayAddress (){

    Array.from(contents_body).forEach(content => {
        content.style.display = "none";
    })
    
    fetchAddressUser();
	    
    address.style.display = 'block';
}

function displayOders (){

    Array.from(contents_body).forEach(content => {
        content.style.display = "none";
    })
    oders.style.display = 'block';
}

function displayChangePass (){

    Array.from(contents_body).forEach(content => {
        content.style.display = "none";
    })
    change_pass.style.display = 'block';
}


// add even click header oder 

var itemHeaderOder = document.getElementsByClassName("KI5har");

Array.from(itemHeaderOder).forEach(item => {

    item.addEventListener('click', function(){

        Array.from(itemHeaderOder).forEach(item=> {
            item.className = 'KI5har';
        })

        item.className = 'KI5har mRVNLm';
    })
})


function fetchAddressUser (){
	
var name_address = document.getElementById("name_address");
	
	
 var url = "http://localhost:8080/shop_cars/api/user/fetchAddressUser";
	    var requestOptions = {
	        method : 'POST',
	        headers : {
	            'content-type' : 'application/json',
	            'Authorization': 'Bearer ' + localStorage.getItem('jwt')
	        }
	    }

	    fetch(url, requestOptions).then(response => {
			console.log(response);
	        return response.json();
	    }).then(data => {
			
			for(index = 0 ; index < data.length ; index ++){
				
				name_address.innerHTML = data[index].name;
			}
	        
	    })
	
}


document.getElementById('changePassForm').addEventListener('submit', function(event) {
	event.preventDefault(); 
	
	changePassUser();
});


function changePassUser (){
	
	
	var newpass_input = document.getElementById("confirmPassword");
	var password = document.getElementById("password");
	var notifyChangePass = document.getElementById("notifyChangePass");
	
	if(newpass_input.value != null && newpass_input.value.length >= 8){
		
	
 		var url = "http://localhost:8080/shop_cars/api/user/changePassUser";
	    var requestOptions = {
	        method : 'POST',
	        headers : {
	            'content-type' : 'application/json',
	            'Authorization': 'Bearer ' + localStorage.getItem('jwt')
	        },
	        body : JSON.stringify({
				'newpass': newpass_input.value	
			})
	    }
	    
	    

	    fetch(url, requestOptions).then(response => {
			console.log(response);
	        return response.json();
	    }).then(data => {
			
			console.log(data);
			if(data){
				notifyChangePass.innerHTML = "change password succes!"
				password.value = '';
				newpass_input.value = '';
				
				
			}
			
	        
	    })
	 }
	 else {
		 console.log("password is incorrect")
	 }
	 
	
}




