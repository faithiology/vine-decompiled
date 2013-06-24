.class public Lco/vine/android/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;
.implements Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
.implements Lco/vine/android/PromptDialogFragment$OnDialogDoneListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lco/vine/android/ImagePicker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SettingsFragment$SettingsListener;
    }
.end annotation


# static fields
.field private static final DEBUG_TAP_THRESHOLD:I = 0x6

.field private static final DIALOG_CLEAR_CACHE:I = 0x6

.field private static final DIALOG_DISCONNECT_TWITTER:I = 0x5

.field private static final DIALOG_LOGOUT:I = 0x4

.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x2

.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x1

.field private static final DIALOG_UNSAVED_CHANGES:I = 0x3

.field private static final REQUEST_CODE_TWITTER_SDK:I = 0x4

.field private static final REQUEST_CODE_TWITTER_XAUTH:I = 0x5

.field private static final STATE_AVATAR_BITMAP:Ljava/lang/String; = "state_avatar_bitmap"

.field private static final STATE_AVATAR_BORDER:Ljava/lang/String; = "state_avatar_border"

.field private static final STATE_AVATAR_PROFILE_URI:Ljava/lang/String; = "state_avatar_pending_uri"

.field private static final STATE_AVATAR_URL:Ljava/lang/String; = "state_avatar_url"

.field private static final STATE_DESCRIPTION:Ljava/lang/String; = "state_desc"

.field private static final STATE_DIRTY:Ljava/lang/String; = "state_dirty"

.field private static final STATE_EMAIL:Ljava/lang/String; = "state_email"

.field private static final STATE_LOCATION:Ljava/lang/String; = "state_loc"

.field private static final STATE_NAME:Ljava/lang/String; = "state_name"

.field private static final STATE_PHONE:Ljava/lang/String; = "state_phone"

.field private static final STATE_PHOTO_CHANGED:Ljava/lang/String; = "state_photo_changed"

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private mAboutTapCount:I

.field private mAppController:Lco/vine/android/client/AppController;

.field private mAvatar:Ljava/lang/String;

.field private mAvatarKey:Lco/vine/android/util/image/ImageKey;

.field private mBorderRes:I

.field private mDescription:Ljava/lang/String;

.field private mDirty:Z

.field private mEmail:Ljava/lang/String;

.field private mImagePicker:Lco/vine/android/ImagePicker;

.field private mListener:Lco/vine/android/client/AppSessionListener;

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOriginalAvatar:Ljava/lang/String;

.field private mOriginalDescription:Ljava/lang/String;

.field private mOriginalEmail:Ljava/lang/String;

.field private mOriginalLocation:Ljava/lang/String;

.field private mOriginalName:Ljava/lang/String;

.field private mOriginalPhone:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPhotoAttached:Z

.field private mPhotoChanged:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProfileUri:Landroid/net/Uri;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mTwitterLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 718
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SettingsFragment;)Lco/vine/android/util/image/ImageKey;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    return-object v0
.end method

