//= require rails-ujs
//= require_tree .
//= require jquery
// document.addEventListener("click", alert);
//   $( function() {
//     $( "#datepicker" ).datepicker();
//   } );


  $( function() {
      $("#fromDate").datepicker({
            dateFormat: 'yy-mm-dd',
          inline: true,
          onSelect: function(date, inst) {
                   var selDate = new Date(date);
                   var newDate = new Date(selDate.getFullYear(), selDate.getMonth(), selDate.getDate()+31);
                    $('#toDate').datepicker('option', 'minDate', selDate );
                    $('#toDate').datepicker('option', 'maxDate', newDate );
          }
          });
          $("#fromDate").datepicker('setDate', new Date());
  
      $( "#toDate" ).datepicker({
              dateFormat: 'yy-mm-dd',
              inline: true,
              onSelect: function(date, inst) {
                   var selDate = new Date(date);
                   var newDate = new Date(selDate.getFullYear(), selDate.getMonth(), selDate.getDate()-31);
                    $('#fromDate').datepicker('option', 'minDate', newDate );
                    $('#fromDate').datepicker('option', 'maxDate', selDate );
              }
      });
      $("#toDate").datepicker('setDate', new Date());
    } );