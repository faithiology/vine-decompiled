.class public Lco/vine/android/SignUpNameAvatarFragment;
.super Lco/vine/android/BaseFragment;
.source "SignUpNameAvatarFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/PromptDialogSupportFragment$OnDialogDoneListener;
.implements Lco/vine/android/SetThumbnailTask$SetThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;
    }
.end annotation


# static fields
.field public static final ARG_LOGIN:Ljava/lang/String; = "user"

.field private static final DIALOG_REMOVE_TAKE_OR_CHOOSE_PHOTO:I = 0x2

.field private static final DIALOG_TAKE_OR_CHOOSE_PHOTO:I = 0x1

.field private static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x3

.field private static final REQUEST_CODE_CROP:I = 0x2

.field private static final REQUEST_CODE_TAKE_PHOTO:I = 0x1

.field private static final STATE_PROFILE_URI:Ljava/lang/String; = "state_pi"


# instance fields
.field private mLogin:Lco/vine/android/api/VineLogin;

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/MenuItem;

.field private mPendingUri:Landroid/net/Uri;

.field private mPhotoAttached:Z

.field private mProfileImage:Landroid/widget/ImageView;

.field private mProfileUri:Landroid/net/Uri;

.field private mTwitterUser:Lco/vine/android/api/TwitterUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 340
    return-void
.end method

.method static synthetic access$100(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lco/vine/android/SignUpNameAvatarFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPendingUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lco/vine/android/SignUpNameAvatarFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    return p1
.end method

.method static synthetic access$500(Lco/vine/android/SignUpNameAvatarFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lco/vine/android/SignUpNameAvatarFragment;->setPendingUri(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$602(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/api/TwitterUser;)Lco/vine/android/api/TwitterUser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    return-object p1
.end method

.method private captureImage()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 268
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 269
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 270
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v7

    invoke-static {v1, v9, v7, v8}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v5

    .line 272
    .local v5, profileFile:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 274
    :cond_0
    const v7, 0x7f08003b

    invoke-static {v1, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 292
    :goto_0
    return-void

    .line 278
    :cond_1
    const v7, 0x7f08003c

    invoke-virtual {p0, v7}, Lco/vine/android/SignUpNameAvatarFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, profile:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v7, "description"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 283
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "output"

    iget-object v9, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 286
    .local v2, i:Landroid/content/Intent;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, ignored:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f08003d

    invoke-static {v1, v7}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 289
    iget-object v7, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 290
    const/4 v7, 0x0

    iput-object v7, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private chooseImage()V
    .locals 4

    .prologue
    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 298
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, ignored:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f08003d

    invoke-static {v2, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private setPendingUri(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bm"

    .prologue
    .line 316
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const-string v6, "twitter_profile.jpg"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v3, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 319
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 322
    .local v1, compressed:[B
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 323
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 324
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 325
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPendingUri:Landroid/net/Uri;

    .line 326
    const-string v5, "Pending Uri for logo is {}."

    iget-object v6, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPendingUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lco/vine/android/SignUpNameAvatarFragment$1;

    invoke-direct {v6, p0}, Lco/vine/android/SignUpNameAvatarFragment$1;-><init>(Lco/vine/android/SignUpNameAvatarFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private validate()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 148
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 151
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 140
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 229
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    if-ne p2, v3, :cond_2

    .line 235
    if-ne p1, v4, :cond_1

    .line 236
    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 240
    .local v2, uri:Landroid/net/Uri;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/vine/android/EditProfileCropActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "uri"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 242
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 238
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 244
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 249
    :pswitch_1
    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_3

    .line 250
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 251
    .local v0, croppedUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 252
    iget-object v3, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-static {v3}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 253
    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPendingUri:Landroid/net/Uri;

    .line 254
    new-instance v3, Lco/vine/android/SetThumbnailTask;

    invoke-direct {v3, p0}, Lco/vine/android/SetThumbnailTask;-><init>(Landroid/support/v4/app/Fragment;)V

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lco/vine/android/SetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 257
    .end local v0           #croppedUri:Landroid/net/Uri;
    :cond_3
    iput-object v5, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f080036

    const v4, 0x7f080035

    const v3, 0x7f080034

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-boolean v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 164
    .local v0, p:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 165
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 171
    .end local v0           #p:Lco/vine/android/PromptDialogSupportFragment;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v0

    .line 173
    .restart local v0       #p:Lco/vine/android/PromptDialogSupportFragment;
    invoke-virtual {v0, p0, v2}, Lco/vine/android/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 174
    invoke-virtual {v0, v3}, Lco/vine/android/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lco/vine/android/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lco/vine/android/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f09007b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 74
    if-eqz p1, :cond_0

    const-string v1, "state_pi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "state_pi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    .line 78
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/SignUpNameAvatarFragment;->setHasOptionsMenu(Z)V

    .line 79
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lco/vine/android/SignUpPagerActivity;

    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->setBarTitle(I)V

    .line 83
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineLogin;

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    .line 87
    :cond_1
    new-instance v1, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/SignUpNameAvatarFragment$SignUpListener;-><init>(Lco/vine/android/SignUpNameAvatarFragment;Lco/vine/android/SignUpNameAvatarFragment$1;)V

    iput-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 111
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const v0, 0x7f090089

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    .line 113
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v0, 0x7f030028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .locals 1
    .parameter "dialog"
    .parameter "id"
    .parameter "which"

    .prologue
    .line 185
    packed-switch p2, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 187
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 193
    :pswitch_2
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->chooseImage()V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->captureImage()V

    goto :goto_0

    .line 200
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 206
    :pswitch_5
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->captureImage()V

    goto :goto_0

    .line 202
    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpNameAvatarFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 210
    :pswitch_7
    invoke-direct {p0}, Lco/vine/android/SignUpNameAvatarFragment;->chooseImage()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/SignUpNameAvatarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SignUpPagerActivity;

    .line 123
    .local v0, activity:Lco/vine/android/SignUpPagerActivity;
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setName(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPendingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setProfile(Landroid/net/Uri;)V

    .line 125
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    iget-object v2, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setTwitterUser(Lco/vine/android/api/TwitterUser;)V

    .line 129
    :cond_0
    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->toNextStep()V

    .line 130
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f090089
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "state_pi"

    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 144
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f09007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment;->mLogin:Lco/vine/android/api/VineLogin;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->fetchTwitterUser(Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mProfileImage:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/SignUpNameAvatarFragment;->mPhotoAttached:Z

    goto :goto_0
.end method
