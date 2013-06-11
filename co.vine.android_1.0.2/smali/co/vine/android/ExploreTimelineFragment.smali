.class public Lco/vine/android/ExploreTimelineFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "ExploreTimelineFragment.java"


# static fields
.field private static final ARG_CATEGORY:Ljava/lang/String; = "category"

.field private static final ARG_TAG:Ljava/lang/String; = "tag"

.field public static final CATEGORY_EDITORS_PICKS:Ljava/lang/String; = "editors-picks"

.field public static final CATEGORY_POPULAR_NOW:Ljava/lang/String; = "popular-now"

.field public static final CATEGORY_TAG:Ljava/lang/String; = "tag"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    return-void
.end method

.method public static prepareArguments(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "intent"
    .parameter "refreshable"
    .parameter "category"
    .parameter "tag"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lco/vine/android/BaseListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "tag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v0
.end method


# virtual methods
.method protected fetchPosts(IZ)Ljava/lang/String;
    .locals 9
    .parameter "pageType"
    .parameter "userInitiated"

    .prologue
    .line 78
    const-string v0, "editors-picks"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v5, 0x4

    .line 91
    .local v5, type:I
    :goto_0
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    const/16 v2, 0x14

    iget-object v3, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    iget-object v6, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    .end local v5           #type:I
    :cond_0
    const-string v0, "popular-now"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v5, 0x5

    .restart local v5       #type:I
    goto :goto_0

    .line 82
    .end local v5           #type:I
    :cond_1
    const-string v0, "tag"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a tag."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    const/4 v5, 0x6

    .restart local v5       #type:I
    goto :goto_0

    .line 88
    .end local v5           #type:I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    .line 35
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/ExploreTimelineFragment;->setFocused(Z)V

    .line 37
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
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

    .line 57
    const-string v0, "editors-picks"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v8, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_EDITORS_PICK:Landroid/net/Uri;

    .line 71
    .local v8, contentUri:Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 59
    .end local v8           #contentUri:Landroid/net/Uri;
    :cond_0
    const-string v0, "popular-now"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v8, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri;

    .restart local v8       #contentUri:Landroid/net/Uri;
    goto :goto_0

    .line 61
    .end local v8           #contentUri:Landroid/net/Uri;
    :cond_1
    const-string v0, "tag"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a tag."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    sget-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 66
    .local v7, b:Landroid/net/Uri$Builder;
    const-string v0, "tag_name"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 68
    .restart local v8       #contentUri:Landroid/net/Uri;
    goto :goto_0

    .line 69
    .end local v7           #b:Landroid/net/Uri$Builder;
    .end local v8           #contentUri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    .line 48
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onResume(Z)V

    .line 49
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->initLoader()V

    .line 52
    :cond_0
    return-void
.end method
