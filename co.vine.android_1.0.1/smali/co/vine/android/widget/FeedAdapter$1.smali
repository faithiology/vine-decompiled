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
    .locals 8

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lco/vine/android/widget/FeedAdapter;->access$000(Lco/vine/android/widget/FeedAdapter;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 134
    .local v0, currentFirst:I
    const/4 v2, 0x0

    .line 135
    .local v2, offset:I
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
    invoke-static {v4}, Lco/vine/android/widget/FeedAdapter;->access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
    invoke-static {v4}, Lco/vine/android/widget/FeedAdapter;->access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-interface {v4, v5}, Lco/vine/android/ViewOffsetResolver;->getOffset(Landroid/widget/BaseAdapter;)I

    move-result v2

    .line 138
    :cond_0
    sub-int/2addr v0, v2

    .line 139
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v4, v0}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 140
    .local v1, currentView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 156
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 144
    .local v3, ratio:F
    const-string v4, "Current First: {}, ratio: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 146
    :cond_3
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v4}, Lco/vine/android/widget/FeedAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 147
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v5}, Lco/vine/android/widget/FeedAdapter;->access$200(Lco/vine/android/widget/FeedAdapter;)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 148
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lco/vine/android/widget/FeedAdapter;->play(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #currentFirst:I
    .end local v1           #currentView:Landroid/view/View;
    .end local v2           #offset:I
    .end local v3           #ratio:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 152
    .restart local v0       #currentFirst:I
    .restart local v1       #currentView:Landroid/view/View;
    .restart local v2       #offset:I
    .restart local v3       #ratio:F
    :cond_4
    :try_start_2
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    #getter for: Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I
    invoke-static {v4}, Lco/vine/android/widget/FeedAdapter;->access$200(Lco/vine/android/widget/FeedAdapter;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 153
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter$1;->this$0:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v4, v0}, Lco/vine/android/widget/FeedAdapter;->play(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
