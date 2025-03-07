document.getElementsByTagName('body')[0].style.cssText = '	max-width: 100%; height:100%;display: flex; padding: 0;flex-direction:column;flex:1;background-color: rgb(241, 241, 241); margin:0;'
document.getElementsByTagName('header')[0].style.backgroundColor =  'green';
document.getElementsByTagName('h1')[0].style.cssText = 'background-color:green; text-align: center;  height: 12vw; font-size: 6vw; color: white; padding-top: 3vw; padding-bottom: 3vw; font-family: Haettenschweiler';
document.getElementsByTagName('h1')[0].innerHTML = '&#127881; My Second Music Player!!!! &#127881;';
document.getElementById('introductionbackground').style.cssText = '	background-image: url(https://images.squarespace-cdn.com/content/v1/5e5663314f01390f23459410/06ce5dbb-458f-4cc3-85fb-c15fb50c910d/Gordon+Ramsay+using+Scanpan+on+masterchef.jpeg); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 50vw;';
document.getElementById('IntroductionSection').style.cssText = '	padding: 3vw;width:55%;height:91%;float:right;margin-top:0;margin-right: 0;font-size: 2vw;border-color:rgb(90, 101, 255);border-style: solid;border-bottom-left-radius:25vw ; background-color: #7be2ff;';
document.getElementById('IntroductionSection').childNodes[0].style.cssText = 'border-bottom-color:#00000076; border-bottom-style:solid; border-bottom-width:0.1vw; padding-bottom: 2vw;';
document.getElementById('IntroductionSection').childNodes[1].style.cssText = 'border-bottom-color:#00000076; border-bottom-style:solid; border-bottom-width:0.1vw; padding-bottom: 2vw;';
document.getElementsByTagName('h2')[0].style.cssText = 'font-size: 3vw; color: black; display: block; text-align: left; padding-left: 25%; margin-top: 2vw; margin-bottom: 1vw;'
document.getElementsByTagName('h2')[1].style.cssText = 'font-size: 3vw; color: black; display: block; text-align: left; padding-left: 25%; margin-top: 2vw; margin-bottom: 1vw;'
document.getElementsByTagName('h2')[2].style.cssText = 'font-size: 3vw; color: black; display: block; text-align: left; padding-left: 25%; margin-top: 2vw; margin-bottom: 1vw;'
document.getElementById('IntroductionSection').children[0].children[0].innerHTML ='Name? : Door Key';
document.getElementById('IntroductionSection').children[0].children[1].innerHTML ='Grade? : 16';
document.getElementById('IntroductionSection').children[1].children[0].innerHTML ='My Interests Are:';
document.getElementById('Interests').style.cssText = 'display: block; text-align: left; padding-left: 25%; list-style-type: circle; font-size: 1.85vw;';
document.getElementById('Interests').children[0].innerHTML = 'Videogames';
document.getElementById('Interests').children[1].innerHTML = 'Trying New Things';
document.getElementById('Interests').children[2].innerHTML = 'Reading';
document.getElementById('IntroductionSection').children[2].innerHTML ='&larr;(me cooking up the music player)';
document.getElementById('IntroductionSection').children[2].style.cssText = 'font-size: 1.6vw; margin-bottom: 0; padding-left: 2vw; white-space: nowrap ;';

document.getElementById('ImageSection').children[0].style.cssText = 'background-color: #7be2ff;padding: 1vw;max-width: 100%;border: rgba(0, 0, 0, 0.397) solid 0.75vw;border-bottom-style: dashed ;margin-right: auto;';
document.getElementById('ImageSection').children[1].style.cssText = 'background-color: #7be2ff;padding: 1vw;max-width: 100%;border: rgba(0, 0, 0, 0.397) solid 0.75vw;border-top-style: dashed ;margin-right: auto;';
var img = document.createElement("img")
img.src =  "https://help.apple.com/assets/6758C0F05C38883A170CE6F4/6758C0F55C38883A170CE700/en_US/0b16a569a388ecebfbe4e464e29702a6.png";
img.style.cssText = 'max-height: auto;max-width: 35%;';
img.alt = 'Inspiration';
img.title = 'Picture of Music Player';
document.getElementById('ImageSection').children[0].appendChild(img);
    