.method static synthetic access$102(Lco/vine/android/SettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    return p1
.end method

.method static synthetic access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method static synthetic access$502(Lco/vine/android/SettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    return p1
.end method

.method private initializeFromPrefs()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 252
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    .line 254
    .local v0, session:Lco/vine/android/client/Session;
    const-string v2, "settings_profile_name"

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 255
    const-string v2, "settings_profile_description"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    .line 256
    const-string v2, "settings_profile_location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    .line 257
    const-string v2, "settings_profile_email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    .line 258
    const-string v2, "settings_profile_phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    .line 259
    const-string v2, "settings_profile_avatar"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private resetPrefs()V
    .locals 5

    .prologue
    .line 604
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 605
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 607
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 609
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "settings_profile_name"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    const-string v3, "settings_profile_description"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string v3, "settings_profile_location"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    const-string v3, "settings_profile_email"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string v3, "settings_profile_phone"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    const-string v3, "settings_profile_avatar"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    .line 360
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 361
    packed-switch p1, :pswitch_data_0

    .line 432
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 366
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 367
    iget-object v11, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 371
    .local v11, uri:Landroid/net/Uri;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v12, Lco/vine/android/EditProfileCropActivity;

    invoke-direct {v1, v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "uri"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    .line 373
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 369
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 375
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 380
    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_3

    .line 381
    const-string v1, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 382
    .local v8, croppedUri:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 383
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 384
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 385
    new-instance v1, Lco/vine/android/SetThumbnailTask;

    invoke-direct {v1, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/app/Fragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v12, 0x0

    aput-object v8, v2, v12

    invoke-virtual {v1, v2}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 388
    .end local v8           #croppedUri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 393
    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 394
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, username:Ljava/lang/String;
    const-string v1, "tk"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, token:Ljava/lang/String;
    const-string v1, "ts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 398
    .local v6, userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 400
    .local v9, d:Landroid/app/ProgressDialog;
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 402
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 403
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 404
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 407
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_4
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070058

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 412
    :pswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 413
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .restart local v3       #username:Ljava/lang/String;
    const-string v1, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .restart local v4       #token:Ljava/lang/String;
    const-string v1, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .restart local v5       #secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 418
    .restart local v6       #userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 420
    .restart local v9       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 422
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 423
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 424
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_5
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 588
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v1, :cond_1

    .line 589
    const/4 v1, 0x3

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 590
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 591
    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 592
    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 593
    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 594
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 601
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 597
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f070042

    const v4, 0x7f070041

    const v3, 0x7f070040

    const/4 v2, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 643
    :goto_0
    return-void

    .line 622
    :pswitch_0
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    if-eqz v1, :cond_0

    .line 623
    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 625
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 626
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogFragment;->setTitle(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 632
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 634
    .restart local v0       #p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 635
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogFragment;->setTitle(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->addPreferencesFromResource(I)V

    .line 111
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 113
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 115
    .local v1, activity:Landroid/app/Activity;
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 116
    new-instance v8, Lco/vine/android/SettingsFragment$SettingsListener;

    invoke-direct {v8, p0}, Lco/vine/android/SettingsFragment$SettingsListener;-><init>(Lco/vine/android/SettingsFragment;)V

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    .line 117
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v9, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v8, v9}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 118
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 119
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 120
    new-instance v8, Lco/vine/android/ImagePicker;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v10

    invoke-direct {v8, v9, p0, v10, v11}, Lco/vine/android/ImagePicker;-><init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v8, "state_avatar_url"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    .line 124
    const-string v8, "state_avatar_bitmap"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 125
    const-string v8, "state_avatar_border"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 126
    const-string v8, "state_avatar_pending_uri"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 127
    const-string v8, "state_dirty"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 128
    const-string v8, "state_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    .line 129
    const-string v8, "state_desc"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    .line 130
    const-string v8, "state_loc"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    .line 131
    const-string v8, "state_phone"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    .line 132
    const-string v8, "state_email"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    .line 133
    const-string v8, "state_photo_changed"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 145
    :goto_0
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->initializeFromPrefs()V

    .line 147
    const-string v8, "settings_profile_name"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 148
    .local v5, pref:Landroid/preference/Preference;
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    const-string v8, "settings_profile_description"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 152
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    const-string v8, "settings_profile_location"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 156
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    const-string v8, "settings_profile_email"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 160
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    const-string v8, "settings_profile_phone"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 164
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    const-string v8, "settings_profile_avatar"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 168
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    check-cast v5, Lco/vine/android/widget/ImagePreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5, p0}, Lco/vine/android/widget/ImagePreference;->setPreferenceBoundListener(Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;)V

    .line 171
    const-string v8, "about"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 174
    .restart local v5       #pref:Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "co.vine.android"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 175
    .local v4, pi:Landroid/content/pm/PackageInfo;
    const v8, 0x7f07008d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lco/vine/android/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    const-string v8, "cache"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 183
    const v8, 0x7f07008e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lco/vine/android/util/Util;->getCacheSize(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lco/vine/android/util/Util;->formatFileSize(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lco/vine/android/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    const-string v8, "attribution"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 188
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    const-string v8, "pp"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 191
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    const-string v8, "password"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 194
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    const-string v8, "tos"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 197
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    const-string v8, "logout"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 200
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    const-string v8, "twitter"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 203
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 206
    .local v2, am:Landroid/accounts/AccountManager;
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 208
    .local v0, acc:Landroid/accounts/Account;
    invoke-static {v2, v0}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 210
    const v8, 0x7f070088

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v0}, Lco/vine/android/client/VineAccountHelper;->getTwitterUsername(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    .line 223
    :goto_2
    return-void

    .line 135
    .end local v0           #acc:Landroid/accounts/Account;
    .end local v2           #am:Landroid/accounts/AccountManager;
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_0
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 136
    .local v7, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v6

    .line 137
    .local v6, session:Lco/vine/android/client/Session;
    const-string v8, "settings_profile_name"

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    .line 138
    const-string v8, "settings_profile_description"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    .line 139
    const-string v8, "settings_profile_location"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    .line 140
    const-string v8, "settings_profile_email"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    .line 141
    const-string v8, "settings_profile_phone"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    .line 142
    const-string v8, "settings_profile_avatar"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    .line 143
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 176
    .end local v6           #session:Lco/vine/android/client/Session;
    .end local v7           #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v5       #pref:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    .line 177
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SettingsFragment"

    const-string v9, "Error retrieving package info:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 213
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #acc:Landroid/accounts/Account;
    .restart local v2       #am:Landroid/accounts/AccountManager;
    :cond_1
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "settings_twitter_connected"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    const v8, 0x7f070088

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 216
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto :goto_2

    .line 219
    :cond_2
    const v8, 0x7f07008c

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 220
    const v8, 0x7f070087

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 221
    const/4 v8, 0x0

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 444
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    const v0, 0x7f09009e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 446
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 228
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 229
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 232
    :cond_0
    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 4
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 476
    packed-switch p2, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 478
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 484
    :pswitch_2
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v1}, Lco/vine/android/ImagePicker;->chooseImage()V

    goto :goto_0

    .line 480
    :pswitch_3
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v1}, Lco/vine/android/ImagePicker;->captureImage()V

    goto :goto_0

    .line 491
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 499
    :pswitch_5
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v1}, Lco/vine/android/ImagePicker;->captureImage()V

    goto :goto_0

    .line 493
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 495
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 503
    :pswitch_7
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mImagePicker:Lco/vine/android/ImagePicker;

    invoke-virtual {v1}, Lco/vine/android/ImagePicker;->chooseImage()V

    goto :goto_0

    .line 510
    :pswitch_8
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 512
    :pswitch_9
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 513
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 525
    :pswitch_a
    packed-switch p3, :pswitch_data_4

    goto :goto_0

    .line 527
    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 529
    .local v0, d:Landroid/app/ProgressDialog;
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 531
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 532
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 533
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->logout(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto :goto_0

    .line 543
    .end local v0           #d:Landroid/app/ProgressDialog;
    :pswitch_c
    packed-switch p3, :pswitch_data_5

    goto :goto_0

    .line 545
    :pswitch_d
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 547
    .restart local v0       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 549
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 550
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 551
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto/16 :goto_0

    .line 561
    .end local v0           #d:Landroid/app/ProgressDialog;
    :pswitch_e
    packed-switch p3, :pswitch_data_6

    goto/16 :goto_0

    .line 563
    :pswitch_f
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 565
    .restart local v0       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 567
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 568
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 569
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->clearCache()Ljava/lang/String;

    goto/16 :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 478
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 491
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 510
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch

    .line 525
    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch

    .line 543
    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_d
    .end packed-switch

    .line 561
    :pswitch_data_6
    .packed-switch -0x1
        :pswitch_f
    .end packed-switch
.end method

.method public onImagePeferenceBound(Lco/vine/android/widget/ImagePreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const v8, 0x7f020071

    const v4, 0x7f02001b

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 301
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p1, p0}, Lco/vine/android/widget/ImagePreference;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget v3, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 333
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 311
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 313
    :cond_1
    new-instance v3, Lco/vine/android/util/image/ImageKey;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-direct {v3, v4}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    .line 314
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {p1, v0}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    const v1, 0x7f020071

    .line 318
    .local v1, borderRes:I
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iput v8, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 320
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 321
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    goto :goto_0

    .line 323
    .end local v1           #borderRes:I
    :cond_2
    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 326
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 330
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 469
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 452
    :pswitch_0
    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v0, :cond_2

    .line 453
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v8, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 455
    .local v8, progressDialog:Landroid/app/ProgressDialog;
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 457
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 458
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    iget-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->updateProfile(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 466
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    .restart local v8       #progressDialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 462
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 450
    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newObject"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v1, p2

    .line 265
    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, newValue:Ljava/lang/String;
    const-string v2, "settings_profile_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 270
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    return v3

    .line 272
    :cond_1
    const-string v2, "settings_profile_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 275
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_2
    const-string v2, "settings_profile_location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 280
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_3
    const-string v2, "settings_profile_email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 285
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_4
    const-string v2, "settings_profile_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 290
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preference"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const v8, 0x7f070052

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 647
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, key:Ljava/lang/String;
    const-string v7, "logout"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 649
    invoke-static {v12}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v6

    .line 650
    .local v6, p:Lco/vine/android/PromptDialogFragment;
    const v7, 0x7f070027

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 651
    const v7, 0x7f070026

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 652
    invoke-virtual {v6, v8}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 653
    invoke-virtual {v6, p0, v10}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 654
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 715
    .end local v6           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    :goto_0
    return v10

    .line 655
    :cond_1
    const-string v7, "twitter"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 656
    iget-boolean v7, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    if-eqz v7, :cond_2

    .line 657
    invoke-static {v9}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v6

    .line 659
    .restart local v6       #p:Lco/vine/android/PromptDialogFragment;
    const v7, 0x7f070089

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 660
    const v7, 0x7f07008b

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 661
    invoke-virtual {v6, v8}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 662
    invoke-virtual {v6, p0, v10}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 663
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 665
    .end local v6           #p:Lco/vine/android/PromptDialogFragment;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 666
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 668
    .local v1, authStarted:Z
    :try_start_0
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v8, 0x4

    invoke-virtual {v7, v0, v8}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 673
    :goto_1
    if-nez v1, :cond_0

    .line 674
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v4, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "finish"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v4, v9}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 679
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #authStarted:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    const-string v7, "about"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 680
    iget v7, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    .line 681
    iget v7, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    const/4 v8, 0x6

    if-lt v7, v8, :cond_4

    .line 682
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lco/vine/android/DebugHomeActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 683
    :cond_4
    iget v7, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    if-ne v7, v9, :cond_0

    .line 684
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "One more!"

    invoke-static {v7, v8}, Lco/vine/android/util/Util;->showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_5
    const-string v7, "cache"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 687
    const/4 v7, 0x6

    invoke-static {v7}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v6

    .line 689
    .restart local v6       #p:Lco/vine/android/PromptDialogFragment;
    const v7, 0x7f07008f

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 690
    invoke-virtual {v6, v8}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 691
    const v7, 0x7f070090

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 692
    invoke-virtual {v6, p0, v10}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 693
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto/16 :goto_0

    .line 694
    .end local v6           #p:Lco/vine/android/PromptDialogFragment;
    :cond_6
    const-string v7, "attribution"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 695
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    .local v3, i:Landroid/content/Intent;
    const-string v7, "type"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 698
    .end local v3           #i:Landroid/content/Intent;
    :cond_7
    const-string v7, "pp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 699
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    .restart local v3       #i:Landroid/content/Intent;
    const-string v7, "type"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 703
    .end local v3           #i:Landroid/content/Intent;
    :cond_8
    const-string v7, "tos"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 704
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/WebViewActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .restart local v3       #i:Landroid/content/Intent;
    const-string v7, "type"

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 707
    .end local v3           #i:Landroid/content/Intent;
    :cond_9
    const-string v7, "password"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 708
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/ResetPasswordActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    .restart local v3       #i:Landroid/content/Intent;
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "settings_profile_email"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 711
    const-string v7, "email"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    :cond_a
    invoke-virtual {p0, v3}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 669
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #authStarted:Z
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    const-string v0, "state_avatar_border"

    iget v1, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v0, "state_avatar_bitmap"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    const-string v0, "state_avatar_pending_uri"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    const-string v0, "state_dirty"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "state_photo_changed"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "state_avatar_url"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "state_name"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "state_desc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "state_loc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "state_phone"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "state_email"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setProfileUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 439
    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 440
    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020074

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 337
    const-string v4, "settings_profile_avatar"

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lco/vine/android/widget/ImagePreference;

    .line 338
    .local v2, pref:Lco/vine/android/widget/ImagePreference;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 339
    .local v3, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {v2, p1}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    const v1, 0x7f020074

    .line 342
    .local v1, borderRes:I
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    .local v0, border:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 345
    iput v7, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 346
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 354
    .end local v0           #border:Landroid/graphics/drawable/Drawable;
    .end local v1           #borderRes:I
    :goto_0
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 355
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 356
    return-void

    .line 348
    :cond_0
    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-virtual {v2, v8}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iput-boolean v6, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 351
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 352
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0
.end method
