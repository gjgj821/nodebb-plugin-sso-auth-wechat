<div class="row"
<div class="col-sm-2 col-xs-12 settings-header">Wechat SSO</div>
<div class="col-sm-10 col-xs-12">
	<div class="alert alert-info">
		<ol>
				<li>
					Create a new App via the <a href="http://open.weibo.com/">Wechat apps Page</a> and then
					paste your application details here. Your <em>Callback URL</em> is <code>http://your.domain/auth/qq/callback</code>
					(replace <code>your.domain</code> as necessary).
				</li>
				<li>
					In the "basic info" tab, you will find a "App Id" and "App Secret", paste these two
					values into the corresponding fields below
				</li>
				<li>
					Save and restart your NodeBB.
				</li>
		</ol>
	</div>
	<form role="form" class="sso-auth-wechat-settings">
		<div class="form-group">
			<label for="key">App Id</label>
			<input type="text" name="id" id="id" title="API Id" class="form-control" placeholder="App Id">
		</div>
		<div class="form-group">
			<label for="secret">App Secret</label>
			<input type="text" name="secret" id="secret" title="API Secret" class="form-control" placeholder="App Secret">
		</div>
		<div class=" checkbox">
			<label for="showSiteTitle" class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
				<input type="checkbox" class="mdl-switch__input" id="showSiteTitle" name="autoconfirm" />
				<span class="mdl-switch__label">Skip email verification for people who register using SSO?</span>
			</label>
		</div>
	</form>
</div>
</div>

<button id="save"
		class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>
