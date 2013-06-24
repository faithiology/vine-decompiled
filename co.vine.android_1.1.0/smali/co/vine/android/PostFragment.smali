.class public Lco/vine/android/PostFragment;
.super Lco/vine/android/BaseFragment;
.source "PostFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/PostFragment$PostSessionListener;
    }
.end annotation


# static fields
.field private static final AG_PREVIEW_PATH:Ljava/lang/String; = "preview_path"

.field private static final AG_THUMBNAIL_PATH:Ljava/lang/String; = "pic_path"

.field private static final AG_VIDEO_PATH:Ljava/lang/String; = "vid_path"

.field private static final MAX_CHARS:I = 0x78

.field private static final REQUEST_CODE_TWITTER_SDK:I = 0x1

.field private static final REQUEST_CODE_TWITTER_XAUTH:I = 0x2

.field public static final RESULT_SAVED:I = 0x1f

.field private static mToastLengthExceeded:Landroid/widget/Toast;


# instance fields
.field private mCaption:Landroid/widget/EditText;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mPostFacebook:Landroid/widget/Switch;

.field private mPostToFacebookText:Landroid/widget/TextView;

.field private mPostToTwitterText:Landroid/widget/TextView;

.field private mPostTwitter:Landroid/widget/Switch;

.field private mPostVine:Landroid/widget/Switch;

.field private mPreviewPath:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/PostFragment;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/PostFragment;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    return-object v0
.end method

.method private captionLength()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static prepareArguments(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "intent"
    .parameter "videoPath"
    .parameter "thumbnailPath"
    .parameter "previewPath"

    .prologue
    .line 259
    invoke-static {p0}, Lco/vine/android/BaseFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "vid_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "preview_path"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method private saveToCameraRoll(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 147
    const-string v3, "Saving to camera roll."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, actualFile:Ljava/io/File;
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lco/vine/android/recorder/RecordConfigUtils;->getCameraRollFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    .line 150
    .local v1, finalName:Ljava/io/File;
    if-nez v1, :cond_0

    .line 151
    const-string v3, "Failed to find directory."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, pathToScan:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const-string v3, "Renamed to finale position! {}, BC to {}."

    invoke-static {v3, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v2           #pathToScan:Ljava/lang/String;
    :cond_1
    const-string v3, "Failed to move {}."

    invoke-static {v3, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "pic_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, thumbnailPath:Ljava/lang/String;
    const-string v4, "vid_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 132
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null video path."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    const-string v4, "preview_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    .line 135
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    new-instance v4, Lco/vine/android/util/UploadManager;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lco/vine/android/util/UploadManager;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/vine/android/util/UploadManager;->getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v2

    .line 139
    .local v2, postInfo:Lco/vine/android/util/UploadManager$PostInfo;
    if-eqz v2, :cond_1

    .line 140
    iget-object v4, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    iget-object v5, v2, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iget-object v5, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 268
    const-string v0, "onActivityResult was called."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 298
    const-string v0, "Facebook auth came back: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 300
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v8

    .line 301
    .local v8, session:Lcom/facebook/Session;
    if-eqz v8, :cond_3

    .line 302
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v7, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 307
    .local v7, d:Landroid/app/ProgressDialog;
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lco/vine/android/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 309
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 310
    iput-object v7, p0, Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;

    .line 311
    iget-object v0, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    .line 325
    .end local v7           #d:Landroid/app/ProgressDialog;
    .end local v8           #session:Lcom/facebook/Session;
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 272
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, username:Ljava/lang/String;
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, token:Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, secret:Ljava/lang/String;
    const-string v0, "user_id"

    const-wide/16 v9, 0x0

    invoke-virtual {p3, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 276
    .local v5, userId:J
    iget-object v0, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 279
    .end local v2           #username:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #secret:Ljava/lang/String;
    .end local v5           #userId:J
    :cond_0
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 284
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 285
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2       #username:Ljava/lang/String;
    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .restart local v3       #token:Ljava/lang/String;
    const-string v0, "secret"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4       #secret:Ljava/lang/String;
    const-string v0, "user_id"

    const-wide/16 v9, 0x0

    invoke-virtual {p3, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 290
    .restart local v5       #userId:J
    iget-object v0, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 293
    .end local v2           #username:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #secret:Ljava/lang/String;
    .end local v5           #userId:J
    :cond_1
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 313
    .restart local v8       #session:Lcom/facebook/Session;
    :cond_2
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 317
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 320
    .end local v8           #session:Lcom/facebook/Session;
    :cond_4
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13
    .parameter "compoundButton"
    .parameter "checked"

    .prologue
    const v12, 0x7f080023

    const v11, 0x7f08001b

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 195
    :sswitch_0
    if-nez p2, :cond_1

    .line 196
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v7, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    invoke-virtual {v7, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 211
    :sswitch_1
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_3

    .line 212
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    invoke-virtual {v7, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 226
    :cond_2
    :sswitch_2
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_5

    .line 227
    iget-object v7, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v7, v9}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 213
    :cond_3
    if-eqz p2, :cond_2

    .line 214
    iget-object v7, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lco/vine/android/client/AppController;->getValidFacebookSession(Landroid/app/Activity;)Lcom/facebook/Session;

    move-result-object v5

    .line 215
    .local v5, session:Lcom/facebook/Session;
    if-nez v5, :cond_4

    .line 216
    iget-object v7, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7, p0}, Lco/vine/android/client/AppController;->connectToFacebook(Lco/vine/android/BaseFragment;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget-object v7, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getPendingFacebookToken()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->sendFacebookToken()Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    .end local v5           #session:Lcom/facebook/Session;
    :cond_5
    if-eqz p2, :cond_0

    .line 229
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 230
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v7

    invoke-virtual {v7}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 232
    .local v0, ac:Landroid/accounts/Account;
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 234
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v7, "account_t_token"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, token:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 237
    const/4 v3, 0x0

    .line 239
    .local v3, authStarted:Z
    :try_start_0
    iget-object v7, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 244
    :goto_1
    if-nez v3, :cond_0

    .line 246
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v4, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "finish"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const/4 v7, 0x2

    invoke-virtual {v1, v4, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 240
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005b -> :sswitch_0
        0x7f09005f -> :sswitch_2
        0x7f090063 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v4}, Lco/vine/android/PostFragment;->setHasOptionsMenu(Z)V

    .line 81
    new-instance v0, Lcom/twitter/android/sdk/Twitter;

    sget-object v1, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 82
    new-instance v0, Lco/vine/android/PostFragment$PostSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/PostFragment$PostSessionListener;-><init>(Lco/vine/android/PostFragment;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 83
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700e1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    .line 85
    sget-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 188
    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    const v1, 0x7f03001e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, v:Landroid/view/View;
    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    .line 169
    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    .line 170
    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    .line 171
    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    .line 172
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    .line 173
    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    .line 174
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostToFacebookText:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 177
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V

    .line 91
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/PostFragment;->captionLength()I

    move-result v1

    const/16 v2, 0x78

    if-gt v1, v2, :cond_3

    .line 101
    iget-object v1, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 102
    .local v0, text:Landroid/text/Editable;
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v1}, Lco/vine/android/PostFragment;->saveToCameraRoll(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v5, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-static {v3, v4, v1, v5, v6}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    :goto_3
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_1
    const-string v1, ""

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 113
    .end local v0           #text:Landroid/text/Editable;
    :cond_3
    sget-object v1, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f0900a6
        :pswitch_0
    .end packed-switch
.end method
