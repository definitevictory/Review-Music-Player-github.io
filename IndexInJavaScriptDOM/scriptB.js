//please order this from top to bottom compared to index, buttons below what they change

document.getElementsByTagName('body')[0].style.cssText = '	max-width: 100%; height:100%;display: flex; padding: 0;flex-direction:column;flex:1;background-color: rgb(255, 255, 255); margin:0;'
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

var img1 = document.createElement("img")
img1.src =  "https://help.apple.com/assets/6758C0F05C38883A170CE6F4/6758C0F55C38883A170CE700/en_US/0b16a569a388ecebfbe4e464e29702a6.png";
img1.style.cssText = 'max-height: auto;max-width: 35%;';
img1.alt = 'Inspiration';
img1.title = 'Picture of Music Player';
document.getElementById('ImageSection').children[0].appendChild(img1);

document.getElementById('ImageSection').children[0].children[0].style.cssText = '   width:60%; height: 100%; border: rgba(255, 255, 255, 0.877) solid 0.25vw; font-size: 2vw; border-style: solid;border-left-color: #bee9ff;margin-left : auto; float: right; padding:1.5vw;'
document.getElementById('ImageSection').children[0].children[0].children[0].innerHTML = '&larr;  The inspiration for my music player and how I came up with part of the ideas.'
document.getElementById('ImageSection').children[0].children[0].children[0].style.cssText = 'font-weight: bold;';
document.getElementById('smallerText').style.cssText = 'font-size: 1.8vw; padding-top:5vw; padding-bottom:19vw;';
document.getElementById('smallerText').innerHTML = ' - My music player will have the stop and play button as the same button just like this one. The music player will also utilize a progress bar or a timer to show how far you are into a song, but it will be fairly simple because it is only a part of the weather app that it is in.';

var img2 = document.createElement("img")
img2.src =  "../images/CaseStudy/WeatherAppMusicPlayerCaseStudy.jpg";
img2.style.cssText = 'max-height: auto;max-width: 35%;';
img2.alt = 'Drawn Music Player for Weather Appn';
img2.title = 'Concept drawing of Music Playe';
document.getElementById('ImageSection').children[1].appendChild(img2);

document.getElementById('ImageSection').children[1].children[0].style.cssText = '   width:60%; height: 100%; border: rgba(255, 255, 255, 0.877) solid 0.25vw; font-size: 2vw; border-style: solid;border-left-color: #bee9ff;margin-left : auto; float: right; padding:1.5vw;'
document.getElementById('ImageSection').children[1].children[0].children[0].innerHTML = '&larr; This is the concept drawing of the music player for the weather app.'
document.getElementById('ImageSection').children[1].children[0].children[0].style.cssText = 'font-weight: bold;';
document.getElementById('ImageSection').children[1].children[0].children[1].innerHTML = ' - The colors of my music player will be blue and white, which is based off of the colors and the calmness of some of the music within the music player. Hopefully I will be able to make the music player a sort of openable menu within the weather app.';
document.getElementById('ImageSection').children[1].children[0].children[1].style.cssText = 'font-size: 1.75vw; padding-top:5vw; padding-bottom:18vw;';

document.getElementById('divyoutube').style.cssText = 'max-width:50%; height:auto; padding: 1vw;padding-bottom: 2vw; padding-top: 2vw; padding-right: 15px; border-color: #42d6ff; border-style: solid; background-color: #7be2ff; max-height: 500%; aspect-ratio: 7/7; margin-left: auto; margin-right: auto;  position: relative; ';

var youtubevid = document.createElement("iframe")
youtubevid.src = "https://www.youtube.com/embed/oa_u_DI0fvg?si=0SfaSbhC6psLP46-";
youtubevid.style.cssText = ' max-height:500%;width: 95%; aspect-ratio: 160/156; margin-left: auto; margin-right: auto; position: absolute;';
youtubevid.title = 'Golden Nocturne';
youtubevid.alt = 'Golden Nocturne';
youtubevid.allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share";
youtubevid.referrerpolicy="strict-origin-when-cross-origin";
youtubevid.allowfullscreen = true;
document.getElementById('divyoutube').appendChild(youtubevid);

document.getElementById('buttonsection').style.cssText = 'display: flex; justify-content: space-between; width:90%; border-color:rgb(5, 53, 67); border-width: 2vw; border-style: solid; padding:2vw; margin:0; white-space:no-wrap; margin-left:auto; margin-right:auto; background-color:rgb(102, 102, 175); ';

