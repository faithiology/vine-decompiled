.class Lco/vine/android/player/SdkVideoView$4;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 370
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 372
    const-string v1, "Error: {}, {}, {}."

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-static {v1, v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    iput v5, v1, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 374
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1, v5}, Lco/vine/android/player/SdkVideoView;->access$1102(Lco/vine/android/player/SdkVideoView;I)I

    .line 375
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$1302(Lco/vine/android/player/SdkVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    .line 381
    :cond_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1400(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1400(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    :cond_1
    :goto_0
    return v6

    .line 392
    :cond_2
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 394
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    .line 395
    const-string v0, "This video cannot be played due to invalid progressive playback."

    .line 399
    .local v0, messageId:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1500(Lco/vine/android/player/SdkVideoView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 397
    .end local v0           #messageId:Ljava/lang/String;
    :cond_3
    const-string v0, "This video cannot be played due to an unknown error."

    .restart local v0       #messageId:Ljava/lang/String;
    goto :goto_1
.end method
