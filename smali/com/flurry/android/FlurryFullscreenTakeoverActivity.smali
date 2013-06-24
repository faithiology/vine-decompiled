.class public final Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final EXTRA_KEY_ADSPACENAME:Ljava/lang/String; = "adSpaceName"

.field public static final EXTRA_KEY_FRAMEINDEX:Ljava/lang/String; = "frameIndex"

.field public static final EXTRA_KEY_TARGETINTENT:Ljava/lang/String; = "targetIntent"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "url"

.field private static final d:Ljava/lang/String;


# instance fields
.field private A:Lcom/flurry/android/cl;

.field private B:Landroid/app/ProgressDialog;

.field private C:Landroid/widget/VideoView;

.field private D:Z

.field private E:Landroid/widget/MediaController;

.field private F:Z

.field private G:Landroid/content/Intent;

.field private H:Ljava/lang/String;

.field private y:Lcom/flurry/android/bn;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 457
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->D:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 308
    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 314
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->E:Landroid/widget/MediaController;

    .line 324
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 325
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 326
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 327
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->E:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 328
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 330
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    .line 335
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 336
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 338
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 340
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/flurry/android/cl;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 350
    :cond_0
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0, v3}, Lcom/flurry/android/cl;->setVisibility(I)V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 366
    :cond_4
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    .line 369
    :cond_5
    iput-boolean v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->D:Z

    .line 370
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->E:Landroid/widget/MediaController;

    .line 371
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 61
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setTheme(I)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/x;->a(Landroid/view/Window;)V

    .line 67
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    const-string v0, "targetIntent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    .line 69
    const-string v0, "adSpaceName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->H:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/FlurryAds;->b(Ljava/lang/String;Z)V

    .line 125
    :cond_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Ljava/lang/String;

    const-string v2, "Cannot launch Activity"

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_6

    .line 84
    if-nez p1, :cond_5

    .line 85
    :goto_2
    if-gez v5, :cond_3

    .line 87
    const-string v0, "frameIndex"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 89
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/flurry/android/FlurryAds;->X()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/flurry/android/bn;

    invoke-virtual {v2}, Lcom/flurry/android/FlurryAds;->W()Lcom/flurry/android/cz;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/android/FlurryAds;->X()Lcom/flurry/android/AdUnit;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/bn;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;I)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    .line 92
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    invoke-virtual {v0, p0}, Lcom/flurry/android/bn;->initLayout(Landroid/content/Context;)V

    .line 93
    if-nez v5, :cond_4

    .line 95
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_5
    const-string v0, "frameIndex"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    .line 104
    :cond_6
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    .line 105
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 107
    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 108
    new-instance v1, Lcom/flurry/android/ce;

    invoke-direct {v1, p0}, Lcom/flurry/android/ce;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    .line 109
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_7
    new-instance v1, Lcom/flurry/android/cl;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/cl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    .line 112
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    new-instance v1, Lcom/flurry/android/f;

    invoke-direct {v1, p0}, Lcom/flurry/android/f;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cl;->a(Lcom/flurry/android/f;)V

    .line 113
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    new-instance v1, Lcom/flurry/android/y;

    invoke-direct {v1, p0}, Lcom/flurry/android/y;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cl;->a(Lcom/flurry/android/y;)V

    .line 114
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    new-instance v1, Lcom/flurry/android/bh;

    invoke-direct {v1, p0}, Lcom/flurry/android/bh;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/cl;->a(Lcom/flurry/android/bh;)V

    .line 116
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    move v0, v6

    .line 123
    goto/16 :goto_1
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e()V

    .line 195
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->destroy()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    invoke-virtual {v0}, Lcom/flurry/android/bn;->stop()V

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->j(Ljava/lang/String;)V

    .line 210
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Ljava/lang/String;

    const-string v1, "error occurs during video playback"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_2

    .line 269
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->D:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->goBack()V

    .line 272
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e()V

    .line 283
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 232
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    iget-object v3, v3, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    iget-object v4, v4, Lcom/flurry/android/bn;->L:Lcom/flurry/android/cz;

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    iget v5, v5, Lcom/flurry/android/bn;->N:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V

    move v0, v7

    .line 258
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_3

    .line 239
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->D:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->goBack()V

    .line 242
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e()V

    move v0, v7

    .line 243
    goto :goto_0

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e()V

    move v0, v7

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->A:Lcom/flurry/android/cl;

    invoke-virtual {v0}, Lcom/flurry/android/cl;->goBack()V

    move v0, v7

    .line 253
    goto :goto_0

    .line 258
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->F:Z

    .line 186
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 190
    :cond_0
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->F:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 305
    :cond_1
    return-void
.end method

.method protected final onRestart()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 168
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->F:Z

    .line 175
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->E:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->E:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "frameIndex"

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->y:Lcom/flurry/android/bn;

    iget v1, v1, Lcom/flurry/android/bn;->N:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 132
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 145
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->F:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->G:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 224
    return-void
.end method
