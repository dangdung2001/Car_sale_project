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