document.getElementById('description').style.cssText = 'width:50%; text-align: center; margin-left:auto; margin-right: auto;font-size:2vw;'
document.getElementById('description').children[0].innerHTML = '&darr; Songs the music player starts with (buttons)&darr;';
document.getElementById('description').children[0].style.cssText = 'font-size: 2.5vw; margin-bottom: 1vw; margin-top: 1vw;  border-style: solid; border-color:rgb(94, 94, 94); border-width: 0.1vw; background-color: #42d6ff; color: white;';

document.getElementById('button1').style.cssText = 'flex: 1; height:10vw; color: rgb(255, 255, 255);  border-style: solid;  background-color:  #D4AF37; margin-right: 1%; font-size: 2.5vw';
document.getElementById('button2').style.cssText = 'flex: 1; height:10vw; color: rgb(255, 255, 255);  border-style: solid;  background-color:  #D4AF37; margin-right: 1%; font-size: 2.5vw';
document.getElementById('button3').style.cssText = 'flex: 1; height:10vw; color: rgb(255, 255, 255);  border-style: solid;  background-color:  #D4AF37; font-size: 2.5vw';
document.getElementById('button1').innerHTML = 'Golden Nocturne';
document.getElementById('button2').innerHTML = 'Waterfall';
document.getElementById('button3').innerHTML = 'Decretum';

document.getElementById('button1').addEventListener('click', function() {
    youtubevid.src = "https://www.youtube.com/embed/oa_u_DI0fvg?si=0SfaSbhC6psLP46-";
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://static.vecteezy.com/system/resources/previews/053/657/060/non_2x/black-and-grey-swirl-background-rotating-spiral-apperance-of-apperture-simple-shutter-illustration-vector.jpg);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 0.5s ease-in-out;'
    setTimeout(() => {
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://motionarray.imgix.net/preview-1105413-fKXNUYxiQ0-high_0012.jpg?w=660&q=60&fit=max&auto=format);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 1s ease-in-out;'
    }, 500);
    
    
 });
 document.getElementById('button1').addEventListener('mouseover', function() {
    document.getElementById('button1').style.backgroundColor = 'rgb(151, 124, 37)';
 });
 document.getElementById('button1').addEventListener('mouseout', function() {
    document.getElementById('button1').style.backgroundColor = ' #D4AF37';
 });
 


