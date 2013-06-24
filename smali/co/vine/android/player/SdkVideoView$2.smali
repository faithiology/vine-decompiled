.class Lco/vine/android/player/SdkVideoView$2;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 307
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 309
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    const/4 v2, 0x2

    iput v2, v1, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 310
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mCanSeekForward:Z
    invoke-static {v3, v4}, Lco/vine/android/player/SdkVideoView;->access$402(Lco/vine/android/player/SdkVideoView;Z)Z

    move-result v3

    #setter for: Lco/vine/android/player/SdkVideoView;->mCanSeekBack:Z
    invoke-static {v2, v3}, Lco/vine/android/player/SdkVideoView;->access$302(Lco/vine/android/player/SdkVideoView;Z)Z

    move-result v2

    #setter for: Lco/vine/android/player/SdkVideoView;->mCanPause:Z
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$202(Lco/vine/android/player/SdkVideoView;Z)Z

    .line 312
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 318
    :cond_1
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$002(Lco/vine/android/player/SdkVideoView;I)I

    .line 319
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$102(Lco/vine/android/player/SdkVideoView;I)I

    .line 321
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    .line 322
    .local v0, seekToPosition:I
    if-eqz v0, :cond_2

    .line 323
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1, v0}, Lco/vine/android/player/SdkVideoView;->seekTo(I)V

    .line 325
    :cond_2
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$900(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1000(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 332
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1100(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 333
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 334
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 352
    :cond_3
    :goto_0
    return-void

    .line 337
    :cond_4
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 339
    :cond_5
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 348
    :cond_6
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1100(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 349
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->start()V

    goto :goto_0
.end method
