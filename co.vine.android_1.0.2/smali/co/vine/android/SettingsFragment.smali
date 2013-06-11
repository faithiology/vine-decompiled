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

    .line 710
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

    .line 589
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 590
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 591
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v7

    invoke-static {v1, v9, v7, v8}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v5

    .line 593
    .local v5, profileFile:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 595
    :cond_0
    const v7, 0x7f08003b

    invoke-static {v1, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 613
    :goto_0
    return-void

    .line 599
    :cond_1
    const v7, 0x7f08003c

    invoke-virtual {p0, v7}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, profile:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v7, "description"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 604
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "output"

    iget-object v9, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 607
    .local v2, i:Landroid/content/Intent;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v7}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v3

    .line 609
    .local v3, ignored:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f08003d

    invoke-static {v1, v7}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 610
    iget-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 611
    const/4 v7, 0x0

    iput-object v7, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private chooseImage()V
    .locals 4

    .prologue
    .line 616
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 619
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, ignored:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08003d

    invoke-static {v2, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private initializeFromPrefs()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 247
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v0

    .line 249
    .local v0, session:Lco/vine/android/client/Session;
    const-string v2, "settings_profile_name"

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 250
    const-string v2, "settings_profile_description"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    .line 251
    const-string v2, "settings_profile_location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    .line 252
    const-string v2, "settings_profile_email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    .line 253
    const-string v2, "settings_profile_phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    .line 254
    const-string v2, "settings_profile_avatar"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private resetPrefs()V
    .locals 5

    .prologue
    .line 574
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 575
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 577
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 579
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "settings_profile_name"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    const-string v3, "settings_profile_description"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    const-string v3, "settings_profile_location"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    const-string v3, "settings_profile_email"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    const-string v3, "settings_profile_phone"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    const-string v3, "settings_profile_avatar"

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 585
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 586
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    .line 356
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 428
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 362
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 363
    iget-object v11, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 367
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

    .line 369
    .local v10, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v10, v1}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 365
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 371
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 376
    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_3

    .line 377
    const-string v1, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 378
    .local v8, croppedUri:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 379
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 380
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    .line 381
    new-instance v1, Lco/vine/android/SetThumbnailTask;

    invoke-direct {v1, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/app/Fragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v12, 0x0

    aput-object v8, v2, v12

    invoke-virtual {v1, v2}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 384
    .end local v8           #croppedUri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 389
    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 390
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, username:Ljava/lang/String;
    const-string v1, "tk"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, token:Ljava/lang/String;
    const-string v1, "ts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 394
    .local v6, userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 396
    .local v9, d:Landroid/app/ProgressDialog;
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 398
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 399
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 400
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 403
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_4
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08004b

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 408
    :pswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 409
    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .restart local v3       #username:Ljava/lang/String;
    const-string v1, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .restart local v4       #token:Ljava/lang/String;
    const-string v1, "secret"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .restart local v5       #secret:Ljava/lang/String;
    const-string v1, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 414
    .restart local v6       #userId:J
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 416
    .restart local v9       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 418
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 419
    iput-object v9, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 420
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 423
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #secret:Ljava/lang/String;
    .end local v6           #userId:J
    .end local v9           #d:Landroid/app/ProgressDialog;
    :cond_5
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 357
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
    .line 558
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v1, :cond_1

    .line 559
    const/4 v1, 0x3

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 560
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 561
    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 562
    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogFragment;

    .line 563
    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 564
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 571
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 567
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f080036

    const v4, 0x7f080035

    const v3, 0x7f080034

    const/4 v2, 0x0

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 650
    :goto_0
    return-void

    .line 629
    :pswitch_0
    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    if-eqz v1, :cond_0

    .line 630
    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 632
    .local v0, p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 633
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogFragment;->setTitle(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v1

    const v2, 0x7f080037

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

    .line 639
    .end local v0           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v0

    .line 641
    .restart local v0       #p:Lco/vine/android/PromptDialogFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 642
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

    .line 627
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
    const v8, 0x7f08007f

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
    const-string v8, "pp"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 189
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    const-string v8, "tos"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 192
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string v8, "logout"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 195
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    const-string v8, "twitter"

    invoke-virtual {p0, v8}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 198
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 200
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 201
    .local v2, am:Landroid/accounts/AccountManager;
    iget-object v8, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 203
    .local v0, acc:Landroid/accounts/Account;
    invoke-static {v2, v0}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 205
    const v8, 0x7f08007a

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 206
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

    .line 207
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    .line 218
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

    .line 208
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

    .line 210
    const v8, 0x7f08007a

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 211
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto :goto_2

    .line 214
    :cond_2
    const v8, 0x7f08007e

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 215
    const v8, 0x7f080079

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 216
    const/4 v8, 0x0

    iput-boolean v8, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 435
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 436
    const v0, 0x7f090088

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 437
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 223
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 224
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
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

    .line 467
    packed-switch p2, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 469
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 475
    :pswitch_2
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->chooseImage()V

    goto :goto_0

    .line 471
    :pswitch_3
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->captureImage()V

    goto :goto_0

    .line 482
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 488
    :pswitch_5
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->captureImage()V

    goto :goto_0

    .line 484
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 492
    :pswitch_7
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->chooseImage()V

    goto :goto_0

    .line 499
    :pswitch_8
    packed-switch p3, :pswitch_data_3

    goto :goto_0

    .line 501
    :pswitch_9
    invoke-direct {p0}, Lco/vine/android/SettingsFragment;->resetPrefs()V

    .line 502
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 514
    :pswitch_a
    packed-switch p3, :pswitch_data_4

    goto :goto_0

    .line 516
    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 518
    .local v0, d:Landroid/app/ProgressDialog;
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 520
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 521
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 522
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->logout(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto :goto_0

    .line 532
    .end local v0           #d:Landroid/app/ProgressDialog;
    :pswitch_c
    packed-switch p3, :pswitch_data_5

    goto :goto_0

    .line 534
    :pswitch_d
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 536
    .restart local v0       #d:Landroid/app/ProgressDialog;
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 538
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 539
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 540
    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->disconnectTwitter(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 482
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 499
    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch

    .line 514
    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch

    .line 532
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

    .line 295
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 296
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p1, p0}, Lco/vine/android/widget/ImagePreference;->setImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget v3, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 328
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 302
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-static {v3, v4}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 306
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 308
    :cond_1
    new-instance v3, Lco/vine/android/util/image/ImageKey;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatar:Ljava/lang/String;

    invoke-direct {v3, v4}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    .line 309
    iget-object v3, p0, Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v4, p0, Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p1, v0}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    const v1, 0x7f020061

    .line 313
    .local v1, borderRes:I
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iput v9, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 315
    iput-object v0, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 316
    iput-boolean v7, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    goto :goto_0

    .line 318
    .end local v1           #borderRes:I
    :cond_2
    const v3, 0x7f02000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iput-object v5, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 321
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0

    .line 325
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {p1, v5}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 441
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 460
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 443
    :pswitch_0
    iget-boolean v0, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    if-eqz v0, :cond_2

    .line 444
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v8, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 446
    .local v8, progressDialog:Landroid/app/ProgressDialog;
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 448
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 449
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

    .line 457
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :cond_0
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    .restart local v8       #progressDialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 453
    .end local v8           #progressDialog:Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 441
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

    .line 259
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v1, p2

    .line 260
    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, newValue:Ljava/lang/String;
    const-string v2, "settings_profile_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 265
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mName:Ljava/lang/String;

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 290
    return v3

    .line 267
    :cond_1
    const-string v2, "settings_profile_description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 270
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "settings_profile_location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 275
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_3
    const-string v2, "settings_profile_email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 280
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mEmail:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_4
    const-string v2, "settings_profile_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iput-boolean v3, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 285
    iput-object v1, p0, Lco/vine/android/SettingsFragment;->mPhone:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const v11, 0x7f080045

    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x5

    .line 654
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, key:Ljava/lang/String;
    const-string v6, "logout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 656
    invoke-static {v7}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v5

    .line 657
    .local v5, p:Lco/vine/android/PromptDialogFragment;
    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 658
    const v6, 0x7f08001b

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 659
    invoke-virtual {v5, v11}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 660
    invoke-virtual {v5, p0, v9}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 661
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 707
    .end local v5           #p:Lco/vine/android/PromptDialogFragment;
    :cond_0
    :goto_0
    return v9

    .line 662
    :cond_1
    const-string v6, "twitter"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 663
    iget-boolean v6, p0, Lco/vine/android/SettingsFragment;->mTwitterLogin:Z

    if-eqz v6, :cond_2

    .line 664
    invoke-static {v8}, Lco/vine/android/PromptDialogFragment;->newInstance(I)Lco/vine/android/PromptDialogFragment;

    move-result-object v5

    .line 666
    .restart local v5       #p:Lco/vine/android/PromptDialogFragment;
    const v6, 0x7f08007b

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setMessage(I)Lco/vine/android/PromptDialogFragment;

    .line 667
    const v6, 0x7f08007d

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogFragment;

    .line 668
    invoke-virtual {v5, v11}, Lco/vine/android/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogFragment;

    .line 669
    invoke-virtual {v5, p0, v9}, Lco/vine/android/PromptDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 670
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/vine/android/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 672
    .end local v5           #p:Lco/vine/android/PromptDialogFragment;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 673
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 675
    .local v1, authStarted:Z
    :try_start_0
    iget-object v6, p0, Lco/vine/android/SettingsFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v7, 0x4

    invoke-virtual {v6, v0, v7}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 680
    :goto_1
    if-nez v1, :cond_0

    .line 681
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v3, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "finish"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v3, v8}, Lco/vine/android/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 686
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #authStarted:Z
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v6, "about"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 687
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    .line 688
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_4

    .line 689
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lco/vine/android/DebugHomeActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    :cond_4
    iget v6, p0, Lco/vine/android/SettingsFragment;->mAboutTapCount:I

    if-ne v6, v8, :cond_0

    .line 691
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080080

    invoke-virtual {p0, v7}, Lco/vine/android/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lco/vine/android/util/Util;->showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_5
    const-string v6, "attribution"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 694
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lco/vine/android/WebViewActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .local v2, i:Landroid/content/Intent;
    const-string v6, "type"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 697
    .end local v2           #i:Landroid/content/Intent;
    :cond_6
    const-string v6, "pp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 698
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lco/vine/android/WebViewActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "type"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 702
    .end local v2           #i:Landroid/content/Intent;
    :cond_7
    const-string v6, "tos"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 703
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lco/vine/android/WebViewActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "type"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v2}, Lco/vine/android/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 676
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
    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "state_avatar_border"

    iget v1, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v0, "state_avatar_bitmap"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    const-string v0, "state_avatar_pending_uri"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    const-string v0, "state_dirty"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "state_photo_changed"

    iget-boolean v1, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "state_avatar_url"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "state_name"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "state_desc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "state_loc"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "state_phone"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "state_email"

    iget-object v1, p0, Lco/vine/android/SettingsFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
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

    .line 332
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 333
    const-string v4, "settings_profile_avatar"

    invoke-virtual {p0, v4}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lco/vine/android/widget/ImagePreference;

    .line 334
    .local v2, pref:Lco/vine/android/widget/ImagePreference;
    invoke-virtual {p0}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 335
    .local v3, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {v2, p1}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    const v1, 0x7f020064

    .line 338
    .local v1, borderRes:I
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 339
    .local v0, border:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iput-object p1, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 341
    iput v7, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    .line 342
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 350
    .end local v0           #border:Landroid/graphics/drawable/Drawable;
    .end local v1           #borderRes:I
    :goto_0
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mDirty:Z

    .line 351
    iput-boolean v5, p0, Lco/vine/android/SettingsFragment;->mPhotoChanged:Z

    .line 352
    return-void

    .line 344
    :cond_0
    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lco/vine/android/widget/ImagePreference;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {v2, v8}, Lco/vine/android/widget/ImagePreference;->setBorderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iput-boolean v6, p0, Lco/vine/android/SettingsFragment;->mPhotoAttached:Z

    .line 347
    iput-object v8, p0, Lco/vine/android/SettingsFragment;->mThumbnail:Landroid/graphics/Bitmap;

    .line 348
    iput v6, p0, Lco/vine/android/SettingsFragment;->mBorderRes:I

    goto :goto_0
.end method