document.getElementById('button2').addEventListener('click', function() {
    youtubevid.src = "https://www.youtube.com/embed/xNTwYzoFzck?si=tGXKU2pReaGsqiLC";
   
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://static.vecteezy.com/system/resources/previews/053/657/060/non_2x/black-and-grey-swirl-background-rotating-spiral-apperance-of-apperture-simple-shutter-illustration-vector.jpg);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 0.5s ease-in-out;'
    setTimeout(() => {
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://th-thumbnailer.cdn-si-edu.com/dZ44NzGbA8tuS2an0_X-fvkJOhQ=/800x800/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/bb/76/bb76e999-6d99-4432-9233-c8b320d42de0/1280px-shifengwaterfall_002.jpg);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 1s ease-in-out;'
    }, 500);
   
 });
 document.getElementById('button2').addEventListener('mouseover', function() {
    document.getElementById('button2').style.backgroundColor = 'rgb(151, 124, 37)';
 });
 document.getElementById('button2').addEventListener('mouseout', function() {
    document.getElementById('button2').style.backgroundColor = ' #D4AF37';
 });



 document.getElementById('button3').addEventListener('click', function() {
    youtubevid.src = "https://www.youtube.com/embed/HcgEHrwdSO4?si=ubTl7HnGZuFtl0G0";
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://static.vecteezy.com/system/resources/previews/053/657/060/non_2x/black-and-grey-swirl-background-rotating-spiral-apperance-of-apperture-simple-shutter-illustration-vector.jpg);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 0.5s ease-in-out;'
    setTimeout(() => {
    document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://underthefuton.wordpress.com/wp-content/uploads/2019/04/perlen-der-anime-szenen-sayaka-gegen-elsa-maria.jpg?w=656&h=300&crop=1);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 1s ease-in-out;'
    }, 500);
    
 });

 document.getElementById('button3').addEventListener('mouseover', function() {
    document.getElementById('button3').style.backgroundColor = 'rgb(151, 124, 37)';
 });
 document.getElementById('button3').addEventListener('mouseout', function() {
    document.getElementById('button3').style.backgroundColor = ' #D4AF37';
 });


 document.getElementById('divyoutube').parentElement.style.cssText =  'background-image: url(https://motionarray.imgix.net/preview-1105413-fKXNUYxiQ0-high_0012.jpg?w=660&q=60&fit=max&auto=format);  background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center; height: 100%; transition: background-image 1s ease-in-out;'
 
 document.getElementById('YoutubeText').parentElement.style.cssText = 'padding: 1vw; margin-left: auto; margin-right: auto; background-color:rgb(255, 255, 255); margin-top: 1vw; margin-bottom: 1vw;';
 document.getElementById('YoutubeText').style.cssText = 	'font-size: 4.5vw; text-align: left;border: solid 0.75vw;border-color: #93e8ff;background-color: #e4cfff;width: 92%;color: rgb(0, 0, 0); margin-left: auto; margin-right: auto;';
 document.getElementById('YoutubeText').innerHTML = 'These are the themes of the songs that I am adding to the music player:';
 document.getElementById('YoutubeText').style.fontFamily ='Lucida Sans';
 var ul = document.createElement('ul');
 ul.style.cssText = '-webkit-text-stroke: #000000 0.06vw; font-size: 3.7vw; color: rgb(255, 225, 90)';
   var li1 = document.createElement('li');
   li1.innerHTML = 'Chill';
   var li2 = document.createElement('li');
   li2.innerHTML = 'Inspiring';
   var li3 = document.createElement('li');
   li3.innerHTML = 'Heroic';
   var li4 = document.createElement('li');
   li4.innerHTML = 'Epic';
   ul.appendChild(li1);
   ul.appendChild(li2);
   ul.appendChild(li3);
   ul.appendChild(li4);
   document.getElementById('YoutubeText').appendChild(ul);
   var ytnote = document.createElement('p');
   ytnote.style.cssText = 'font-size: 2vw; color: rgb(26, 26, 26);';
   ytnote.innerHTML = '&rarr; (I am able to change these songs if requested.)';
   document.getElementById('YoutubeText').appendChild(ytnote);


   document.getElementById('exampleMusicPlayer').style.cssText = ' margin-left: auto; margin-right: auto; background-color:rgb(255, 255, 255); margin-top: 1vw; margin-bottom: 1vw; max-width:98%; width:98%; position: relative;';
   var explainopen = document.createElement('p');
   explainopen.style.cssText = 'font-size: 2.5vw; text-align: center; padding-top: 1vw; padding-bottom: 1vw; border: solid 0.75vw; border-color:rgb(128, 231, 217); background-color:rgb(255, 255, 255); color: rgb(0, 0, 0);';
   explainopen.innerHTML = ' &darr; Click the button below to see how the music player will open/close &darr;';
   document.getElementById('exampleMusicPlayer').appendChild(explainopen);
   var openMusicPlayerSection = document.createElement('section');
   openMusicPlayerSection.id = 'openMusicPlayerSection';
   openMusicPlayerSection.style.cssText = 'position: relative; height:50vw; width: 100%; background-color: rgb(226, 226, 226);';
   document.getElementById('exampleMusicPlayer').appendChild(openMusicPlayerSection);
   var openMusicPlayer = document.createElement('button');
   openMusicPlayer.id = 'musicButton';
   openMusicPlayer.style.cssText = 'font-size: 2.5vw; border: solid 0.75vw; border-color:rgb(249, 0, 0); background-color:rgb(182, 104, 55); color: rgb(0, 0, 0);margin-right: 50vw;  width: 10vw; height :10vw; position: absolute ';
   openMusicPlayer.innerHTML = 'Open Me!';
   openMusicPlayer.addEventListener('click', GROW);
   document.getElementById('openMusicPlayerSection').appendChild(openMusicPlayer);
   
   // growing and shrinking button
   function GROW() {
      var elem = document.getElementById("musicButton");
      var id = setInterval(frame, 3);
      var height = 10;
      var width = 10;
      var marginleft= 0;
      var ahalf = 0.5
      openMusicPlayer.innerHTML = 'Placeholder for GUI/Close Me!';
      function frame() {
         if (height >= 50 && width >= 50) { 
             clearInterval(id);
         } else {
             
             height++;
             width++;
             marginleft+=ahalf;
             elem.style.height = height + 'vw';
             elem.style.width = width + 'vw';
             elem.style.marginLeft = marginleft + 'vw';
             
         }
     }
     elem.removeEventListener('click', GROW);
     openMusicPlayer.addEventListener('click', SHRINK);
   }

   function SHRINK() {    
       var elem = document.getElementById("musicButton");
      var id = setInterval(frame, 3);
      var height = 50;
      var width = 50;
      var marginleft= 20;
      var ahalf = 0.5;
      openMusicPlayer.innerHTML = 'Open Me!';
      function frame() {
         if (10 >= height && 10 >= width) { 
             clearInterval(id);
         } else {
             
             height--;
             width--;
             marginleft-=ahalf;
             elem.style.height = height + 'vw';
             elem.style.width = width + 'vw';
             elem.style.marginLeft = marginleft + 'vw';
             
         }
         elem.removeEventListener('click', SHRINK);
         openMusicPlayer.addEventListener('click', GROW);
       }
     }
    

 document.getElementsByTagName('footer')[0].style.cssText = '    padding-top:6vw;padding-bottom:6vw;height:12vw;width:100%; background-color: green; color:white;';
 var blockquote = document.createElement('blockquote');
 blockquote.style.cssText = 'font-size: 2.3vw; text-align: center;';
 var strong = document.createElement('strong');
 var hrefquote = document.createElement('a');
 hrefquote.href = 'https://www.brainyquote.com/quotes/virat_kohli_623218';
 var subscript = document.createElement('sub');
 strong.innerHTML = '"Self-belief and hard work will always earn you success."';
   hrefquote.innerHTML = '-Virat Kohli';
 document.getElementsByTagName('footer')[0].appendChild(blockquote);
 blockquote.appendChild(strong);
   blockquote.appendChild(subscript);
   subscript.appendChild(hrefquote);

 var date = document.createElement('p');
   date.style.cssText = 'font-size: 1.9vw; text-align: center; width:20%; margin-left:auto; margin-right:auto; text-decoration: underline;';
   innerdate = new Date().getDate() + '/' + (new Date().getMonth() + 1) + '/' + new Date().getFullYear();
   date.innerHTML = 'date (hover me)';
   date.addEventListener('mouseover', function() {
      date.innerHTML =  innerdate;});
      date.addEventListener('mouseout', function() {
       date.innerHTML =  'date';});
   document.getElementsByTagName('footer')[0].appendChild(date);
     
    var HTMLIndex = document.createElement('a');
      HTMLIndex.href = '../index.html';
      HTMLIndex.innerHTML = 'Back to Index';
      HTMLIndex.style.cssText = 'font-size: 1.9vw; text-align: center;';
      document.getElementsByTagName('footer')[0].appendChild(HTMLIndex);
   //darkmode  button
   var darkness = document.createElement('button');
   darkness.id = 'darkness';
   darkness.style.cssText = 'position: absolute; left: 0; top: 0; background-color: black; width: 4vw; height: 4vw; border-color: grey; background-image: url(https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/1200px-FullMoon2010.jpg); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center;';

   document.getElementsByTagName('header')[0].appendChild(darkness);
   
   
   var darkcheck = 0;
   document.getElementById('darkness').addEventListener('click', function() {
      if (darkcheck == 0) {
          darkcheck = 1;
          document.getElementsByTagName('body')[0].style.backgroundColor = 'rgb(44, 44, 44)';
          document.getElementsByTagName('h1')[0].style.color = 'rgb(0, 0, 0)';
          darkness.style.cssText = 'position: absolute; left: 0; top: 0; background-color: white; width: 4vw; height: 4vw; border-color: grey; background-image: url(https://media.istockphoto.com/id/1136856406/vector/cute-sun-icon.jpg?s=612x612&w=0&k=20&c=ABYz-EtczGy8--7tuQLgEXZffNEGouLAgfjKPh5OcnM=); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center;';
          document.getElementById('YoutubeText').parentElement.style.backgroundColor = 'rgb(44, 44, 44)';
          document.getElementById('exampleMusicPlayer').style.backgroundColor = 'rgb(44, 44, 44)';
          explainopen.style.backgroundColor = 'rgb(44, 44, 44)';
          explainopen.style.color = 'white'
          document.getElementsByTagName('footer')[0].style.color = 'black';
          document.getElementById('description').children[0].style.color = 'black';
          alert('slightly darker mode turned on');
      } else {
          darkcheck = 0;
          document.getElementsByTagName('body')[0].style.backgroundColor = 'rgb(255, 255, 255)';
          document.getElementsByTagName('h1')[0].style.color = 'rgb(255, 255, 255)';
          darkness.style.cssText = 'position: absolute; left: 0; top: 0; background-color: black; width: 4vw; height: 4vw; border-color: grey; background-image: url(https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/1200px-FullMoon2010.jpg); background-size: cover; background-repeat: no-repeat; background-attachment: scroll; background-position: center;';
          document.getElementById('YoutubeText').parentElement.style.backgroundColor = 'rgb(255, 255, 255)';
          document.getElementById('exampleMusicPlayer').style.backgroundColor = 'rgb(255, 255, 255)';
          explainopen.style.backgroundColor = 'rgb(255, 255, 255)';
            explainopen.style.color = 'black';
          document.getElementsByTagName('footer')[0].style.color = 'white';
          document.getElementById('description').children[0].style.color = 'white';
         alert('normal mode turned on');
      }
  });
 
