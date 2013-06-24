.class public Lco/vine/android/player/OnListVideoClickListener;
.super Ljava/lang/Object;
.source "OnListVideoClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

.field private mPosition:I


# direct methods
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 19
    iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    iget v2, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lco/vine/android/player/HasVideoPlayerAdapter;->getPlayer(IZ)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    .line 20
    .local v0, player:Lco/vine/android/player/SdkVideoView;
    iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 21
    iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->stopCurrentPlayer()V

    .line 23
    :cond_0
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    iget v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPlayingPosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 25
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->resume()V

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    iget v2, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I

    invoke-interface {v1, v2}, Lco/vine/android/player/HasVideoPlayerAdapter;->play(I)V

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 37
    iput p1, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I

    .line 38
    return-void
.end method
