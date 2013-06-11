.class public Lco/vine/android/player/OnSingleVideoClickedListener;
.super Ljava/lang/Object;
.source "OnSingleVideoClickedListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mViewPlayer:Lco/vine/android/player/SdkVideoView;


# direct methods
.method public constructor <init>(Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter "videoPlayer"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mViewPlayer:Lco/vine/android/player/SdkVideoView;

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 19
    iget-object v0, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mViewPlayer:Lco/vine/android/player/SdkVideoView;

    .line 20
    .local v0, player:Lco/vine/android/player/SdkVideoView;
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const-string v1, "Change player state."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->resume()V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "Ignore because it is not in playing state."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
