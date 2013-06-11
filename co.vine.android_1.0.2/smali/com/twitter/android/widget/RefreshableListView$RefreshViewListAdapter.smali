.class Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "RefreshableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/android/widget/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshViewListAdapter"
.end annotation


# instance fields
.field private final mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "adapter"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            "Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, headerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p3, footerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    .line 920
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 921
    iput-object p5, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    .line 922
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->registerDataSetObserver()V

    .line 923
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    iget v0, v0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    if-nez p1, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 962
    :goto_0
    return-object v0

    .line 959
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 962
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    if-nez p1, :cond_0

    .line 969
    const-wide/16 v0, 0x0

    .line 974
    :goto_0
    return-wide v0

    .line 971
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 974
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    if-nez p1, :cond_0

    .line 993
    const/4 v0, -0x1

    .line 998
    :goto_0
    return v0

    .line 995
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 998
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method getSuperCount()I
    .locals 1

    .prologue
    .line 947
    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    if-nez p1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 986
    :goto_0
    return-object v0

    .line 983
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 986
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 939
    :goto_0
    return v0

    .line 937
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 939
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final registerDataSetObserver()V
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z

    .line 1007
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 928
    return-void
.end method

.method public final unregisterDataSetObserver()V
    .locals 1

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-super {p0, v0}, Landroid/widget/HeaderViewListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mRegistered:Z

    .line 1014
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 933
    return-void
.end method
