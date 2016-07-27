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


{{ if ($this->session->flashdata('message')): }}
<div class="callout callout-warning">
    <p>{{= $this->session->flashdata('message') }}</p>
</div>
{{ endif }}
<form id="form" class="myform" name="form" method="post"
      action="{{= base_url() . 'manager/review_ratings/edit/' . $review->id }}">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">{{= lang('manager_review_ratings_title').'"'.$review->title.'"' }}</h3>
            {{= anchor('manager/review_rating/add/'.$review->id,lang('manager_review_ratings_add_rating'), array('class' => 'btn btn-success', 'style' => 'margin-left: 20px;')) }}
            <div class="pull-right">
                {{= anchor('manager/review/edit/'.$review->id,lang('manager_review_ratings_back_to_review'), array('class' => 'btn btn-default')) }}
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body no-padding">
            <table class="table">
                <tbody>
                <tr>
                    <th class="col-md-6">Rating</th>
                    <th>Value</th>
                    <th>Actions</th>
                </tr>
                {{ foreach ($allreviewratings as $index=>$result): }}
                <input type="hidden" name="review_rating_id{{= $index }}" value="{{= $result->id }}"/>
                <tr>
                    <td>
                        {{= form_dropdown('rating_id'.$index, $ratings, $result->rating_id, 'class="form-control"') }}
                        {{= form_error('rating_id'.$index) }}
                    </td>
                    <td>
                        {{= form_dropdown('value'.$index, $values, $result->value, 'class="form-control"') }}
                        {{= form_error('value'.$index) }}
                    </td>
                    <td>
                        {{= anchor('manager/review_rating/delete/'.$result->id,lang('manager_review_ratings_list_delete'), array('class' => 'btn btn-danger')) }}
                    </td>
                </tr>
                {{ endforeach }}
                </tbody>
            </table>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">

            <input type="hidden" name="rating_count" value="{{= count($allreviewratings) }}"/>
            <input type="submit" name="review_ratings_submit" class="btn btn-primary btn-success" id="button"
                   value="{{= lang('manager_review_ratings_form_submit_button') }}"/>
        </div>
    </div>
</form>