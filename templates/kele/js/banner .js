// JavaScript Document
  var activeSlide = 0;
              var	numberSlides = 0;
			  var active=0;
			   var slides;
			   var pre=0;
			   var clock;
			   var numpot;



$(document).ready(function(){
//	$(window).load(function() {
	

			  
			  orbit=$("#featured");

slides = orbit.children("img, a");
           
                numberSlides=slides.size();
				
				 slides.each(function() {
                var _slide = $(this);
			_slide.css("z-index", "0")});
			
			
			//	_slide.css("display", "block")});
				
				numpot=$("#numinner").children("span");
					
				numpot.each(function(i) {
            $(this).bind('click', {index:i}, function(e){
			
	
			
          //  alert('my index is ' + e.data.index);
			
			clearInterval(clock);
			active=e.data.index;
			step();
			 clock =setInterval("step()",3800);
			
            });
            });
				step();
				
				 clock =setInterval("step()",3800);
		
        

});

function step()
{
if(active>=numberSlides)
{active=0;

pre=numberSlides-1;}

slides.css("display","none");


numpot.removeClass("on");
numpot.eq(active).addClass("on");

 slides.eq(pre)
            	.css({"z-index" : 1})
				.css("display","block")
 slides.eq(active)
            	.css({"z-index" : 3})
            	.fadeIn(600,function() {
//            		//brings in all other slides IF css declares a display: none
           		$(this).css("display","block")});
				pre=active;
				active=active+1;
				
			
				
				}
				
				
				
				
			
				