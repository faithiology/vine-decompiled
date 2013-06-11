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
    .line 352
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 354
    invoke-static {}, Lco/vine/android/player/SdkVideoView;->access$1300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    iput v4, v1, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 356
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1, v4}, Lco/vine/android/player/SdkVideoView;->access$1102(Lco/vine/android/player/SdkVideoView;I)I

    .line 357
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$1402(Lco/vine/android/player/SdkVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    .line 363
    :cond_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    :cond_1
    :goto_0
    return v5

    .line 374
    :cond_2
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 377
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    .line 378
    const-string v0, "VideoView_error_text_invalid_progressive_playback"

    .line 383
    .local v0, messageId:Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$1600(Lco/vine/android/player/SdkVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Error"

    new-instance v3, Lco/vine/android/player/SdkVideoView$4$1;

    invoke-direct {v3, p0}, Lco/vine/android/player/SdkVideoView$4$1;-><init>(Lco/vine/android/player/SdkVideoView$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 380
    .end local v0           #messageId:Ljava/lang/String;
    :cond_3
    const-string v0, "VideoView_error_text_unknown"

    .restart local v0       #messageId:Ljava/lang/String;
    goto :goto_1
.end method
