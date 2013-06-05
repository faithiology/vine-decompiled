.class public final Lcom/twitter/android/widget/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"

# interfaces
.implements Lcom/twitter/android/widget/TopScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/android/widget/RefreshableListView$SavedState;,
        Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;,
        Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;,
        Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;,
        Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;
    }
.end annotation


# static fields
.field static final MODE_ADDED:I = 0x1

.field static final MODE_ATTACHED:I = 0x2

.field static final MODE_POPPED:I = 0x10

.field static final MODE_REFRESHING:I = 0x22

.field static final MODE_REFRESH_STARTED:I = 0x20

.field static final MODE_SCROLLING:I = 0x8

.field static final MODE_SLOP:I = 0x40

.field static final MODE_TRACKING:I = 0x4

.field private static final SMOOTH_SCROLL_MAX_POSITION:I = 0xf


# instance fields
.field private mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

.field private mAttachedToWindow:Z

.field private mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

.field private mDownY:I

.field private final mFooterLayoutId:I

.field private mFooterView:Landroid/view/View;

.field private final mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field private final mLoading:Landroid/widget/ImageView;

.field private mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

.field private mMode:I

.field private mMoveY:I

.field private final mPixelScale:F

.field private final mPullBackgroundColor:I

.field private mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

.field private final mRefreshTriangle1:Landroid/widget/ImageView;

.field private final mRefreshTriangle2:Landroid/widget/ImageView;

.field private final mRefreshTriangle3:Landroid/widget/ImageView;

.field final mRefreshView:Landroid/widget/RelativeLayout;

.field private final mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

.field final mScroller:Landroid/widget/Scroller;

.field private mTopPos:I

