.class Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
.super Ljava/util/TimerTask;
.source "SdkVideoTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/SdkVideoTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkVideoTimerTask"
.end annotation


# instance fields
.field private final mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 46
    iget-object v5, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    invoke-interface {v5}, Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;->getCurrentVideoView()Lco/vine/android/player/SdkVideoView;

    move-result-object v4

    .line 47
    .local v4, view:Lco/vine/android/player/SdkVideoView;
    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getDuration()I

    move-result v1

    .line 51
    .local v1, duration:I
    if-gez v1, :cond_1

    .line 87
    .end local v1           #duration:I
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v1       #duration:I
    :cond_1
    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v0

    .line 55
    .local v0, current:I
    if-lez v0, :cond_0

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v5

    sub-int v5, v1, v5

    const/16 v6, 0xfa

    if-ge v5, v6, :cond_0

    .line 56
    const-string v5, "Restart."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;

    new-instance v6, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;

    invoke-direct {v6, p0}, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;-><init>(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    if-eqz v4, :cond_0

    .line 69
    :try_start_1
    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 70
    .local v3, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 73
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 75
    .end local v3           #mediaPlayer:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 82
    .end local v0           #current:I
    .end local v1           #duration:I
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
