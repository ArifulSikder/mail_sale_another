// search
$(document).ready(function(){
    $('.search-btn').click(function(){
      $('.search-form').show();
      $('.search-input').focus();
    });
    $('.close-btn').click(function(){
      $('.search-form').hide();
      $('.search-input').val("");
    });
  });

  // scroll-top
  window.addEventListener('scroll', function() {
    var scrollTopBtn = document.querySelector('#scroll-top-btn');
    if (window.pageYOffset > 100) {
      scrollTopBtn.classList.add('show');
    } else {
      scrollTopBtn.classList.remove('show');
    }
  });
  
  document.querySelector('#scroll-top-btn').addEventListener('click', function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
  