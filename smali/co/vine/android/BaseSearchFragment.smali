.class public abstract Lco/vine/android/BaseSearchFragment;
.super Lco/vine/android/BaseListFragment;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCallback:Lco/vine/android/SearchActivity;

.field protected mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

.field protected mEncodedQueryString:Ljava/lang/String;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mProjection:[Ljava/lang/String;

.field protected mQueryString:Ljava/lang/String;

.field private mSearchHint:Landroid/widget/TextView;

.field private mSearchHintContainer:Landroid/view/ViewGroup;

.field protected mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanSearchResults()V
.end method

.method protected abstract fetchContent(I)V
.end method

.method public hideSearchHint()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 52
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 55
    .local v1, root:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 57
    .local v2, searchHintContainer:Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v3, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 63
    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/BaseSearchFragment;->mSearchHint:Landroid/widget/TextView;

    .line 64
    iput-object v2, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    .line 65
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 41
    invoke-static {p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 43
    instance-of v0, p1, Lco/vine/android/SearchActivity;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lco/vine/android/SearchActivity;

    .end local p1
    iput-object p1, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    .line 48
    return-void

    .line 46
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseSearchFragment instances must be added to a SearchActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->cleanSearchResults()V

    .line 108
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 70
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v0, p0}, Lco/vine/android/SearchActivity;->setCurrentTab(Lco/vine/android/BaseSearchFragment;)V

    .line 71
    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->initLoader()V

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/BaseSearchFragment;->hideProgress(I)V

    .line 74
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->restoreQueryText(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v0}, Lco/vine/android/SearchActivity;->clearQueryText()V

    goto :goto_0
.end method

.method protected abstract performSearch()V
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 99
    iput-object p1, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mEncodedQueryString:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public showSearchHint(Ljava/lang/String;)V
    .locals 4
    .parameter "partialQuery"

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 91
    :cond_0
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHint:Landroid/widget/TextView;

    const v1, 0x7f0700e7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lco/vine/android/BaseSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