.field private final mTouchSlop:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    sget v0, Lcom/twitter/android/R$attr;->refreshableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 108
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 121
    sget-object v8, Lcom/twitter/android/R$styleable;->RefreshableListView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mPixelScale:F

    .line 126
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    .line 129
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/widget/Scroller;

    invoke-direct {v8, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mScroller:Landroid/widget/Scroller;

    .line 132
    new-instance v8, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-direct {v8, p0}, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 135
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 136
    .local v5, layout:I
    const/4 v8, 0x0

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 138
    .local v7, v:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    .line 139
    sget v8, Lcom/twitter/android/R$id;->refresh_divider:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, dividerView:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v3           #dividerView:Landroid/view/View;
    :cond_0
    sget v8, Lcom/twitter/android/R$id;->refresh_loading:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    .line 146
    sget v8, Lcom/twitter/android/R$id;->refresh_triangle_1:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    .line 147
    sget v8, Lcom/twitter/android/R$id;->refresh_triangle_2:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle2:Landroid/widget/ImageView;

    .line 148
    sget v8, Lcom/twitter/android/R$id;->refresh_triangle_3:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle3:Landroid/widget/ImageView;

    .line 150
    iput-object v7, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 153
    .local v1, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    .line 156
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 157
    .local v6, p:Landroid/view/ViewGroup$LayoutParams;
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterLayoutId:I

    .line 161
    new-instance v8, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    iget-object v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    invoke-direct {v8, p0, v9}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;-><init>(Lcom/twitter/android/widget/RefreshableListView;Landroid/widget/ImageView;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 232
    .local v2, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v0, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 233
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 234
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 235
    iget-object v4, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    iget v7, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v8, -0x2

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 240
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/widget/ListView$FixedViewInfo;
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private isRefreshable()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startScroll(I)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 538
    if-lez p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->scroll(I)V

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 637
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 638
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 639
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 640
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v0           #info:Landroid/widget/ListView$FixedViewInfo;
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 611
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 612
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 613
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 614
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v0           #info:Landroid/widget/ListView$FixedViewInfo;
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method attach(I)V
    .locals 17
    .parameter "y"

    .prologue
    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 722
    .local v12, refreshView:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 723
    .local v11, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v1

    .line 725
    .local v1, addedOnce:Z
    if-eqz v1, :cond_1

    .line 726
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v11}, Lcom/twitter/android/widget/RefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 732
    :goto_0
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    .line 734
    if-eqz v1, :cond_0

    invoke-virtual {v12}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    const/4 v10, 0x1

    .line 736
    .local v10, needToMeasure:Z
    :goto_1
    if-eqz v10, :cond_4

    .line 737
    move-object/from16 v0, p0

    iget v14, v0, Lcom/twitter/android/widget/RefreshableListView;->mWidthMeasureSpec:I

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 739
    .local v6, childWidthSpec:I
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 741
    .local v9, lpHeight:I
    if-lez v9, :cond_3

    .line 742
    const/high16 v14, 0x4000

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 746
    .local v3, childHeightSpec:I
    :goto_2
    invoke-virtual {v12, v6, v3}, Landroid/view/View;->measure(II)V

    .line 751
    .end local v3           #childHeightSpec:I
    .end local v6           #childWidthSpec:I
    .end local v9           #lpHeight:I
    :goto_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 752
    .local v13, w:I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 753
    .local v8, h:I
    sub-int v5, p1, v8

    .line 754
    .local v5, childTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v7

    .line 756
    .local v7, childrenLeft:I
    if-eqz v10, :cond_5

    .line 757
    add-int v4, v7, v13

    .line 758
    .local v4, childRight:I
    add-int v2, v5, v8

    .line 759
    .local v2, childBottom:I
    invoke-virtual {v12, v7, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 765
    .end local v2           #childBottom:I
    .end local v4           #childRight:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v14}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    .line 766
    return-void

    .line 728
    .end local v5           #childTop:I
    .end local v7           #childrenLeft:I
    .end local v8           #h:I
    .end local v10           #needToMeasure:Z
    .end local v13           #w:I
    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v11, v15}, Lcom/twitter/android/widget/RefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 729
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    goto :goto_0

    .line 734
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 744
    .restart local v6       #childWidthSpec:I
    .restart local v9       #lpHeight:I
    .restart local v10       #needToMeasure:Z
    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3       #childHeightSpec:I
    goto :goto_2

    .line 748
    .end local v3           #childHeightSpec:I
    .end local v6           #childWidthSpec:I
    .end local v9           #lpHeight:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/twitter/android/widget/RefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_3

    .line 761
    .restart local v5       #childTop:I
    .restart local v7       #childrenLeft:I
    .restart local v8       #h:I
    .restart local v13       #w:I
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v12, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 762
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v14, v5, v14

    invoke-virtual {v12, v14}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 659
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    .line 660
    .local v0, childCount:I
    iget v7, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .line 662
    .local v1, count:I
    if-lez v1, :cond_0

    const/4 v7, 0x1

    if-lt v2, v7, :cond_0

    if-lez v0, :cond_0

    .line 663
    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 664
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 665
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 667
    .local v3, height:I
    if-lez v3, :cond_0

    .line 668
    add-int/lit8 v7, v2, -0x1

    mul-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, v4, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 675
    .end local v0           #childCount:I
    .end local v1           #count:I
    .end local v2           #firstPosition:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v6

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    iget v3, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 683
    .local v0, count:I
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    .line 684
    .local v2, scrollY:I
    mul-int/lit8 v3, v0, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 685
    .local v1, result:I
    if-eqz v2, :cond_0

    .line 687
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 691
    .end local v0           #count:I
    .end local v1           #result:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    goto :goto_0
.end method

.method detach()V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    .line 776
    :cond_0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    .line 777
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    .line 779
    :cond_1
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 784
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->detachViewsFromParent(II)V

    goto :goto_0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 651
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 629
    :goto_0
    return v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 629
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method isMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 712
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 222
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 224
    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0
.end method

.method offsetChildrenTopAndBottom(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    .line 552
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 553
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 554
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->registerDataSetObserver()V

    .line 189
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    .line 192
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 193
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->unregisterDataSetObserver()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    .line 204
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 205
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollX()I

    move-result v1

    .line 248
    .local v1, left:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 250
    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    .end local v0           #child:Landroid/view/View;
    .end local v1           #left:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 183
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 300
    :goto_0
    return v5

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 264
    .local v4, y:I
    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    sub-int v1, v4, v6

    .line 266
    .local v1, deltaY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 300
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 268
    :pswitch_1
    iput v4, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    .line 269
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1

    .line 273
    :pswitch_2
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    iput v4, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1

    .line 277
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    .line 280
    .local v0, attached:Z
    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 286
    .local v3, topChild:Landroid/view/View;
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 287
    .local v2, top:I
    :cond_3
    iput v4, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    .line 289
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v6

    if-lt v2, v6, :cond_1

    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    if-le v1, v6, :cond_1

    goto :goto_0

    .line 283
    .end local v2           #top:I
    .end local v3           #topChild:Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .restart local v3       #topChild:Landroid/view/View;
    goto :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    .line 169
    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mWidthMeasureSpec:I

    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 171
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1024
    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;

    .line 1025
    .local v0, ss:Lcom/twitter/android/widget/RefreshableListView$SavedState;
    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1026
    iget-boolean v1, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    if-eqz v1, :cond_0

    .line 1027
    iget v1, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    .line 1029
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1015
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1016
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/RefreshableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1017
    .local v0, ss:Lcom/twitter/android/widget/RefreshableListView$SavedState;
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    .line 1018
    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    iput v2, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    .line 1019
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v10

    if-nez v10, :cond_0

    .line 312
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 422
    :goto_0
    return v10

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 317
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 318
    .local v9, y:I
    iget v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    sub-int v3, v9, v10

    .line 320
    .local v3, deltaY:I
    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 322
    :pswitch_0
    iput v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    .line 323
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    .line 324
    const/16 v10, 0x40

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    goto :goto_1

    .line 329
    :pswitch_1
    const/16 v10, 0x14

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    .line 331
    const/16 v10, 0x20

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 332
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 333
    .local v7, topChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v5

    .line 335
    .local v5, firstPos:I
    if-nez v5, :cond_1

    if-eqz v7, :cond_1

    .line 336
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 337
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 338
    .local v2, bottom:I
    if-lez v6, :cond_2

    .line 340
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/twitter/android/widget/RefreshListener;->onRefreshReleased(Z)V

    .line 341
    invoke-direct {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lez v10, :cond_1

    .line 343
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/twitter/android/widget/RefreshListener;->onRefreshReleased(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    goto :goto_1

    .line 351
    .end local v2           #bottom:I
    .end local v5           #firstPos:I
    .end local v6           #top:I
    .end local v7           #topChild:Landroid/view/View;
    :pswitch_2
    const/16 v10, 0x20

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 352
    iput v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1

    .line 355
    :cond_3
    iget v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    const/high16 v11, -0x8000

    if-eq v10, v11, :cond_6

    .line 356
    iget v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    sub-int v4, v9, v10

    .line 362
    .local v4, diff:I
    :goto_2
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v1

    .line 365
    .local v1, attached:Z
    if-eqz v1, :cond_7

    .line 366
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 371
    .restart local v7       #topChild:Landroid/view/View;
    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 372
    .restart local v6       #top:I
    :goto_4
    iget v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    if-lt v9, v10, :cond_9

    const/4 v8, 0x1

    .line 374
    .local v8, up:Z
    :goto_5
    iput v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    .line 376
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v10

    if-lt v6, v10, :cond_c

    iget v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    if-le v3, v10, :cond_c

    .line 378
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 381
    const/16 v10, 0x40

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 382
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 383
    const/16 v10, 0x40

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    .line 387
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 388
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 390
    if-eqz v1, :cond_b

    .line 392
    int-to-float v10, v4

    const/high16 v11, 0x3f00

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->offsetChildrenTopAndBottom(I)V

    .line 393
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    .line 395
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-ltz v10, :cond_a

    .line 396
    if-eqz v8, :cond_5

    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 397
    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    .line 398
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    invoke-interface {v10}, Lcom/twitter/android/widget/RefreshListener;->onRefreshPulled()V

    .line 410
    :cond_5
    :goto_6
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    .line 412
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 358
    .end local v1           #attached:Z
    .end local v4           #diff:I
    .end local v6           #top:I
    .end local v7           #topChild:Landroid/view/View;
    .end local v8           #up:Z
    :cond_6
    move v4, v3

    .restart local v4       #diff:I
    goto :goto_2

    .line 368
    .restart local v1       #attached:Z
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #topChild:Landroid/view/View;
    goto :goto_3

    .line 371
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 372
    .restart local v6       #top:I
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 401
    .restart local v8       #up:Z
    :cond_a
    if-nez v8, :cond_5

    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 402
    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    .line 403
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    invoke-interface {v10}, Lcom/twitter/android/widget/RefreshListener;->onRefreshCancelled()V

    goto :goto_6

    .line 407
    :cond_b
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->attach(I)V

    goto :goto_6

    .line 414
    :cond_c
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    goto/16 :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshMore(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method requestLastChildLayout()V
    .locals 6

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 792
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottomPaddingOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 795
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 797
    .local v1, firstChild:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 799
    .local v0, before:I
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 800
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->offsetChildrenTopAndBottom(I)V

    .line 803
    .end local v0           #before:I
    .end local v1           #firstChild:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public scrollTop()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 821
    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mTopPos:I

    .line 822
    .local v2, pos:I
    const/16 v5, 0x22

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 823
    add-int/lit8 v2, v2, 0x1

    .line 825
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x7

    if-le v5, v6, :cond_4

    .line 826
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 827
    .local v1, firstPos:I
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, child:Landroid/view/View;
    if-gt v1, v2, :cond_1

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_3

    .line 832
    :cond_1
    const/16 v3, 0xf

    if-le v1, v3, :cond_2

    .line 833
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    .line 836
    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->smoothScrollToPosition(I)V

    move v3, v4

    .line 844
    .end local v0           #child:Landroid/view/View;
    .end local v1           #firstPos:I
    :cond_3
    :goto_0
    return v3

    .line 843
    :cond_4
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    move v3, v4

    .line 844
    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 575
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    if-eqz p1, :cond_3

    .line 577
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    .line 580
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 583
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterLayoutId:I

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 585
    .local v6, footerView:Landroid/view/View;
    invoke-virtual {p0, v6, v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 586
    sget v0, Lcom/twitter/android/R$id;->footer_content:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    .line 589
    .end local v6           #footerView:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;-><init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 601
    :goto_1
    return-void

    .line 594
    :cond_3
    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    .line 595
    iput v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_0

    .line 599
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 704
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    .line 705
    return-void
.end method

.method public setRefreshListener(Lcom/twitter/android/widget/RefreshListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRefreshListener must be called before addHeaderView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    if-eq p1, v0, :cond_1

    .line 569
    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    .line 571
    :cond_1
    return-void
.end method

.method public setTopPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 811
    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mTopPos:I

    .line 812
    return-void
.end method

.method public setViewYOffset(I)V
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 304
    int-to-float v1, p1

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mPixelScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 305
    .local v0, pixels:I
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 306
    return-void
.end method

.method public startRefresh()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x2

    const/4 v1, 0x4

    .line 429
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    .line 433
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->run()V

    .line 444
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method public stopRefresh()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x0

    .line 476
    iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    .line 478
    .local v5, l:Lcom/twitter/android/widget/RefreshListener;
    if-eqz v5, :cond_1

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 479
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->cancel()V

    .line 481
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 482
    .local v0, first:I
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v3

    .line 484
    .local v3, isAttached:Z
    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;

    move-result-object v2

    .line 485
    .local v2, ip:Lcom/twitter/android/widget/ItemPosition;
    iget v7, v2, Lcom/twitter/android/widget/ItemPosition;->offset:I

    .line 486
    .local v7, top:I
    iget v4, v2, Lcom/twitter/android/widget/ItemPosition;->position:I

    .line 489
    .local v4, itemPos:I
    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinished()V

    .line 492
    iget-wide v10, v2, Lcom/twitter/android/widget/ItemPosition;->itemId:J

    invoke-interface {v5, v10, v11}, Lcom/twitter/android/widget/RefreshListener;->getPositionForItemId(J)I

    move-result v6

    .line 495
    .local v6, pos:I
    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    .line 498
    if-ne v6, v4, :cond_5

    .line 499
    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinishedNoChange()V

    .line 502
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 503
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 504
    .local v1, firstChild:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    .line 505
    .local v8, topChild:I
    :goto_0
    if-eqz v3, :cond_0

    .line 506
    invoke-direct {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    .line 530
    .end local v1           #firstChild:Landroid/view/View;
    .end local v8           #topChild:I
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle2:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle3:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    .end local v0           #first:I
    .end local v2           #ip:Lcom/twitter/android/widget/ItemPosition;
    .end local v3           #isAttached:Z
    .end local v4           #itemPos:I
    .end local v6           #pos:I
    .end local v7           #top:I
    :cond_1
    return-void

    .restart local v0       #first:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #ip:Lcom/twitter/android/widget/ItemPosition;
    .restart local v3       #isAttached:Z
    .restart local v4       #itemPos:I
    .restart local v6       #pos:I
    .restart local v7       #top:I
    :cond_2
    move v8, v9

    .line 504
    goto :goto_0

    .line 510
    .end local v1           #firstChild:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    .line 516
    :goto_2
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p0, v10, v7}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 513
    :cond_4
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_2

    .line 519
    :cond_5
    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinishedNewData()V

    .line 523
    if-eqz v3, :cond_6

    .line 524
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    .line 528
    :goto_3
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10, v7}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 526
    :cond_6
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_3
.end method

.method unsetMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 708
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    .line 709
    return-void
.end method

.method updateItemCount()V
    .locals 1

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1035
    :cond_0
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_0
.end method
