.class Lco/vine/android/widget/FeedAdapter$1;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 11

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v7}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 134
    .local v1, currentFirst:I
    const/4 v5, 0x0

    .line 135
    .local v5, offset:I
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
    invoke-static {v7}, Lco/vine/android/widget/FeedAdapter;->access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 136
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
    invoke-static {v7}, Lco/vine/android/widget/FeedAdapter;->access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;

    move-result-object v7

    iget-object v8, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-interface {v7, v8}, Lco/vine/android/ViewOffsetResolver;->getOffset(Landroid/widget/BaseAdapter;)I

    move-result v5

    .line 138
    :cond_0
    sub-int/2addr v1, v5

    .line 139
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v7, v1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 140
    .local v2, currentView:Landroid/view/View;
    if-nez v2, :cond_2

    .line 164
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_2
    const/4 v3, 0x0

    .line 145
    .local v3, currentlyPlayingOffset:I
    :try_start_1
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v7}, Lco/vine/android/widget/FeedAdapter;->getCurrentVideoView()Lco/vine/android/player/SdkVideoView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 146
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v7}, Lco/vine/android/widget/FeedAdapter;->getCurrentVideoView()Lco/vine/android/player/SdkVideoView;

    move-result-object v7

    invoke-virtual {v7}, Lco/vine/android/player/SdkVideoView;->getHeight()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 147
    const-string v7, "currentlyPlayingOffset={}"

    iget-object v8, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v8}, Lco/vine/android/widget/FeedAdapter;->getCurrentVideoView()Lco/vine/android/player/SdkVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lco/vine/android/player/SdkVideoView;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    add-float v0, v7, v8

    .line 150
    .local v0, bottom:F
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v3

    add-float v4, v7, v8

    .line 151
    .local v4, height:F
    div-float v6, v0, v4

    .line 152
    .local v6, ratio:F
    const-string v7, "Current First: {}, ratio: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    float-to-double v7, v6

    const-wide/high16 v9, 0x3fe0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_4

    const/4 v7, -0x1

    if-ne v1, v7, :cond_5

    .line 154
    :cond_4
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v7}, Lco/vine/android/widget/FeedAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1

    .line 155
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v8}, Lco/vine/android/widget/FeedAdapter;->access$200(Lco/vine/android/widget/FeedAdapter;)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 156
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lco/vine/android/widget/FeedAdapter;->play(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #bottom:F
    .end local v1           #currentFirst:I
    .end local v2           #currentView:Landroid/view/View;
    .end local v3           #currentlyPlayingOffset:I
    .end local v4           #height:F
    .end local v5           #offset:I
    .end local v6           #ratio:F
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 160
    .restart local v0       #bottom:F
    .restart local v1       #currentFirst:I
    .restart local v2       #currentView:Landroid/view/View;
    .restart local v3       #currentlyPlayingOffset:I
    .restart local v4       #height:F
    .restart local v5       #offset:I
    .restart local v6       #ratio:F
    :cond_5
    :try_start_2
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v7}, Lco/vine/android/widget/FeedAdapter;->access$200(Lco/vine/android/widget/FeedAdapter;)I

    move-result v7

    if-eq v1, v7, :cond_1

    .line 161
    iget-object v7, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v7, v1}, Lco/vine/android/widget/FeedAdapter;->play(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
