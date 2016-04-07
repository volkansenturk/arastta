<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" onclick="save('save')" form="form-user" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-success"><i class="fa fa-check"></i></button>
                <button type="submit" form="form-user" data-toggle="tooltip" title="<?php echo $button_saveclose; ?>" class="btn btn-default" data-original-title="Save & Close"><i class="fa fa-save text-success"></i></button>
                <button type="submit" onclick="save('new')" form="form-user" data-toggle="tooltip" title="<?php echo $button_savenew; ?>" class="btn btn-default" data-original-title="Save & New"><i class="fa fa-plus text-success"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-times-circle text-danger"></i></a>
            </div>
            <h1><?php echo $heading_title; ?></h1>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-user" class="form-horizontal">
            <div class="row">
                <div class="left-col col-sm-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="general">
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
                                        <?php if ($error_firstname) { ?>
                                        <div class="text-danger"><?php echo $error_firstname; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
                                        <?php if ($error_lastname) { ?>
                                        <div class="text-danger"><?php echo $error_lastname; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-user-group"><?php echo $entry_user_group; ?></label>
                                    <div class="col-sm-10">
                                        <select name="user_group_id" id="input-user-group" class="form-control">
                                            <?php foreach ($user_groups as $user_group) { ?>
                                            <?php if ($user_group['user_group_id'] == $user_group_id) { ?>
                                            <option value="<?php echo $user_group['user_group_id']; ?>" selected="selected"><?php echo $user_group['name']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $user_group['user_group_id']; ?>"><?php echo $user_group['name']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
                                    <div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                        <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
                                    <div class="col-sm-10">
                                        <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" autocomplete="off" />
                                        <?php if ($error_password) { ?>
                                        <div class="text-danger"><?php echo $error_password; ?></div>
                                        <?php  } ?>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
                                    <div class="col-sm-10">
                                        <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                                        <?php if ($error_confirm) { ?>
                                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                                        <?php  } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="right-col col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo $text_publish; ?></h3>
                            <div class="pull-right">
                                <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="publish">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><?php echo $text_enabled; ?></label>
                                    <div class="col-sm-9">
                                        <label class="radio-inline">
                                            <?php if ($status) { ?>
                                            <input type="radio" name="status" value="1" checked="checked" />
                                            <?php echo $text_enabled; ?>
                                            <?php } else { ?>
                                            <input type="radio" name="status" value="1" />
                                            <?php echo $text_enabled; ?>
                                            <?php } ?>
                                        </label>
                                        <label class="radio-inline">
                                            <?php if (!$status) { ?>
                                            <input type="radio" name="status" value="0" checked="checked" />
                                            <?php echo $text_disabled; ?>
                                            <?php } else { ?>
                                            <input type="radio" name="status" value="0" />
                                            <?php echo $text_disabled; ?>
                                            <?php } ?>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo $tab_option; ?></h3>
                            <div class="pull-right">
                                <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="publish">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="input-theme"><?php echo $entry_theme; ?></label>
                                    <div class="col-sm-9">
                                        <select name="params[theme]" id="input-theme" class="form-control">
                                            <?php foreach ($themes as $theme) { ?>
                                            <?php if ($theme['theme'] == $use_theme) { ?>
                                            <option value="<?php echo $theme['theme']; ?>" selected="selected"><?php echo $theme['text']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $theme['theme']; ?>"><?php echo $theme['text']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group hidden">
                                    <label class="col-sm-3 control-label" for="input-basic-mode-message"><?php echo $entry_basic_mode_message; ?></label>
                                    <div class="col-sm-9">
                                        <select name="params[basic_mode_message]" id="input-basic-mode-message" class="form-control">
                                            <?php if ($basic_mode_message == 'show') { ?>
                                            <option value="show" selected="selected"><?php echo $text_show; ?></option>
                                            <option value="hide"><?php echo $text_hide; ?></option>
                                            <?php } else { ?>
                                            <option value="show"><?php echo $text_show; ?></option>
                                            <option value="hide" selected="selected"><?php echo $text_hide; ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="input-language"><?php echo $entry_admin_language; ?></label>
                                    <div class="col-sm-9">
                                        <select name="params[language]" id="input-language" class="form-control">
                                            <?php foreach ($languages as $language) { ?>
                                            <?php if ($language['code'] == $use_language) { ?>
                                            <option value="<?php echo $language['code']; ?>" selected="selected"><?php echo $language['name']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="input-editor"><?php echo $entry_text_editor; ?></label>
                                    <div class="col-sm-9">
                                        <select name="params[editor]" id="input-editor" class="form-control">
                                            <?php foreach ($editors as $editor) { ?>
                                            <?php if ($editor['value'] == $use_editor) { ?>
                                            <option value="<?php echo $editor['value']; ?>" selected="selected"><?php echo $editor['text']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $editor['value']; ?>"><?php echo $editor['text']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <?php if ($twofactorauths && $user_id) { ?>
                                <?php if ($error_twofactorauth) { ?>
                                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_twofactorauth; ?>
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                </div>
                                <?php } ?>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="input-twofactorauth"><?php echo $entry_text_twofactorauth; ?></label>
                                    <div class="col-sm-9">
                                        <select name="params[twofactorauth][method]" id="input-twofactorauth" class="form-control">
                                            <option value="none" <?php echo ($use_twofactorauth == 'none') ? 'selected="selected"' : ''; ?>><?php echo $text_none; ?></option>
                                            <?php foreach ($twofactorauths as $twofactorauth) { ?>
                                            <?php if ($twofactorauth['code'] == $use_twofactorauth) { ?>
                                            <option value="<?php echo $twofactorauth['code']; ?>" selected="selected"><?php echo $twofactorauth['text']; ?></option>
                                            <?php } else { ?>
                                            <option value="<?php echo $twofactorauth['code']; ?>"><?php echo $twofactorauth['text']; ?></option>
                                            <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div id="twofactorauth-content"></div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'params[twofactorauth][method]\']').on('change', function() {
    $.ajax({
        url: 'index.php?route=user/user/twofactorauth&token=<?php echo $token; ?>&user_id=<?php echo $user_id; ?>&method=' + this.value,
        dataType: 'html',
        beforeSend: function() {
            $('#twofactorauth-content').html(' <i class="fa fa-circle-o-notch fa-spin"></i>');
        },
        complete: function() {
            $('.fa-spin').remove();
        },
        success: function(html) {
            $('#twofactorauth-content').html(html);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('select[name=\'params[twofactorauth][method]\']').trigger('change');
//--></script>
<?php echo $footer; ?>
