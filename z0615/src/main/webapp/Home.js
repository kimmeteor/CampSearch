

window.addEventListener('scroll',function(){

    let value= window.scrollY;
    let box = document.getElementById("TextBox");
    console.log('scroll',value);
    console.log(box);

if(value>800){
	
	box.style.animation = 'backslide 1s ease-out forwards';
	
}else{
	box.style.animation ='slide 1s ease-out';
	
}



});