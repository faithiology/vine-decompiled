.class public Lco/vine/android/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ImagePicker$Listener;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x3

.field public static final REQUEST_CODE_CROP:I = 0x2

.field public static final REQUEST_CODE_TAKE_PHOTO:I = 0x1


# instance fields
.field private mActiveUserId:J

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lco/vine/android/ImagePicker$Listener;

.field private mSavedImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V
    .locals 0
    .parameter "activity"
    .parameter "listener"
    .parameter "activeUserId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    .line 35
    iput-wide p3, p0, Lco/vine/android/ImagePicker;->mActiveUserId:J

    .line 36
    iput-object p2, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ImagePicker;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public captureImage()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 40
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 41
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    iget-wide v8, p0, Lco/vine/android/ImagePicker;->mActiveUserId:J

    invoke-static {v7, v10, v8, v9}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v4

    .line 43
    .local v4, profileFile:Ljava/io/File;
    if-eqz v4, :cond_0

    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 45
    :cond_0
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const v8, 0x7f070047

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 64
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const v8, 0x7f070048

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, profile:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v7, "description"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 54
    .local v5, uri:Landroid/net/Uri;
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;

    invoke-interface {v7, v5}, Lco/vine/android/ImagePicker$Listener;->setProfileUri(Landroid/net/Uri;)V

    .line 55
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "output"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, i:Landroid/content/Intent;
    :try_start_0
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, ignored:Landroid/content/ActivityNotFoundException;
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const v8, 0x7f070049

    invoke-static {v7, v8}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 61
    invoke-static {v5}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    .line 62
    iget-object v7, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lco/vine/android/ImagePicker$Listener;->setProfileUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public chooseImage()V
    .locals 4

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, ignored:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070049

    invoke-static {v2, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getSavedImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveProfileImage(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bm"

    .prologue
    .line 81
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const-string v6, "twitter_profile.jpg"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v3, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 87
    .local v1, compressed:[B
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 89
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 90
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;

    .line 91
    const-string v5, "Pending Uri for profile photo is {}."

    iget-object v6, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;

    new-instance v6, Lco/vine/android/ImagePicker$1;

    invoke-direct {v6, p0}, Lco/vine/android/ImagePicker$1;-><init>(Lco/vine/android/ImagePicker;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
