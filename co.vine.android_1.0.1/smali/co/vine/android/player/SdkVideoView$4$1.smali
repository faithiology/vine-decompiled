.class Lco/vine/android/player/SdkVideoView$4$1;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/player/SdkVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/player/SdkVideoView$4;


# direct methods
.method constructor <init>(Lco/vine/android/player/SdkVideoView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$4$1;->this$1:Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 391
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$4$1;->this$1:Lco/vine/android/player/SdkVideoView$4;

    iget-object v0, v0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$1200(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$4$1;->this$1:Lco/vine/android/player/SdkVideoView$4;

    iget-object v0, v0, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$1200(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$4$1;->this$1:Lco/vine/android/player/SdkVideoView$4;

    iget-object v1, v1, Lco/vine/android/player/SdkVideoView$4;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 394
    :cond_0
    return-void
.end method
