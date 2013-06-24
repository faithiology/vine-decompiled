.class public Lco/vine/android/HomeTimelineFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "HomeTimelineFragment.java"


# static fields
.field public static final PREF_INVITE_BANNER_CLICKED:Ljava/lang/String; = "inviteBannerWasClicked"

.field public static final REQUEST_FIND_FRIENDS:I


# instance fields
.field private mInviteBanner:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchPosts(IZ)Ljava/lang/String;
    .locals 9
    .parameter "pageType"
    .parameter "userInitiated"

    .prologue
    .line 89
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/HomeTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    const/16 v2, 0x14

    iget-object v3, p0, Lco/vine/android/HomeTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lco/vine/android/HomeTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v6}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    iget-object v3, p0, Lco/vine/android/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lco/vine/android/HomeTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "inviteBannerWasClicked"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030014

    iget-object v4, p0, Lco/vine/android/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 47
    .local v1, inviteContainer:Landroid/widget/LinearLayout;
    const v3, 0x7f09002d

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/vine/android/HomeTimelineFragment;->mInviteBanner:Landroid/widget/ImageView;

    .line 48
    iget-object v3, p0, Lco/vine/android/HomeTimelineFragment;->mInviteBanner:Landroid/widget/ImageView;

    new-instance v4, Lco/vine/android/HomeTimelineFragment$1;

    invoke-direct {v4, p0}, Lco/vine/android/HomeTimelineFragment$1;-><init>(Lco/vine/android/HomeTimelineFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lco/vine/android/HomeTimelineFragment;->setRefreshableHeaderOffset(I)V

    .line 57
    iget-object v3, p0, Lco/vine/android/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 59
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #inviteContainer:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTimelineFragment;->setFocused(Z)V

    .line 35
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
    const/4 v3, 0x0

    .line 82
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    iget-object v4, p0, Lco/vine/android/HomeTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onResume(Z)V

    .line 72
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->initLoader()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/HomeTimelineFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/HomeTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 76
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/HomeTimelineFragment;->fetchContent(IZ)V

    goto :goto_0
.end method

.method public removeHeader()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment;->mInviteBanner:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/HomeTimelineFragment;->setRefreshableHeaderOffset(I)V

    .line 66
    return-void
.end method
