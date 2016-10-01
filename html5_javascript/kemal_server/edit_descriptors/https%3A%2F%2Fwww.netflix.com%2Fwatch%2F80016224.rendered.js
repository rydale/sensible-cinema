// copy and paste all of this text (including this line) into your developer tools javascript console side bar, then hit enter, please:


// begin auto inserted unique for your movie: fast_forwards, mutes, skips
var name="meet the mormons";
var fast_forwards=[[2.0,30.0]];
var skips=[[6.5, 9.5],[11.5,15.5]];
var mutes=[[60, 62]];
expected_url = "https://www.netflix.com/watch/80016224";
// end auto inserted unique

if (window.location.href.split("?")[0] != expected_url) {
  alert("danger: appears you may  have pasted to theh wrong paste this_page=" + window.location.href + " cuts from=" + expected_url);
}

if (typeof timer !== 'undefined') {
  clearInterval(timer); // in case we need to reset from previous load :)
}

function findFirstVideoTag(node) {
    if (node.nodeType == 1) {
 
        if (node.tagName.toUpperCase() == 'VIDEO') { // assume html 5 <VIDEO  ...
            return node;
        }
        node = node.firstChild;
 
        while (node) {
            if ((out = findFirstVideoTag(node)) != null) {
                return out;
            }
            node = node.nextSibling;
        }
    }
}


function areWeWithin(thisArray, cur_time) {
  for (key in thisArray) {
    var item = thisArray[key];
    var start_time = item[0];
    var end_time = item[1];
    if(cur_time > start_time && cur_time < end_time) {
      return item;
    }
  }
  return [false];
}

function checkStatus() {
  var cur_time = video_element.currentTime;
  var [last_start, last_end] = areWeWithin(mutes, cur_time);
  if(last_start) {
      if (!video_element.muted) {
        video_element.muted = true;
        console.log("muted " + cur_time + " start=" + last_start + " end " + last_end);
      }
  }
  else {
    if (video_element.muted) {
      video_element.muted = false;
      console.log("unmuted " + cur_time);
    }
  }
  if (window.location.href.includes("netflix.com")) {
    handleNetflixSeek(cur_time);

  } else {
     // youtube, amazon et al, easy seeks :)
    [last_start, last_end] = areWeWithin(skips, cur_time);
      
    if (last_start) {
      console.log("seeking from " + cur_time + " to " + last_end);
      video_element.pause(); // have to do this before seek so it resumes? huh?
      video_element.currentTime = last_end; // seek past this split
      video_element.play(); // sometimes needed??
    }
  }
  
  [last_start, last_end] = areWeWithin(fast_forwards, cur_time);
  fast_forward_speed = 2;
  if(last_start) {
    // we're within one
    if (video_element.playbackRate != fast_forward_speed) {
      console.log("fast forwarding from " + cur_time + " to " + last_end);
      video_element.playbackRate = 2;
      video_element.volume = 0.2;
    }
  }
  else {
    if (video_element.playbackRate == fast_forward_speed) {
      console.log("done fast forwarding");
      video_element.playbackRate = 1;
      video_element.volume = 1;
    }
  }    
  
  myLayer.innerHTML = cur_time.toFixed(2);
}

function handleNetflixSeek(cur_time) {
    fast_forward_to_skip_speed = 1.01; // even 4 was barfing ?? with 1.25 barfs very rarely
    [last_start, last_end] = areWeWithin(skips, cur_time);
    if (last_start) {
        if (video_element.playbackRate == fast_forward_to_skip_speed) {
          console.log("still fast forwarding to " + last_end + " remaining=" + Math.round(last_end - cur_time));
          // already and still fast forwarding
        } else {
          // fast forward
          console.log("begin fast forwarding " + cur_time + " start=" + last_start + " end " + last_end);
          video_element.playbackRate = fast_forward_to_skip_speed; // seems to be its max or freezes [?]
          video_element.volume = 0;
          console.log("muted to FF");
          video_element.style.visibility="hidden";
        }
    } else {
       // not in a skip, did we just finish one?
       if (video_element.playbackRate == fast_forward_to_skip_speed) {
          console.log("cancel/done fast forwarding " + cur_time);
          video_element.style.visibility="";// non hidden
          video_element.volume = 1;
          video_element.playbackRate = 1;
       }
    }
}

// load jquery first
javascript:(function(e,s){e.src=s;e.onload=function(){jQuery.noConflict();readyToGo();};document.head.appendChild(e);})(document.createElement('script'),'//code.jquery.com/jquery-latest.min.js')

uiEventsHappening = 0;

// video duration in milliseconds
lastDuration = 60 * 60 * 1000;
getDuration = function() {
  var video = jQuery('.player-video-wrapper video');
  if (video.length > 0) {
    lastDuration = Math.floor(video[0].duration * 1000);
  }
  return lastDuration;
};

showControls = function() {
  uiEventsHappening += 1;
  var scrubber = $('#scrubber-component');
  var eventOptions = {
    'bubbles': true,
    'button': 0,
    'currentTarget': scrubber[0]
  };
  scrubber[0].dispatchEvent(new MouseEvent('mousemove', eventOptions));
  return to(10)().then(function() {
    uiEventsHappening -= 1;
  });
};

function myFunction() {
    var btn = document.createElement("BUTTON");
    var t = document.createTextNode("CLICK ME");
    btn.appendChild(t);
    document.body.appendChild(btn);
}

myLayer = document.createElement('div');
myLayer.style.position = 'absolute';
myLayer.style.width = '300px';
myLayer.style.height = '300px';
myLayer.style.background = '#000000';
myLayer.style.zIndex = "1"; // on top :)
myLayer.style.backgroundColor = "rgba(0,0,0,0)"; // still see the video, but also see the text :)
myLayer.style.opacity = 0.3;
myLayer.style.fontSize = "13px";
document.body.appendChild(myLayer);

function readyToGo() {

  video_element = findFirstVideoTag(document.body);
  if (video_element == null) { 
    alert("failure: unable to find a video playing, did you paste this in the right page?"); 
  }
  else {
    timer = setInterval(function () {
        checkStatus();
    }, 1000 / 30 / 5 /* 30 fps * 5, try to be frame accurate even during skips */);
    var message = "ready to go edited\n" + name + "\nskips=" + skips.length + " mutes=" + mutes.length + " fast_forwards=" + fast_forwards.length +"\nyou may close developer javascript console now";
    console.log(message);
    //alert(message);
  }
}

// initial stuff to copy paste moved to index.ecr
