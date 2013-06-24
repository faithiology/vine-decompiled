.class Lco/vine/android/widget/FeedAdapter$3;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;

.field final synthetic val$view:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$3;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$3;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 493
    const-string v0, "Got error, try recycling it more aggressively: {}, {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$3;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$3;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
    invoke-static {v1}, Lco/vine/android/widget/FeedAdapter;->access$400(Lco/vine/android/widget/FeedAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lco/vine/android/widget/FeedAdapter;->maxPlayer:I
    invoke-static {v0, v1}, Lco/vine/android/widget/FeedAdapter;->access$302(Lco/vine/android/widget/FeedAdapter;I)I

    .line 495
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$3;->this$0:Lco/vine/android/widget/FeedAdapter;

    #setter for: Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z
    invoke-static {v0, v3}, Lco/vine/android/widget/FeedAdapter;->access$502(Lco/vine/android/widget/FeedAdapter;Z)Z

    .line 496
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$3;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$3;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 497
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$3;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->retryOpenVideo()V

    .line 498
    return v3
.end method
