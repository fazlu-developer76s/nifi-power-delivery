/*
Template Name: Paisaley - Responsive Admin Dashboard Template
Author: Paisaley
Website: http://www.Paisaley.com/
*/

var handleDataTableFixedColumns = function() {
	"use strict";
    
	if ($('#data-table-fixed-columns').length !== 0) {
		$('#data-table-fixed-columns').DataTable({
			scrollY:        300,
			scrollX:        true,
			scrollCollapse: true,
			paging:         false,
			fixedColumns:   true
		});
	}
};

var TableManageFixedColumns = function () {
	"use strict";
	return {
		//main function
		init: function () {
			handleDataTableFixedColumns();
		}
	};
}();

$(document).ready(function() {
	TableManageFixedColumns.init();
});