//= require jquery
//= require jquery_ujs
$(function() {
    $("#students_partialz th a, #students_partialz .pagination a").on("click", function() {
        $.getScript(this.href);
        return false;
    });
    $(document).on('submit', '#students_search', function() {
        $.get(this.action, $(this).serialize(), null, 'script');
        return false;
    });
});