$(document).ready(function() {
  $("input.btn[value='Loan Out']").click(function(event) {
    event.preventDefault();
    var str = this.parentElement.action
    var id = str.substr(str.length - 1)
    $.ajax({
      url: "/tools/loan_out/" + id,
      method: 'POST'
    })
    .done(function(response) {
      $("#user-tool-" + id).css("background-color","red");
      $("#user-tool-" + id + " input.btn[value='Hide From Borrowers']").remove();
      $("#user-tool-" + id + " input.btn[value='Loan Out']").remove();
      $("#user-tool-" + id + " div").prepend(response)
    });
  });
});
