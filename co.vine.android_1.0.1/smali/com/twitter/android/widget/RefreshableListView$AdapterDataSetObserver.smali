.class Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RefreshableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/android/widget/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    .line 1051
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    .line 1056
    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1059
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1062
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->requestLayout()V

    .line 1064
    return-void

    .line 1062
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    .line 1069
    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1070
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1073
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->requestLayout()V

    .line 1075
    return-void

    .line 1073
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1083
    return-void
.end method
