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
    .line 37
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 43
    iget-object v4, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;

    invoke-interface {v4}, Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;->getCurrentVideoView()Lco/vine/android/player/SdkVideoView;

    move-result-object v3

    .line 44
    .local v3, view:Lco/vine/android/player/SdkVideoView;
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getDuration()I

    move-result v1

    .line 48
    .local v1, duration:I
    :try_start_0
    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v0

    .line 49
    .local v0, current:I
    if-lez v0, :cond_0

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v4

    sub-int v4, v1, v4

    const/16 v5, 0xfa

    if-ge v4, v5, :cond_0

    .line 50
    const-string v4, "Restart."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;

    new-instance v5, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;

    invoke-direct {v5, p0}, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;-><init>(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    .line 63
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 66
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #current:I
    .end local v1           #duration:I
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v1       #duration:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method
