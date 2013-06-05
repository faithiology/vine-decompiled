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


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SettingsFragment$SettingsListener;
    }
.end annotation


# static fields
.field private static final DEBUG_TAP_THRESHOLD:I = 0x6

.field private static final DIALOG_DISCONNECT_TWITTER:I = 0x5

.field private static final DIALOG_LOGOUT:I = 0x4

.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x2

.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x1

.field private static final DIALOG_UNSAVED_CHANGES:I = 0x3

.field private static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x3

.field private static final REQUEST_CODE_CROP:I = 0x2

.field private static final REQUEST_CODE_TAKE_PHOTO:I = 0x1

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
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 706
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SettingsFragment;)Lco/vine/android/util/image/ImageKey;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    return-object v0
.end method

.method static synthetic access$102(Lco/vine/android/SettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    return p1
.end method

.method static synthetic access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method static synthetic access$502(Lco/vine/android/SettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    return p1
.end method

.method private captureImage()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 586
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 587
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 588
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v7

    invoke-static {v1, v9, v7, v8}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v5

    .line 590
    .local v5, profileFile:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 592
    :cond_0
    const v7, 0x7f08003a

    invoke-static {v1, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 610
    :goto_0
    return-void

    .line 596
    :cond_1
    const v7, 0x7f08003b

    invoke-virtual {p0, v7}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, profile:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v7, "description"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 601
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "output"

    iget-object v9, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 604
    .local v2, i:Landroid/content/Intent;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v7}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v3

    .line 606
    .local v3, ignored:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f08003c

    invoke-static {v1, v7}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 607
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 608
    const/4 v7, 0x0

    iput-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private chooseImage()V
    .locals 4

    .prologue
    .line 613
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 616
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, ignored:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-static {v2, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private initializeFromPrefs()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 250
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    .line 252
    .local v0, session:Lco/vine/android/client/Session;
    const-string v2, "settings_profile_name"

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 253
    const-string v2, "settings_profile_description"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    .line 254
    const-string v2, "settings_profile_location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    .line 255
    const-string v2, "settings_profile_email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    .line 256
    const-string v2, "settings_profile_phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    .line 257
    const-string v2, "settings_profile_avatar"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    .line 258
    return-void
.end method

.method private resetPrefs()V
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 572
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 574
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 576
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "settings_profile_name"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 577
    const-string v3, "settings_profile_description"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    const-string v3, "settings_profile_location"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    const-string v3, "settings_profile_email"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    const-string v3, "settings_profile_phone"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    const-string v3, "settings_profile_avatar"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    .line 359
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    packed-switch p1, :pswitch_data_0

    .line 431
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 365
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 366
    iget-object v11, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 370
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

    .line 372
    .local v10, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v10, v1}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 368
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 374
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 379
    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_3

    .line 380
    const-string v1, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 381
    .local v8, croppedUri:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 382
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 383
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 384
    new-instance v1, Lco/vine/android/SetThumbnailTask;

    invoke-direct {v1, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/app/Fragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v12, 0x0

    aput-object v8, v2, v12

    invoke-virtual {v1, v2}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 387
    .end local v8           #croppedUri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 392
    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 393
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, username:Ljava/lang/String;
    const-string v1, "tk"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, token:Ljava/lang/String;
    const-string v1, "ts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 397
    .local v6, userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 399
    .local v9, d:Landroid/app/ProgressDialog;
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 400
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 401
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 402
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 403
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 406
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_4
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 411
    :pswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 412
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .restart local v3       #username:Ljava/lang/String;
    const-string v1, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    .restart local v4       #token:Ljava/lang/String;
    const-string v1, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 416
    .restart local v5       #secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 417
    .restart local v6       #userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 419
    .restart local v9       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 421
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 422
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 423
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 426
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_5
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08004c

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 360
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
    .line 557
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x3

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 559
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 560
    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 561
    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 562
    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 563
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 568
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 566
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lco/vine/android/SettingsActivity;

    invoke-virtual {v1}, Lco/vine/android/SettingsActivity;->onFinishedWithBackPress()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f080035

    const v4, 0x7f080034

    const v3, 0x7f080033

    const/4 v2, 0x0

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 647
    :goto_0
    return-void

    .line 626
    :pswitch_0
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    if-eqz v1, :cond_0

    .line 627
    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 629
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 630
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogFragment;->setTitle(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    const v2, 0x7f080036

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

    .line 636
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 638
    .restart local v0       #p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 639
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

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->addPreferencesFromResource(I)V

    .line 115
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 117
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 119
    .local v1, activity:Landroid/app/Activity;
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 120
    new-instance v8, Lco/vine/android/SettingsFragment$SettingsListener;

    invoke-direct {v8, p0}, Lco/vine/android/SettingsFragment$SettingsListener;-><init>(Lco/vine/android/SettingsFragment;)V

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    .line 121
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v9, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v8, v9}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 122
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 123
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v8, "state_avatar_url"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    .line 127
    const-string v8, "state_avatar_bitmap"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 128
    const-string v8, "state_avatar_border"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 129
    const-string v8, "state_avatar_pending_uri"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 130
    const-string v8, "state_dirty"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 131
    const-string v8, "state_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    .line 132
    const-string v8, "state_desc"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    .line 133
    const-string v8, "state_loc"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    .line 134
    const-string v8, "state_phone"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    .line 135
    const-string v8, "state_email"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    .line 136
    const-string v8, "state_photo_changed"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 148
    :goto_0
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->initializeFromPrefs()V

    .line 150
    const-string v8, "settings_profile_name"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 151
    .local v5, pref:Landroid/preference/Preference;
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    const-string v8, "settings_profile_description"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 155
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    const-string v8, "settings_profile_location"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 159
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    const-string v8, "settings_profile_email"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 163
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    const-string v8, "settings_profile_phone"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 167
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    const-string v8, "settings_profile_avatar"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 171
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    check-cast v5, Lco/vine/android/widget/ImagePreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5, p0}, Lco/vine/android/widget/ImagePreference;->setPreferenceBoundListener(Lco/vine/android/widget/ImagePreference$OnImagePreferenceBoundListener;)V

    .line 174
    const-string v8, "about"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 177
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

    .line 178
    .local v4, pi:Landroid/content/pm/PackageInfo;
    const v8, 0x7f08007d

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

    .line 183
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    const-string v8, "attribution"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 186
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    const-string v8, "feedback"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 189
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    const-string v8, "pp"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 192
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string v8, "tos"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 195
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    const-string v8, "logout"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 198
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 200
    const-string v8, "twitter"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 201
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 204
    .local v2, am:Landroid/accounts/AccountManager;
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 206
    .local v0, acc:Landroid/accounts/Account;
    invoke-static {v2, v0}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 208
    const v8, 0x7f080078

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
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

    .line 210
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    .line 221
    :goto_2
    return-void

    .line 138
    .end local v0           #acc:Landroid/accounts/Account;
    .end local v2           #am:Landroid/accounts/AccountManager;
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_0
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 139
    .local v7, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v6

    .line 140
    .local v6, session:Lco/vine/android/client/Session;
    const-string v8, "settings_profile_name"

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    .line 141
    const-string v8, "settings_profile_description"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    .line 142
    const-string v8, "settings_profile_location"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    .line 143
    const-string v8, "settings_profile_email"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    .line 144
    const-string v8, "settings_profile_phone"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    .line 145
    const-string v8, "settings_profile_avatar"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    .line 146
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 179
    .end local v6           #session:Lco/vine/android/client/Session;
    .end local v7           #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v5       #pref:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    .line 180
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SettingsFragment"

    const-string v9, "Error retrieving package info:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 211
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

    .line 213
    const v8, 0x7f080078

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 214
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto :goto_2

    .line 217
    :cond_2
    const v8, 0x7f08007c

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 218
    const v8, 0x7f080077

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    const/4 v8, 0x0

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 438
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 439
    const v0, 0x7f090088

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 440
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 226
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 227
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 230
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

    .line 468
    packed-switch p2, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 470
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 476
    :pswitch_2
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->chooseImage()V

    goto :goto_0

    .line 472
    :pswitch_3
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->captureImage()V

    goto :goto_0

    .line 483
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 489
    :pswitch_5
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->captureImage()V

    goto :goto_0

    .line 485
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 493
    :pswitch_7
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->chooseImage()V

    goto :goto_0

    .line 500
    :pswitch_8
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 502
    :pswitch_9
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 503
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lco/vine/android/SettingsActivity;

    invoke-virtual {v1}, Lco/vine/android/SettingsActivity;->onFinishedWithBackPress()V

    goto :goto_0

    .line 513
    :pswitch_a
    packed-switch p3, :pswitch_data_4

    goto :goto_0

    .line 515
    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 517
    .local v0, d:Landroid/app/ProgressDialog;
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 519
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 520
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 521
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->logout(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto :goto_0

    .line 531
    .end local v0           #d:Landroid/app/ProgressDialog;
    :pswitch_c
    packed-switch p3, :pswitch_data_5

    goto :goto_0

    .line 533
    :pswitch_d
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 535
    .restart local v0       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 537
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 538
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 539
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 483
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 500
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch

    .line 513
    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch

    .line 531
    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onImagePeferenceBound(Lco/vine/android/widget/ImagePreference;)V
    .locals 10
    .parameter "pref"

    .prologue
    const v9, 0x7f020061

    const v8, 0x7f020011

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 298
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 299
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p1, p0}, Lco/vine/android/widget/ImagePreference;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    iget v3, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 331
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 305
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3, v4}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 309
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 311
    :cond_1
    new-instance v3, Lco/vine/android/util/image/ImageKey;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-direct {v3, v4}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    .line 312
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p1, v0}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    const v1, 0x7f020061

    .line 316
    .local v1, borderRes:I
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iput v9, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 318
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 319
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    goto :goto_0

    .line 321
    .end local v1           #borderRes:I
    :cond_2
    const v3, 0x7f02000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 324
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 328
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 461
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 446
    :pswitch_0
    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v0, :cond_1

    .line 447
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v8, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 449
    .local v8, progressDialog:Landroid/app/ProgressDialog;
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 451
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 452
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

    if-eqz v7, :cond_0

    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->updateProfile(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 458
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    .restart local v8       #progressDialog:Landroid/app/ProgressDialog;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 456
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsActivity;

    invoke-virtual {v0}, Lco/vine/android/SettingsActivity;->onFinishedWithBackPress()V

    goto :goto_2

    .line 444
    :pswitch_data_0
    .packed-switch 0x7f090088
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newObject"

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v1, p2

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, newValue:Ljava/lang/String;
    const-string v2, "settings_profile_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 268
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 292
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    return v3

    .line 270
    :cond_1
    const-string v2, "settings_profile_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 273
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_2
    const-string v2, "settings_profile_location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 278
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_3
    const-string v2, "settings_profile_email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 283
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_4
    const-string v2, "settings_profile_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 288
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const v11, 0x7f080044

    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 651
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, key:Ljava/lang/String;
    const-string v6, "logout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 653
    invoke-static {v7}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v5

    .line 654
    .local v5, p:Lco/vine/android/PromptDialogFragment;
    const v6, 0x7f08001b

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 655
    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 656
    invoke-virtual {v5, v11}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 657
    invoke-virtual {v5, p0, v9}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 658
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 703
    .end local v5           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    :goto_0
    return v9

    .line 659
    :cond_1
    const-string v6, "twitter"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 660
    iget-boolean v6, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    if-eqz v6, :cond_2

    .line 661
    invoke-static {v8}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v5

    .line 663
    .restart local v5       #p:Lco/vine/android/PromptDialogFragment;
    const v6, 0x7f080079

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 664
    const v6, 0x7f08007b

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 665
    invoke-virtual {v5, v11}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 666
    invoke-virtual {v5, p0, v9}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 667
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 669
    .end local v5           #p:Lco/vine/android/PromptDialogFragment;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 670
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 672
    .local v1, authStarted:Z
    :try_start_0
    iget-object v6, p0, Lco/vine/android/SettingsFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v7, 0x4

    invoke-virtual {v6, v0, v7}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 677
    :goto_1
    if-nez v1, :cond_0

    .line 678
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v3, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "finish"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, v3, v8}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 683
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #authStarted:Z
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v6, "about"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 684
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    .line 685
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_4

    .line 686
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/DebugHomeActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 687
    :cond_4
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    if-ne v6, v8, :cond_0

    .line 688
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f08007e

    invoke-virtual {p0, v7}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lco/vine/android/util/Util;->showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_5
    const-string v6, "attribution"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 691
    const-string v6, "feedback"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 692
    const-string v6, "pp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 694
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lco/vine/android/SignUpTosActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .local v2, i:Landroid/content/Intent;
    const-string v6, "type"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 698
    .end local v2           #i:Landroid/content/Intent;
    :cond_6
    const-string v6, "tos"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 699
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lco/vine/android/SignUpTosActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "type"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 673
    .end local v2           #i:Landroid/content/Intent;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #authStarted:Z
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "state_avatar_border"

    iget v1, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v0, "state_avatar_bitmap"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    const-string v0, "state_avatar_pending_uri"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    const-string v0, "state_dirty"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "state_photo_changed"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "state_avatar_url"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "state_name"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "state_desc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "state_loc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "state_phone"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "state_email"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020064

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 335
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 336
    const-string v4, "settings_profile_avatar"

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lco/vine/android/widget/ImagePreference;

    .line 337
    .local v2, pref:Lco/vine/android/widget/ImagePreference;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 338
    .local v3, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {v2, p1}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    const v1, 0x7f020064

    .line 341
    .local v1, borderRes:I
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    .local v0, border:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 344
    iput v7, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 345
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 353
    .end local v0           #border:Landroid/graphics/drawable/Drawable;
    .end local v1           #borderRes:I
    :goto_0
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 354
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 355
    return-void

    .line 347
    :cond_0
    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {v2, v8}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iput-boolean v6, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 350
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 351
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0
.end method
