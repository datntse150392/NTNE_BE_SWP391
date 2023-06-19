/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function() {
  $('.slide-list').owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    nav: true,
    dots: false,
    navText: ['<i class="fas fa-angle-left"></i>','<i class="fas fa-angle-right"></i>'],
    responsive: {
      0: {
        dots: true,
        nav: false
      },
      992: {
        dots: false,
        nav: true
      }
    }
  });

  $('.tour-list').owlCarousel({
    items: 3,
    // loop: true,
    autoPlay: true,
    nav: true,
    dots: false,
    margin: 30,
    navText: ['<i class="fas fa-angle-left"></i>','<i class="fas fa-angle-right"></i>'],
    responsive: {
      0: {
        items: 1,
        dots: true,
        nav: false
      },
      576: {
        items: 2,
        dots: true,
        nav: false
      },
      768: {
        items: 2,
        dots: true,
        nav: false
      },
      992: {
        dots: false,
        nav: true
      }
    }
  });

  var rest = $('.rest-list').imagesLoaded().progress( function() {
    rest.isotope({
      percentPosition: true,
      itemSelector: '.rest',
      layoutMode: 'fitRows',
      filter: $('.tabs .tab-btn.active').data('filter')
    })
  });

  // rest.imagesLoaded().progress( function() {
  //   rest.isotope('layout');
  // });

  $('.tabs button').each(function() {
    if ($(this).hasClass('active')) {
      var link = $(this).data('href');
      $('#btn-view-more-rest').attr('href', link);
    }

    $(this).on('click', function() {
      $('.tabs').find('.active').removeClass('active');
      $(this).addClass('active');

      var link = $(this).data('href');
      var filterValue = $(this).attr('data-filter');
      $('#btn-view-more-rest').attr('href', link);
      rest.isotope({ filter: filterValue });
    })
  })

  // $('.tabs').on('click', 'button', function() {
  //   $('.tabs').find('.active').removeClass('active');
  //   $(this).addClass('active');
    
  //   var link = $(this).data('href');
  //   var filterValue = $(this).attr('data-filter');
  //   $('#btn-view-more-rest').attr('href', link);
  //   rest.isotope({ filter: filterValue });
  // });

  $('.star').barrating({
    theme: 'fontawesome-stars',
    readonly: true,
    emptyValue: ''
  });

})