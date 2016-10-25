$(document).ready(function() {
  $("input.btn[value='Loan Out']").click(function(event) {
    event.preventDefault();
    var str = this.parentElement.action
    var id = str.substr(str.length - 1)
    $.ajax({
      url: "/tools/loan_out/" + id,
      method: 'POST'
    })
    .done(function() {
      $("#user-tool-" + id).css("background-color","red");
      $("#user-tool-" + id + " input.btn[value='Hide From Borrowers']").remove();
    });
  });
});
