.class Lco/vine/android/player/SdkVideoView$5;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 404
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 406
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lco/vine/android/player/SdkVideoView;->access$1702(Lco/vine/android/player/SdkVideoView;I)I

    .line 407
    return-void
.end method
