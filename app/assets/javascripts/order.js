$(function() {
    console.log( "ready!" );

    if ($('#one').attr('class') !== 'ng-hide') {
			$("[href = #step-1]").addClass('btn-default');
			$("[href = #step-2]").addClass('btn-primary');
			$("[href = #step-3]").addClass('btn-primary');
		}

	$('button').click(function(){
		var data = $('.set').attr('ng-show');

		if ($('#two').attr('class') !== 'ng-hide') {
			$("[href = #step-1]").removeClass('btn-default');
			$("[href = #step-2]").removeClass('btn-primary').addClass('btn-default');
			$("[href = #step-3]").addClass('btn-primary');
		}
		else if ($('#three').attr('class') !== 'ng-hide') {
			$("[href = #step-2]").removeClass('btn-default').addClass('btn-primary');
			$("[href = #step-3]").addClass('btn-default');
		}
	});
});