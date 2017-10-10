export default {
    init() {
        const breakpoint = 992;

        //Submenu handling
        $('ul.navbar-nav > li.dropdown').mouseenter((e) => {
            const target = $(e.target);
            const windowWidth = $(window).width();

            if (windowWidth > breakpoint) {
                target.closest('li.dropdown').addClass('open');
            }
        }).mouseleave((e) => {
            const target = $(e.target);
            const windowWidth = $(window).width();

            if (windowWidth > breakpoint) {
                target.closest('li.dropdown').removeClass('open');
            }
        });

        // Mobile menu toggle handling
        $('.expand-more-icon').on('click', (e) => {
            e.preventDefault();
            const target = $(e.target);
            target.closest('li.dropdown').toggleClass('open');
        });
    },
    finalize() {
        // JavaScript to be fired on all pages, after page specific JS is fired
    },
};
