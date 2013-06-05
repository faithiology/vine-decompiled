.class public Lco/vine/android/BaseListFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lco/vine/android/widget/OnTabChangedListener;
.implements Lcom/twitter/android/widget/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/BaseListFragment$OnScrollListener;,
        Lco/vine/android/BaseListFragment$ChangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lco/vine/android/widget/OnTabChangedListener;",
        "Lcom/twitter/android/widget/RefreshListener;"
    }
.end annotation


# static fields
.field public static final ARG_BG_COLOR:Ljava/lang/String; = "bg_color"

.field public static final ARG_CHOICE_MODE:Ljava/lang/String; = "chmode"

.field public static final ARG_DATA:Ljava/lang/String; = "data"

.field public static final ARG_EMPTY_DESC:Ljava/lang/String; = "empty_desc"

.field public static final ARG_OWNER_ID:Ljava/lang/String; = "owner_id"

.field public static final ARG_REFRESHABLE:Ljava/lang/String; = "refresh"

.field protected static final LOADER_ID_DEFAULT:I = 0x0

.field protected static final PROGRESS_FETCH_DATA:I = 0x3

.field protected static final PROGRESS_FETCH_DATA_NEW_AUTO:I = 0x4

.field protected static final PROGRESS_FETCH_NEWER:I = 0x2

.field protected static final PROGRESS_FETCH_OLDER:I = 0x1

.field protected static final PROGRESS_FIRST_USER:I = 0x6

.field protected static final PROGRESS_LOAD_DATA:I = 0x5

.field protected static final PROGRESS_NONE:I = 0x0

.field private static final STATE_CURRENT_REQ_IDS:Ljava/lang/String; = "pending_reqs"

.field private static final STATE_SCROLL_OFF_KEY:Ljava/lang/String; = "scroll_off"

.field private static final STATE_SCROLL_POS_KEY:Ljava/lang/String; = "scroll_pos"


# instance fields
.field protected mAppController:Lco/vine/android/client/AppController;

.field protected mAppSessionListener:Lco/vine/android/client/AppSessionListener;

.field protected mBgColor:I

.field protected mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

.field protected mChoiceMode:I

.field protected mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mEmpty:Landroid/view/View;

.field private mEmptyProgress:Landroid/widget/ProgressBar;

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mEmptyTextStringRes:I

.field private mFocused:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mListState:Lco/vine/android/ListState;

.field protected mListView:Landroid/widget/ListView;

.field private mLoaderId:I

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mOwnerId:J

.field private mPendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mRefreshable:Z

.field protected mRefreshing:Z

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSadface:Landroid/view/View;

.field private mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

.field private mScrollOffset:I

