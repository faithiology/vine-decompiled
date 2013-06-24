.class public Lco/vine/android/UserSearchFragment;
.super Lco/vine/android/BaseSearchFragment;
.source "UserSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/UserSearchFragment$UserSearchSessionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lco/vine/android/BaseSearchFragment;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public cleanSearchResults()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lco/vine/android/UserSearchFragment$1;

    invoke-direct {v1, p0}, Lco/vine/android/UserSearchFragment$1;-><init>(Lco/vine/android/UserSearchFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method protected fetchContent(I)V
    .locals 4
    .parameter "fetchType"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lco/vine/android/UserSearchFragment;->hasPendingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x1

    .line 105
    .local v0, pageType:I
    :goto_1
    iget-object v2, p0, Lco/vine/android/UserSearchFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/UserSearchFragment;->mEncodedQueryString:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lco/vine/android/client/AppController;->searchUsers(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, reqId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lco/vine/android/UserSearchFragment;->showProgress(I)V

    .line 109
    invoke-virtual {p0, v1, p1}, Lco/vine/android/UserSearchFragment;->addRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    .end local v0           #pageType:I
    .end local v1           #reqId:Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x1

    .line 88
    .restart local v0       #pageType:I
    goto :goto_1

    .line 92
    .end local v0           #pageType:I
    :pswitch_1
    const/4 v0, 0x2

    .line 93
    .restart local v0       #pageType:I
    goto :goto_1

    .line 96
    .end local v0           #pageType:I
    :pswitch_2
    const/4 v0, 0x3

    .line 97
    .restart local v0       #pageType:I
    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Lco/vine/android/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mProjection:[Ljava/lang/String;

    .line 32
    const-string v0, "order_id DESC"

    iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mSortOrder:Ljava/lang/String;

    .line 33
    new-instance v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/UserSearchFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object v4, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V

    iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 35
    :cond_0
    iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    new-instance v0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;

    invoke-direct {v0, p0, v5}, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;-><init>(Lco/vine/android/UserSearchFragment;Lco/vine/android/UserSearchFragment$1;)V

    iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 37
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    const/4 v4, 0x0

    .line 41
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;

    iget-object v3, p0, Lco/vine/android/UserSearchFragment;->mProjection:[Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/UserSearchFragment;->mSortOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    .line 64
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 47
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->hideProgress(I)V

    .line 49
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/UserSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 53
    iget-boolean v0, p0, Lco/vine/android/UserSearchFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->fetchContent(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public performSearch()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->hideSearchHint()V

    .line 69
    invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->cleanSearchResults()V

    .line 70
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->fetchContent(I)V

    .line 71
    return-void
.end method
