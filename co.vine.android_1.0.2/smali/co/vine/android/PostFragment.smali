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

.field private mPostToTwitterText:Landroid/widget/TextView;

.field private mPostTwitter:Landroid/widget/Switch;

.field private mPostVine:Landroid/widget/Switch;

.field private mPreviewPath:Ljava/lang/String;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/PostFragment;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    return-object v0
.end method

.method private captionLength()I
    .locals 1

    .prologue
    .line 112
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
    .line 226
    invoke-static {p0}, Lco/vine/android/BaseFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "vid_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "pic_path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "preview_path"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v0
.end method

.method private saveToCameraRoll(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 137
    const-string v3, "Saving to camera roll."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, actualFile:Ljava/io/File;
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lco/vine/android/recorder/RecordConfigUtils;->getCameraRollFile(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, finalName:Ljava/io/File;
    if-nez v1, :cond_0

    .line 141
    const-string v3, "Failed to find directory."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
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

    .line 145
    .local v2, pathToScan:Ljava/lang/String;
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string v3, "Renamed to finale position! {}, BC to {}."

    invoke-static {v3, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 149
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
    .line 117
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "pic_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, thumbnailPath:Ljava/lang/String;
    const-string v4, "vid_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 122
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null video path."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    const-string v4, "preview_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    .line 125
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v4, Lco/vine/android/util/UploadManager;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lco/vine/android/util/UploadManager;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/vine/android/util/UploadManager;->getPostInfo(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;

    move-result-object v2

    .line 129
    .local v2, postInfo:Lco/vine/android/util/UploadManager$PostInfo;
    if-eqz v2, :cond_1

    .line 130
    iget-object v4, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    iget-object v5, v2, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
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

    .line 134
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 265
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    :goto_0
    return-void

    .line 237
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 238
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, username:Ljava/lang/String;
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, token:Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, secret:Ljava/lang/String;
    const-string v0, "user_id"

    invoke-virtual {p3, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 242
    .local v5, userId:J
    iget-object v0, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 245
    .end local v2           #username:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #secret:Ljava/lang/String;
    .end local v5           #userId:J
    :cond_0
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 250
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 251
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .restart local v2       #username:Ljava/lang/String;
    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3       #token:Ljava/lang/String;
    const-string v0, "secret"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .restart local v4       #secret:Ljava/lang/String;
    const-string v0, "user_id"

    invoke-virtual {p3, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 256
    .restart local v5       #userId:J
    iget-object v0, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->connectTwitter(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 260
    .end local v2           #username:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #secret:Ljava/lang/String;
    .end local v5           #userId:J
    :cond_1
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "compoundButton"
    .parameter "checked"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 182
    :sswitch_0
    if-nez p2, :cond_1

    .line 183
    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 194
    iget-object v6, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 195
    :cond_2
    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 197
    .local v1, activity:Landroid/app/Activity;
    iget-object v6, p0, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v6}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 199
    .local v0, ac:Landroid/accounts/Account;
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 201
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v6, "account_t_token"

    invoke-virtual {v2, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, token:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const/4 v3, 0x0

    .line 206
    .local v3, authStarted:Z
    :try_start_0
    iget-object v6, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 211
    :goto_1
    if-nez v3, :cond_0

    .line 213
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "finish"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const/4 v6, 0x2

    invoke-virtual {v1, v4, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 207
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x7f090052 -> :sswitch_0
        0x7f090056 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v4}, Lco/vine/android/PostFragment;->setHasOptionsMenu(Z)V

    .line 72
    new-instance v0, Lcom/twitter/android/sdk/Twitter;

    sget-object v1, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 73
    new-instance v0, Lco/vine/android/PostFragment$PostSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/PostFragment$PostSessionListener;-><init>(Lco/vine/android/PostFragment;)V

    iput-object v0, p0, Lco/vine/android/PostFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 74
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800cc

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    .line 76
    sget-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 175
    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
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

    .line 157
    const v1, 0x7f03001d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, v:Landroid/view/View;
    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    .line 159
    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    .line 160
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mImagePreview:Landroid/widget/ImageView;

    .line 161
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    .line 162
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/PostFragment;->mPostToTwitterText:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 168
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V

    .line 82
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 91
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/PostFragment;->captionLength()I

    move-result v0

    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/PostFragment;->mPreviewPath:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lco/vine/android/PostFragment;->saveToCameraRoll(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lco/vine/android/PostFragment;->mPostVine:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lco/vine/android/PostFragment;->mCaption:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    :goto_2
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/PostFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 103
    :cond_2
    sget-object v0, Lco/vine/android/PostFragment;->mToastLengthExceeded:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008f
        :pswitch_0
    .end packed-switch
.end method
