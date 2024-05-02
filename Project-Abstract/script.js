// back to top
document.addEventListener('DOMContentLoaded', function() {
  var scrollToTopButton = document.getElementById('back-to-top-btn');

  window.addEventListener('scroll', function() {
      if (window.pageYOffset >
          100) { // Show back-to-top button after scrolling down 100px
          scrollToTopButton.style.display = 'block';
      } else {
          scrollToTopButton.style.display = 'none';
      }
  });

  scrollToTopButton.addEventListener('click', function() {
      scrollToTop(1000);
  });

  function scrollToTop(scrollDuration) {
      var scrollStep = -window.scrollY / (scrollDuration / 15),
          scrollInterval = setInterval(function() {
              if (window.scrollY !== 0) {
                  window.scrollBy(0, scrollStep);
              } else {
                  clearInterval(scrollInterval);
              }
          }, 15);
  }
});
// project model popup
// Get the modal elements
const burtonModal1 = document.getElementById("burtonModal1");
const burtonModal2 = document.getElementById("ballparkModal2");

// Get the team card elements
const burtonCard1 = document.querySelector(".burton");
const burtonCard2 = document.querySelector(".ballpark");

// Get the close button elements
const closeButtons = document.querySelectorAll(".close");

// Function to open the modal
function openModal(modal) {
  modal.style.display = "block";
}

// Function to close the modal
function closeModal(modal) {
  modal.style.display = "none";
}

// Add click event listeners to the team cards
burtonCard1.addEventListener("click", function() {
  openModal(burtonModal1);
});
burtonCard2.addEventListener("click", function() {
  openModal(burtonModal2);
});

// Add click event listeners to the close buttons
closeButtons.forEach(function(button) {
  button.addEventListener("click", function() {
    const modal = button.parentElement.parentElement;
    closeModal(modal);
  });
});

// Slider 1
let sliderImages = document.querySelectorAll('.slide'),
  arrowLeft = document.querySelector('#arrow-left'),
  arrowRight = document.querySelector('#arrow-right'),
  current = 0;

function startSlide1() {
  reset1();
  sliderImages[0].style.display = 'block';
}

function slideLeft1() {
  reset1();
  sliderImages[current - 1].style.display = 'block';
  current--;
}

function slideRight1() {
  reset1();
  sliderImages[current + 1].style.display = 'block';
  current++;
}

function reset1() {
  for (let i = 0; i < sliderImages.length; i++) {
    sliderImages[i].style.display = 'none';
  }
}

arrowLeft.addEventListener('click', function() {
  if (current === 0) {
    current = sliderImages.length;
  }
  slideLeft1();
});

arrowRight.addEventListener('click', function() {
  if (current === sliderImages.length - 1) {
    current = -1;
  }
  slideRight1();
});

startSlide1();

// Slider 2
let sliderImages1 = document.querySelectorAll('.slidee'),
  arrowLeft1 = document.querySelector('#arrow-left1'),
  arrowRight1 = document.querySelector('#arrow-right1'),
  current1 = 0;

function startSlide2() {
  reset2();
  sliderImages1[0].style.display = 'block';
}

function slideLeft2() {
  reset2();
  sliderImages1[current1 - 1].style.display = 'block';
  current1--;
}

function slideRight2() {
  reset2();
  sliderImages1[current1 + 1].style.display = 'block';
  current1++;
}

function reset2() {
  for (let i = 0; i < sliderImages1.length; i++) {
    sliderImages1[i].style.display = 'none';
  }
}

arrowLeft1.addEventListener('click', function() {
  if (current1 === 0) {
    current1 = sliderImages1.length;
  }
  slideLeft2();
});

arrowRight1.addEventListener('click', function() {
  if (current1 === sliderImages1.length - 1) {
    current1 = -1;
  }
  slideRight2();
});

startSlide2();


// switch popup
// Get the button elements
const switchButton1 = document.querySelector('#switch-button1');
const switchButton2 = document.querySelector('#switch-button2');

// Function to handle modal switch
function switchModal(modalToShow, modalToHide) {
  modalToShow.style.display = "block";
  modalToHide.style.display = "none";
}

// Add click event listeners to the switch buttons
switchButton1.addEventListener("click", function() {
  switchModal(burtonModal2, burtonModal1);
});
switchButton2.addEventListener("click", function() {
  switchModal(burtonModal1, burtonModal2);
});