.field private mScrollPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/BaseListFragment;->mLoaderId:I

    .line 114
    new-instance v0, Lco/vine/android/BaseListFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/BaseListFragment$1;-><init>(Lco/vine/android/BaseListFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/vine/android/BaseListFragment;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lco/vine/android/BaseListFragment$2;

    invoke-direct {v0, p0}, Lco/vine/android/BaseListFragment$2;-><init>(Lco/vine/android/BaseListFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 861
    return-void
.end method

.method public static prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 3
    .parameter "intent"
    .parameter "refreshable"

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 823
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 824
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 826
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    const-string v1, "data"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 827
    const-string v1, "refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 828
    return-object v0
.end method

.method private showLoading(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 577
    if-eqz p1, :cond_2

    .line 578
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 579
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_0
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 587
    .end local v0           #l:Landroid/widget/ListView;
    :cond_2
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 588
    .restart local v0       #l:Landroid/widget/ListView;
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 589
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 591
    :cond_3
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected addRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "reqId"

    .prologue
    .line 713
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    new-instance v1, Lco/vine/android/PendingRequest;

    invoke-direct {v1, p1}, Lco/vine/android/PendingRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method protected addRequest(Ljava/lang/String;I)V
    .locals 2
    .parameter "reqId"
    .parameter "fetchType"

    .prologue
    .line 717
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    new-instance v1, Lco/vine/android/PendingRequest;

    invoke-direct {v1, p1, p2}, Lco/vine/android/PendingRequest;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    return-void
.end method

.method protected createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 335
    const v0, 0x7f030019

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/BaseListFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "layout"
    .parameter "container"

    .prologue
    .line 295
    const/4 v4, 0x0

    invoke-virtual {p1, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 297
    .local v3, v:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 298
    .local v2, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lco/vine/android/BaseListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 299
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 300
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 301
    iget v4, p0, Lco/vine/android/BaseListFragment;->mChoiceMode:I

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 302
    iget v0, p0, Lco/vine/android/BaseListFragment;->mBgColor:I

    .line 303
    .local v0, bgColor:I
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 305
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 308
    :cond_0
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 311
    const v4, 0x7f090070

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lco/vine/android/BaseListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    .line 314
    :cond_1
    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/vine/android/BaseListFragment;->mEmptyText:Landroid/widget/TextView;

    .line 315
    iget v4, p0, Lco/vine/android/BaseListFragment;->mEmptyTextStringRes:I

    if-lez v4, :cond_2

    .line 316
    iget-object v4, p0, Lco/vine/android/BaseListFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 317
    iget-object v4, p0, Lco/vine/android/BaseListFragment;->mEmptyText:Landroid/widget/TextView;

    iget v5, p0, Lco/vine/android/BaseListFragment;->mEmptyTextStringRes:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 321
    :cond_2
    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    .line 323
    iput-object v1, p0, Lco/vine/android/BaseListFragment;->mEmpty:Landroid/view/View;

    .line 325
    iget-boolean v4, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v4, :cond_3

    move-object v4, v2

    .line 326
    check-cast v4, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/twitter/android/widget/RefreshableListView;->setRefreshListener(Lcom/twitter/android/widget/RefreshListener;)V

    .line 329
    :cond_3
    iput-object v2, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 331
    return-object v3
.end method

.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/BaseListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 806
    :cond_0
    return-void
.end method

.method public getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 778
    iget-object v3, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 779
    .local v3, l:Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 780
    .local v1, firstPos:I
    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 782
    .local v2, headerCount:I
    iget-boolean v6, p0, Lco/vine/android/BaseListFragment;->mRefreshing:Z

    if-eqz v6, :cond_0

    .line 783
    add-int/lit8 v2, v2, 0x1

    .line 789
    :cond_0
    if-ge v1, v2, :cond_2

    .line 790
    move v4, v2

    .line 791
    .local v4, position:I
    sub-int v6, v4, v1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 797
    .local v0, child:Landroid/view/View;
    :goto_0
    new-instance v6, Lcom/twitter/android/widget/ItemPosition;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    :cond_1
    invoke-direct {v6, v4, v7, v8, v5}, Lcom/twitter/android/widget/ItemPosition;-><init>(IJI)V

    return-object v6

    .line 793
    .end local v0           #child:Landroid/view/View;
    .end local v4           #position:I
    :cond_2
    move v4, v1

    .line 794
    .restart local v4       #position:I
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #child:Landroid/view/View;
    goto :goto_0
.end method

.method protected getIdColumnIndex()I
    .locals 1

    .prologue
    .line 709
    const/4 v0, -0x1

    return v0
.end method

.method public getPositionForItemId(J)I
    .locals 5
    .parameter "id"

    .prologue
    .line 674
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getIdColumnIndex()I

    move-result v1

    .line 676
    .local v1, idColumnIndex:I
    if-ltz v1, :cond_3

    .line 677
    iget-object v3, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 678
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 679
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 681
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget-object v4, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int v2, v3, v4

    .line 687
    .local v2, pos:I
    iget-boolean v3, p0, Lco/vine/android/BaseListFragment;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 688
    add-int/lit8 v2, v2, 0x1

    .line 697
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #pos:I
    :cond_1
    :goto_0
    return v2

    .line 692
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected handleContentChanged()V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;

    move-result-object v0

    .line 662
    .local v0, itemPosition:Lcom/twitter/android/widget/ItemPosition;
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->onContentChanged()V

    .line 666
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/BaseListFragment;->restoreItemPosition(Lcom/twitter/android/widget/ItemPosition;Z)V

    .line 667
    return-void
.end method

.method protected hasPendingRequest()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasPendingRequest(I)Z
    .locals 3
    .parameter "fetchType"

    .prologue
    .line 495
    if-eqz p1, :cond_1

    .line 496
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/PendingRequest;

    .line 497
    .local v1, req:Lco/vine/android/PendingRequest;
    iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I

    if-ne v2, p1, :cond_0

    .line 498
    const/4 v2, 0x1

    .line 502
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #req:Lco/vine/android/PendingRequest;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected hideProgress(I)V
    .locals 2
    .parameter "progressType"

    .prologue
    const/4 v1, 0x0

    .line 541
    packed-switch p1, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_0
    invoke-direct {p0, v1}, Lco/vine/android/BaseListFragment;->showLoading(Z)V

    goto :goto_0

    .line 550
    :pswitch_1
    invoke-direct {p0, v1}, Lco/vine/android/BaseListFragment;->showLoading(Z)V

    .line 551
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->stopRefresh()V

    .line 553
    iput-boolean v1, p0, Lco/vine/android/BaseListFragment;->mRefreshing:Z

    goto :goto_0

    .line 559
    :pswitch_2
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->refreshMore(Z)V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initLoader()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseListFragment;->initLoader(I)V

    .line 172
    return-void
.end method

.method protected final initLoader(I)V
    .locals 3
    .parameter "loaderId"

    .prologue
    .line 182
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lco/vine/android/BaseListFragment$ChangeObserver;

    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lco/vine/android/BaseListFragment$ChangeObserver;-><init>(Lco/vine/android/BaseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    .line 184
    iput p1, p0, Lco/vine/android/BaseListFragment;->mLoaderId:I

    .line 186
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lco/vine/android/BaseListFragment;->mLoaderId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 187
    return-void
.end method

.method invokeScrollFirstItem()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

    invoke-interface {v0}, Lco/vine/android/BaseListFragment$OnScrollListener;->onScrollFirstItem()V

    .line 812
    :cond_0
    return-void
.end method

.method protected isEmpty()Z
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 573
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isFocused()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mFocused:Z

    return v0
.end method

.method protected loadCursor(Z)V
    .locals 0
    .parameter "restart"

    .prologue
    .line 209
    return-void
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 670
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->onRefreshFinished()V

    .line 671
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 264
    new-instance v1, Lco/vine/android/ListState;

    invoke-direct {v1}, Lco/vine/android/ListState;-><init>()V

    iput-object v1, p0, Lco/vine/android/BaseListFragment;->mListState:Lco/vine/android/ListState;

    .line 266
    if-eqz p1, :cond_1

    .line 267
    const-string v1, "scroll_pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseListFragment;->mScrollPos:I

    .line 268
    const-string v1, "scroll_off"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseListFragment;->mScrollOffset:I

    .line 269
    const-string v1, "pending_reqs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    .line 276
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 278
    const-string v1, "refresh"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    .line 279
    const-string v1, "owner_id"

    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/BaseListFragment;->mOwnerId:J

    .line 281
    const-string v1, "chmode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "chmode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseListFragment;->mChoiceMode:I

    .line 284
    :cond_0
    const-string v1, "bg_color"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseListFragment;->mBgColor:I

    .line 285
    const-string v1, "empty_desc"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseListFragment;->mEmptyTextStringRes:I

    .line 292
    :goto_1
    return-void

    .line 271
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    iput v4, p0, Lco/vine/android/BaseListFragment;->mScrollPos:I

    .line 272
    iput v4, p0, Lco/vine/android/BaseListFragment;->mScrollOffset:I

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    goto :goto_0

    .line 287
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_2
    iput-boolean v3, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    .line 288
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/BaseListFragment;->mOwnerId:J

    .line 289
    iput v4, p0, Lco/vine/android/BaseListFragment;->mChoiceMode:I

    .line 290
    iput v4, p0, Lco/vine/android/BaseListFragment;->mBgColor:I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lco/vine/android/BaseListFragment;->createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 364
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 369
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 370
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 355
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 256
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, oldCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 235
    :cond_0
    if-eqz p2, :cond_1

    .line 236
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 239
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 249
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    :cond_0
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 253
    return-void
.end method

.method public onMoveAway(I)V
    .locals 1
    .parameter "newPosition"

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/BaseListFragment;->mFocused:Z

    .line 132
    return-void
.end method

.method public onMoveTo(I)V
    .locals 1
    .parameter "oldPosition"

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/BaseListFragment;->mFocused:Z

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 401
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    .line 402
    .local v0, appController:Lco/vine/android/client/AppController;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->dismissDialog()V

    .line 412
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/BaseListFragment;->saveItemPosition(Lcom/twitter/android/widget/ItemPosition;)V

    .line 413
    return-void
.end method

.method public onRefreshCancelled()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onRefreshFinished()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 648
    .local v0, adapter:Landroid/support/v4/widget/CursorAdapter;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 650
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 654
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onRefreshFinishedNewData()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public onRefreshFinishedNoChange()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public onRefreshPulled()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onRefreshReleased(Z)V
    .locals 0
    .parameter "shouldStartRefresh"

    .prologue
    .line 634
    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->refresh()V

    .line 637
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 374
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 376
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/BaseListFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 384
    :cond_0
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 385
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/PendingRequest;

    .line 386
    .local v1, req:Lco/vine/android/PendingRequest;
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, v1, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->isPendingRequest(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {p0, v2}, Lco/vine/android/BaseListFragment;->showProgress(I)V

    .line 384
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 389
    :cond_1
    iget v2, v1, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {p0, v2}, Lco/vine/android/BaseListFragment;->hideProgress(I)V

    .line 390
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v1           #req:Lco/vine/android/PendingRequest;
    :cond_2
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->restorePosition()V

    .line 395
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 418
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->savePosition()V

    .line 419
    const-string v0, "pending_reqs"

    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 420
    const-string v0, "scroll_pos"

    iget v1, p0, Lco/vine/android/BaseListFragment;->mScrollPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v0, "scroll_off"

    iget v1, p0, Lco/vine/android/BaseListFragment;->mScrollOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 426
    if-nez p3, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    if-nez p2, :cond_2

    .line 431
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

    if-eqz v2, :cond_2

    .line 432
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

    invoke-interface {v2}, Lco/vine/android/BaseListFragment$OnScrollListener;->onScrollFirstItem()V

    .line 436
    :cond_2
    if-lez p2, :cond_0

    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v2, :cond_0

    .line 437
    add-int v1, p2, p3

    .line 439
    .local v1, position:I
    if-lt v1, p4, :cond_0

    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 440
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 441
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0, v0}, Lco/vine/android/BaseListFragment;->onScrollLastItem(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 476
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 457
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListState:Lco/vine/android/ListState;

    invoke-virtual {v0, p2}, Lco/vine/android/ListState;->setScrollState(I)V

    .line 459
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListState:Lco/vine/android/ListState;

    invoke-virtual {v0}, Lco/vine/android/ListState;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->onUpdateDirtyViews()V

    .line 462
    :cond_0
    return-void
.end method

.method protected onUpdateDirtyViews()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListState:Lco/vine/android/ListState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/ListState;->setDirty(Z)V

    .line 623
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 348
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/BaseListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method protected removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
    .locals 5
    .parameter "reqId"

    .prologue
    .line 722
    iget-object v2, p0, Lco/vine/android/BaseListFragment;->mPendingRequests:Ljava/util/ArrayList;

    .line 723
    .local v2, reqs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/PendingRequest;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 724
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 725
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/PendingRequest;

    .line 726
    .local v1, req:Lco/vine/android/PendingRequest;
    iget-object v4, v1, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/PendingRequest;

    .line 730
    .end local v1           #req:Lco/vine/android/PendingRequest;
    :goto_1
    return-object v4

    .line 724
    .restart local v1       #req:Lco/vine/android/PendingRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v1           #req:Lco/vine/android/PendingRequest;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected restartLoader()Z
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lco/vine/android/BaseListFragment;->mLoaderId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected restoreItemPosition(Lcom/twitter/android/widget/ItemPosition;Z)V
    .locals 0
    .parameter "itemPosition"
    .parameter "changedCursor"

    .prologue
    .line 752
    return-void
.end method

.method protected restorePosition()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lco/vine/android/BaseListFragment;->mScrollPos:I

    iget v2, p0, Lco/vine/android/BaseListFragment;->mScrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 756
    return-void
.end method

.method protected saveItemPosition(Lcom/twitter/android/widget/ItemPosition;)V
    .locals 0
    .parameter "itemPosition"

    .prologue
    .line 741
    return-void
.end method

.method protected savePosition()V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    .line 762
    .local v0, l:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 764
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 766
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 767
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 772
    .local v1, offset:I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lco/vine/android/BaseListFragment;->mScrollPos:I

    .line 773
    iput v1, p0, Lco/vine/android/BaseListFragment;->mScrollOffset:I

    .line 775
    .end local v1           #offset:I
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void

    .line 769
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #offset:I
    goto :goto_0
.end method

.method protected setEmptyStringMessage(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 615
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/vine/android/BaseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    return-void
.end method

.method public setFocused(Z)V
    .locals 0
    .parameter "focused"

    .prologue
    .line 144
    iput-boolean p1, p0, Lco/vine/android/BaseListFragment;->mFocused:Z

    .line 145
    return-void
.end method

.method public setOwnerId(J)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 858
    iput-wide p1, p0, Lco/vine/android/BaseListFragment;->mOwnerId:J

    .line 859
    return-void
.end method

.method public setRefreshableHeaderOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 451
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setViewYOffset(I)V

    .line 454
    :cond_0
    return-void
.end method

.method setScrollListener(Lco/vine/android/BaseListFragment$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 832
    iput-object p1, p0, Lco/vine/android/BaseListFragment;->mScrollListener:Lco/vine/android/BaseListFragment$OnScrollListener;

    .line 833
    return-void
.end method

.method public showDialog(I)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lco/vine/android/BaseListFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 852
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 855
    :cond_0
    return-void
.end method

.method protected showProgress(I)V
    .locals 2
    .parameter "progressType"

    .prologue
    const/4 v1, 0x1

    .line 511
    packed-switch p1, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 513
    :pswitch_0
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->refreshMore(Z)V

    goto :goto_0

    .line 521
    :pswitch_1
    iget-boolean v0, p0, Lco/vine/android/BaseListFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->startRefresh()V

    .line 523
    iput-boolean v1, p0, Lco/vine/android/BaseListFragment;->mRefreshing:Z

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-direct {p0, v1}, Lco/vine/android/BaseListFragment;->showLoading(Z)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showSadface(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 599
    if-eqz p1, :cond_1

    .line 600
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lco/vine/android/BaseListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
