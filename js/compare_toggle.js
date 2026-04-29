$(document).ready(function() {
    $(document).on('click', '#compareTableBtn', function(e) {
        e.preventDefault();
        
        const $display = $('#compareTableDisplay');
        const $btn = $(this);
        $display.toggleClass('show');
        $btn.toggleClass('active');
        
        console.log("État du tableau : ", $display.hasClass('show') ? "Affiché" : "Masqué");
    });
});