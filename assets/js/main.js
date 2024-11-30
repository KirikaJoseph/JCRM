(function($) {
    "use strict";

    // Testimonial Slider
    $('.testimonial-slider').slick({
        infinite: true,
        autoplay: true,
        arrows: false,
        dots: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        asNavFor: '.testimonial-slider-nav'
    });
    $('.testimonial-slider-nav').slick({
        arrows: false,
        dots: false,
        focusOnSelect: true,
        centerMode: true,
        centerPadding: '22px',
        slidesToShow: 3,
        asNavFor: '.testimonial-slider'
    });
    $('.testimonial .slider-nav').css({ "position": "relative", "height": "160px" });

    /* ----------------------------------------------------------- */
    /*  2. VIDEO POPUP
    /* ----------------------------------------------------------- */
    $('.mu-video-play-btn1').on('click', function(event) {

        event.preventDefault();

        $('.mu-video-iframe-area1').addClass('mu-video-iframe-display');

    });

    // when click the close btn

    // disappear iframe window

    $('.service-item-close-btn').on('click', function(event) {

        event.preventDefault();

        $('.service-item-iframe-area').removeClass('service-item-iframe-display');

    });

    // stop iframe if it is play while close the iframe window

    $('.service-item-close-btn').click(function() {

        $('.service-item-iframe').attr('src', $('.service-item-iframe').attr('src'));

    });

    // when click overlay area

    $('.service-item-iframe-area').on('click', function(event) {

        event.preventDefault();

        $('.service-item-iframe-area').removeClass('service-item-iframe-display');

    });

    $('.service-item-iframe-area, .service-item-iframe').on('click', function(e) {
        e.stopPropagation();
    });



    // Portfolio isotope and filter
    var portfolioIsotope = $('.portfolio-container').isotope({
        itemSelector: '.portfolio-item',
        layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on('click', function() {
        $("#portfolio-flters li").removeClass('filter-active');
        $(this).addClass('filter-active');

        portfolioIsotope.isotope({ filter: $(this).data('filter') });
    });

})(jQuery);