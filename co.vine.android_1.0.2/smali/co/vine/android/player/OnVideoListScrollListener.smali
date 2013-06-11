.class public Lco/vine/android/player/OnVideoListScrollListener;
.super Ljava/lang/Object;
.source "OnVideoListScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final adapter:Lco/vine/android/player/HasVideoPlayerAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 27
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 19
    monitor-enter p0

    if-nez p2, :cond_0

    .line 20
    :try_start_0
    iget-object v0, p0, Lco/vine/android/player/OnVideoListScrollListener;->adapter:Lco/vine/android/player/HasVideoPlayerAdapter;

    invoke-interface {v0}, Lco/vine/android/player/HasVideoPlayerAdapter;->playCurrentPosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
