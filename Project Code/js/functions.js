function myFunction() {
		    document.getElementById("myDropdown").classList.toggle("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		    
		}
		function myFunction2() {
		    document.getElementById("myDropdown2").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		}
		function myFunction3() {
		    document.getElementById("myDropdown3").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		}
		function myFunction4() {
		    document.getElementById("myDropdown4").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		}
		function myFunction5() {
		    document.getElementById("myDropdown5").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		}
		function myFunction6() {
		    document.getElementById("myDropdown6").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown7").classList.remove("show");

		}
		function myFunction7() {
		    document.getElementById("myDropdown7").classList.toggle("show");
		    document.getElementById("myDropdown").classList.remove("show");
		    document.getElementById("myDropdown2").classList.remove("show");
		    document.getElementById("myDropdown3").classList.remove("show");
		    document.getElementById("myDropdown4").classList.remove("show");
		    document.getElementById("myDropdown5").classList.remove("show");
		    document.getElementById("myDropdown6").classList.remove("show");

		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {

		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
		// clock function
		function startTime() {
			var t ="";
          var today = new Date();
          var h = today.getHours();
          var m = today.getMinutes();
          var s = today.getSeconds();
           m = checkTime(m);
           s = checkTime(s);
           if (h>12){t = " PM";
           h=h-12;}
           	else{t =" AM";}
           if(h==24){t="AM";}
          document.getElementById('time').innerHTML =
           (h) + ":" + m + ":" + s + t;
           var t = setTimeout(startTime, 500);
                                   }
      function checkTime(i) {
          if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
          return i;
      }

      var d = new Date();
		document.getElementById("date").innerHTML = d.toDateString();