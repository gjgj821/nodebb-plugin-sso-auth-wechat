define('admin/plugins/sso-auth-wechat', ['settings'], function(Settings) {
	'use strict';
	/* globals $, app, socket, require */

	var ACP = {};

	ACP.init = function() {
		Settings.load('sso-auth-wechat', $('.sso-auth-wechat-settings'));

		$('#save').on('click', function() {
			Settings.save('sso-auth-wechat', $('.sso-auth-wechat-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'sso-auth-wechat-saved',
					title: 'Settings Saved',
					message: 'Please reload your NodeBB to apply these settings',
					clickfn: function() {
						socket.emit('admin.reload');
					}
				});
			});
		});
	};

	return ACP;
});
