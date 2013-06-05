.class Lco/vine/android/player/SdkVideoView$6;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/SdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 455
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #setter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
    invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$1802(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 456
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/player/SdkVideoView;->openVideo()V
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$1900(Lco/vine/android/player/SdkVideoView;)V

    .line 457
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surface"

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
    invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$1802(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 477
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 478
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/player/SdkVideoView;->release(Z)V
    invoke-static {v0, v2}, Lco/vine/android/player/SdkVideoView;->access$2000(Lco/vine/android/player/SdkVideoView;Z)V

    .line 479
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 461
    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I
    invoke-static {v4, p2}, Lco/vine/android/player/SdkVideoView;->access$902(Lco/vine/android/player/SdkVideoView;I)I

    .line 462
    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I
    invoke-static {v4, p3}, Lco/vine/android/player/SdkVideoView;->access$1002(Lco/vine/android/player/SdkVideoView;I)I

    .line 463
    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v4}, Lco/vine/android/player/SdkVideoView;->access$1100(Lco/vine/android/player/SdkVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 464
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v4}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)I

    move-result v4

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v4}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    move v0, v2

    .line 465
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 466
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lco/vine/android/player/SdkVideoView;->seekTo(I)V

    .line 469
    :cond_0
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 471
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 463
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 464
    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 484
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #setter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;
    invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$1802(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 485
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$1100(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 486
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->seekTo(I)V

    .line 489
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 491
    :cond_1
    return-void
.end method
