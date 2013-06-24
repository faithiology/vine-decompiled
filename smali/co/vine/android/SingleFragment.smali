.class public Lco/vine/android/SingleFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "SingleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SingleFragment$SinglePostListener;
    }
.end annotation


# static fields
.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field public static final ARG_SHARE_ID:Ljava/lang/String; = "post_share_id"

.field public static final ARG_TAKE_FOCUS:Ljava/lang/String; = "take_focus"


# instance fields
.field private mPostId:J

.field private mShareId:Ljava/lang/String;

.field private mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

.field private mTakeFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$002(Lco/vine/android/SingleFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-wide p1, p0, Lco/vine/android/SingleFragment;->mPostId:J

    return-wide p1
.end method

.method private fetchPostId(I)V
    .locals 3
    .parameter "fetchType"

    .prologue
    .line 107
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SingleFragment;->mShareId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchPostId(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/SingleFragment;->addRequest(Ljava/lang/String;I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected fetchContent(IZ)V
    .locals 0
    .parameter "fetchType"
    .parameter "userInitiated"

    .prologue
    .line 100
    return-void
.end method

.method protected fetchPostContent(I)V
    .locals 4
    .parameter "fetchType"

    .prologue
    .line 103
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/SingleFragment;->mPostId:J

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/client/AppController;->fetchPost(Lco/vine/android/client/Session;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/SingleFragment;->addRequest(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method protected fetchPosts(IZ)Ljava/lang/String;
    .locals 2
    .parameter "pageType"
    .parameter "userInitiated"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot fetch on single post"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "post_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/SingleFragment;->mPostId:J

    .line 39
    const-string v1, "post_share_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SingleFragment;->mShareId:Ljava/lang/String;

    .line 41
    const-string v1, "take_focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/SingleFragment;->mTakeFocus:Z

    .line 42
    iget-boolean v1, p0, Lco/vine/android/SingleFragment;->mTakeFocus:Z

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/SingleFragment;->setFocused(Z)V

    .line 45
    :cond_0
    new-instance v1, Lco/vine/android/SingleFragment$SinglePostListener;

    invoke-direct {v1, p0}, Lco/vine/android/SingleFragment$SinglePostListener;-><init>(Lco/vine/android/SingleFragment;)V

    iput-object v1, p0, Lco/vine/android/SingleFragment;->mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

    .line 46
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

    .line 85
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri;

    iget-wide v5, p0, Lco/vine/android/SingleFragment;->mPostId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    .line 80
    :cond_0
    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 56
    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    .line 57
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onResume(Z)V

    .line 58
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->initLoader()V

    .line 62
    :cond_0
    iget-boolean v0, p0, Lco/vine/android/SingleFragment;->mFetched:Z

    if-nez v0, :cond_1

    .line 63
    iget-wide v0, p0, Lco/vine/android/SingleFragment;->mPostId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 64
    invoke-virtual {p0, v4}, Lco/vine/android/SingleFragment;->fetchPostContent(I)V

    .line 70
    :cond_1
    :goto_0
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mSinglePostListener:Lco/vine/android/SingleFragment$SinglePostListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    .line 73
    :cond_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mShareId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0, v4}, Lco/vine/android/SingleFragment;->fetchPostId(I)V

    goto :goto_0
.end method
