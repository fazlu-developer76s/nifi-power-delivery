/*
Template Name: Paisaley - Responsive Admin Dashboard Template
Author: Paisaley
Website: http://www.Paisaley.com/
*/

var handleDataTableScroller = function() {
	"use strict";
    
	if ($('#data-table-scroller').length !== 0) {
		$('#data-table-scroller').DataTable({
			ajax:           "../assets/js/demo/json/scroller_demo.json",
			deferRender:    true,
			scrollY:        300,
			scrollCollapse: true,
			scroller:       true,
			responsive: true
		});
	}
};

var TableManageScroller = function () {
	"use strict";
	return {
		//main function
		init: function () {
			handleDataTableScroller();
		}
	};
}();

$(document).ready(function() {
	TableManageScroller.init();
});