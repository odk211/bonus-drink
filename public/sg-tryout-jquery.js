$(document).ready(() => {
    let $body = $('body');
    let $navA = $('#nav-a');
    let $navB = $('#nav-b');
    let $toggle = $('#toggle');
    let $scrollToTop = $('#scroll-to-top');
    let $scrollToBottom = $('#scroll-to-bottom');
    $navA.show();
    $navB.hide();

    let toggle = () => {
        $navA.toggle();
        $navB.toggle();
    };

    $toggle.on('click', () => {
        toggle()
    });

    $scrollToTop.on('click', () => {
        $body.animate({scrollTop: 0});
    });

    $scrollToBottom.on('click', () => {
        $body.animate({scrollTop: document.body.scrollHeight});
    });
});

