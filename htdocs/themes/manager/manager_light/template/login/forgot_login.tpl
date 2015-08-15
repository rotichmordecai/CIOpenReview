{{
/**
* CIOpenReview
*
* An Open Source Review Site Script based on OpenReviewScript
*
* @package        CIOpenReview
* @subpackage          manager
* @author        CIOpenReview.com
* @copyright           Copyright (c) 2015 CIOpenReview.com , Portions Copyright (c) 2011-2012, OpenReviewScript.org
* @license        This file is part of CIOpenReview - free software licensed under the GNU General Public License version 2
* @link        http://ciopenreview.com
*/
// ------------------------------------------------------------------------
//
/**    This file is part of CIOpenReview.
*
*    CIOpenReview is free software: you can redistribute it and/or modify
*    it under the terms of the GNU General Public License as published by
*    the Free Software Foundation, either version 2 of the License, or
*    (at your option) any later version.
*
*    CIOpenReview is distributed in the hope that it will be useful,
*    but WITHOUT ANY WARRANTY; without even the implied warranty of
*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*    GNU General Public License for more details.
*
*    You should have received a copy of the GNU General Public License
*    along with CIOpenReview.  If not, see <http://www.gnu.org/licenses/>.
*/

}}
<div id="content">
    <p>&nbsp;</p>

    <p>&nbsp;</p>
    {{ if ($message != ''): }}
    <p>&nbsp;</p>

    <h3 class="login_error">{{= $message }}</h3>

    <p>&nbsp;</p>
    {{ endif }}
    <form class="loginform" action="{{= site_url('/manager/forgot_login') }}" method="post">
        <div class="formblock">
            <div class="loginleft">
                <label>
                    {{= lang('manager_login_forgot_email') }}
                    <span class="small">{{= lang('manager_login_forgot_email_info') }}</span>
                </label>
            </div>
            <div class="loginright">
                <input class="userpass" type="text" name="login_email" id="login_email"
                       value="{{= set_value('login_email') }}"/>
                {{= form_error('login_email') }}
            </div>
        </div>
        <input type="submit" name="login_forgot_submit" id="button" value="{{= lang('manager_login_forgot_submit') }}"/>
    </form>
</div>