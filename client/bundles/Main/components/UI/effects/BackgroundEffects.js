import $ from 'jquery'

const BackgroundEffect = () => {
    let lFollowX = 0,
        lFollowY = 0,
        x = 0,
        y = 0,
        friction = 1 / 30;

    let dust = 10;

    function addFirefly() {
        for (let i = 0; i <= dust; i++) {
            let elemDiv = document.createElement('div');
            elemDiv.className = 'dust';

            $('.background').append(elemDiv);
        }
    }

    function moveBackground() {
        x += (lFollowX - x) * friction;
        y += (lFollowY - y) * friction;

        let translate = 'translate(' + x + 'px, ' + y + 'px) scale(1.1)';

        $('.background').css({
            '-webit-transform': translate,
            '-moz-transform': translate,
            'transform': translate
        });

        window.requestAnimationFrame(moveBackground);
    }

    $(window).on('mousemove click', function (e) {

        let lMouseX = Math.max(-100, Math.min(100, $(window).width() / 2 - e.clientX));
        let lMouseY = Math.max(-100, Math.min(100, $(window).height() / 2 - e.clientY));
        lFollowX = (20 * lMouseX) / 100; // 100 : 12 = lMouxeX : lFollow
        lFollowY = (10 * lMouseY) / 100;

    });

    moveBackground();
    addFirefly();

    return(null);
};

export default BackgroundEffect;