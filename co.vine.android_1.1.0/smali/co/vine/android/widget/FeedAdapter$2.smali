.class Lco/vine/android/widget/FeedAdapter$2;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 487
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$2;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$2;->val$tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onLoadFinish(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 488
    return-void
.end method
