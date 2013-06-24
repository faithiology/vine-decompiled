.class Lco/vine/android/player/SdkVideoView$1;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 296
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 298
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$002(Lco/vine/android/player/SdkVideoView;I)I

    .line 299
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$102(Lco/vine/android/player/SdkVideoView;I)I

    .line 300
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoWidth:I
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mVideoHeight:I
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->requestLayout()V

    .line 304
    :cond_0
    return-void
.end method
