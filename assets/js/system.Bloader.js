var baseurl = getBaseurl();
function getBaseurl() {
    var pathparts = location.pathname.split('/');
    //alert(location.host);
    if(pathparts[1] == 'Bala'){
        var url = location.origin+'/'+pathparts[1].trim('/')+'/'+pathparts[2].trim('/')+'/';
    } else if (location.host == '172.16.51.134' || location.host == '172.16.51.134:8080' || location.host == 'localhost:8080' || location.host == '172.16.51.116' || location.host == 'localhost') {
        var url = location.origin+'/'+pathparts[1].trim('/')+'/'; // http://localhost/myproject/
    } else{
        var url = location.origin+'/'; // http://stackoverflow.com
    }

    return url;
}


$(function() {
  //$('#ans_for_usr').chosen();
  //$('#emp-add-form').disableAutoFill();
});

$(function() {
  // $("#ans_for_usr").customselect();
});

/*$(function() {
    $('#emp-add-form').disableAutoFill({
        passwordField: '#emp_pass'
    });
});*/

/*$( document ).ready(function() {
    setTimeout(function(){
        $("#emp_pass").attr('readonly', false);
        //$("#emp_pass").focus();
    },500);
});*/


function setAdminIdPassReset(adminid)
{
    $('#adminUserPassResetID').val(adminid);
}

function setAdminIdDelete(adminid)
{
    $('#adminUserDeelteID').val(adminid);
}

$('#emp_dob').datetimepicker({
	dayOfWeekStart : 1,
    format:'Y-m-d',
    //disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
    //startDate:  '1986/01/05',
    timepicker:false
});
$("#emp_dob").keydown(false);

$('#emp_doj').datetimepicker({
	dayOfWeekStart : 1,
    format:'Y-m-d',
    timepicker:false
});
$("#emp_doj").keydown(false);

function empSearchPage()
{
	var search_key = $('#emp_tab_ssearch').val();
  var user_type  = $('#emp_utype_search').val();
	//alert(search_key);

	var page = 0;

	$.ajax({
        method: "POST",
        url: baseurl+"employee/manageEmployeeAjax/"+page,
        data: { page:page,search_key:search_key,user_type:user_type },
        beforeSend: function(){
        },
        success: function(data){
            $('#empList').html(data);
        }
	});
}

function refreshEmpSearch()
{
	var search_key = $('#emp_tab_ssearch').val();
	if(search_key=='' || search_key == ' '){
		empSearchPage();
	}
}

function setEmpIdPassReset(adminid)
{
    $('#empUserPassResetID').val(adminid);
}

function setEmpIdDelete(adminid)
{
    $('#empUserDeelteID').val(adminid);
}


function adminEmpSearchPage()
{
  var search_key = $('#adminemp_tab_ssearch').val();
  var page = 0;

  $.ajax({
        method: "POST",
        url: baseurl+"admin/manageAdminAjax/"+page,
        data: { page:page,search_key:search_key },
        beforeSend: function(){
        },
        success: function(data){
            $('#adminList').html(data);
        }
  });
}

