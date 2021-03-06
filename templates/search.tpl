{include file="head.tpl" title="Search" needjquery=1}
		<h2>Search</h2>
		<div id="error"></div>
		<input type="text" id="query" name="query" /><input type="button" id="clearsearch" value="" class="submit" />
		<div id="addpassword">
			<h2 id="passeditor_title">Add new password</h2>
			<table>
				<tr class="required">
					<td>Short description</td>
					<td><input type="text" name="short" /></td>
				</tr>
				<tr>
					<td>Long description</td>
					<td><textarea name="long"></textarea></td>
				</tr>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr class="required">
					<td>Password (twice)</td>
					<td>
						<input type="password" name="password1" value="" /><br />
						<input type="password" name="password2" value="" />
					</td>
				</tr>
				<tr>
					<td>Additional information</td>
					<td><textarea name="additional"></textarea></td>
				</tr>
				<tr>
					<td>Available in groups</td>
					<td><select name="pwgroups[]" multiple="multiple" size="5" id="addpw_grouplist"></select></td>
				</tr>
			</table>
			<input type="button" id="save_password" value="Save" class="submit" />
		</div>
		<div id="results"></div>
		<div id="info"></div>
		<div id="passwordgroups">
			<h2>Accessible password groups</h2>
{foreach $passwordgroups as $passwordgroup=>$permissions}
	{if $permissions@first}
			<table>
				<tbody>
	{/if}
					<tr>
						<td>
							<span class="pwgname" id="pwgname_{$passwordgroup}">{$passwordgroup}</span>
						</td>
						<td>
							{if ($permissions == 'rw') || ($isadmin)}[Add password]{/if}
						</td>
						<td>
							{if ($permissions == 'rw') || ($isadmin)}[Group settings]{/if}
						</td>
						<td>
							{if ($isadmin)}[Delete group]{/if}
						</td>
					</tr>
	{if $permissions@last}
				</tbody>
			</table>
		{if $isadmin}
			<span id="addnewgroup">Create new group</li>
		{/if}
	{/if}
{/foreach}
		</div>
		<div id="passwords">
			<h2>Passwords in group <span id="openedgroupname"></span></h2>
			<div id="passwordlist">
			</div>
			<span id="showpasswordgroups" class="button">Back to password groups</span>
		</div>
		<div id="passwordinfo">
			<ul>
				<li><strong>Short description</strong>: <span></span></li>
				<li><strong>Long description</strong>: <span></span></li>
				<li><strong>Username</strong>: <span></span></li>
				<li><strong>Password</strong>: <span></span></li>
				<li>
					<strong>Additional information</strong>:<br />
					<span></span>
				</li>
			</ul>
		</div>
{include file="foot.tpl"}
