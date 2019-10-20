import {TweenMax, Power2, TimelineLite, TimelineMax} from "gsap/TweenMax";

console.log("coucou")

const test = document.querySelector('.test');
const slider = document.querySelector('.slider');



const tl = new TimelineMax();
tl.fromTo(test, 1, {height: "0%"}, {height:"80%", ease: Power2.easeInOut })
	.fromTo(
		test, 
		1.2, 
		{ width:"100%"}, 
		{width:"80%", ease: Power2.easeInOut}
		)
	.fromTo(
		slider, 
		1.2, 
		{x: "-100%"}, 
		{x:"0%", ease: Power2.easeInOut},
		"-=1.2"
		)

