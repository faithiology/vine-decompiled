.class public abstract Lco/vine/android/BaseTimelineFragment;
.super Lco/vine/android/BaseListFragment;
.source "BaseTimelineFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_OPTIONS:I = 0x1

.field private static final STATE_LIKE_CACHE:Ljava/lang/String; = "state_like_cache"


# instance fields
.field protected mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

.field protected mFetched:Z

.field protected mLikeCache:Lco/vine/android/LikeCache;

.field protected mRestoreOffset:I

.field protected mRestoreStatusId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    .line 283
    return-void
.end method


# virtual methods
.method protected fetchContent(IZ)V
    .locals 2
    .parameter "fetchType"
    .parameter "userInitiated"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lco/vine/android/BaseTimelineFragment;->hasPendingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/BaseTimelineFragment;->mFetched:Z

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    const/4 v0, 0x1

    .line 147
    .local v0, pageType:I
    :goto_1
    if-eqz p2, :cond_1

    .line 148
    invoke-virtual {p0, p1}, Lco/vine/android/BaseTimelineFragment;->showProgress(I)V

    .line 150
    :cond_1
    invoke-virtual {p0, v0, p2}, Lco/vine/android/BaseTimelineFragment;->fetchPosts(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    .end local v0           #pageType:I
    :pswitch_1
    const/4 v0, 0x2

    .line 134
    .restart local v0       #pageType:I
    goto :goto_1

    .line 137
    .end local v0           #pageType:I
    :pswitch_2
    const/4 v0, 0x3

    .line 138
    .restart local v0       #pageType:I
    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract fetchPosts(IZ)Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/FeedAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;Lco/vine/android/LikeCache;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    .line 59
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 60
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v5, 0x0

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 258
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 235
    if-eqz p3, :cond_0

    .line 236
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->ACTION_REPORT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    invoke-virtual {p3, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 240
    .local v1, postId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    .line 241
    iget-object v3, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lco/vine/android/client/AppController;->reportPost(Lco/vine/android/client/Session;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)V

    .line 245
    .end local v1           #postId:J
    :cond_1
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->ACTION_DELETE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    invoke-virtual {p3, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 248
    .restart local v1       #postId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 249
    iget-object v3, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lco/vine/android/client/AppController;->deletePost(Lco/vine/android/client/Session;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/api/VinePost;

    .line 197
    .local v9, p:Lco/vine/android/api/VinePost;
    iget-boolean v0, v9, Lco/vine/android/api/VinePost;->liked:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, v9, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/client/AppController;->unlikePost(Lco/vine/android/client/Session;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    iget-wide v1, v9, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/LikeCache;->unlike(J)V

    .line 202
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v8, Lco/vine/android/api/VineUser;

    invoke-direct {v8}, Lco/vine/android/api/VineUser;-><init>()V

    .line 206
    .local v8, me:Lco/vine/android/api/VineUser;
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, v9, Lco/vine/android/api/VinePost;->postId:J

    iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    iget-object v6, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v6}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->likePost(Lco/vine/android/client/Session;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    iget-wide v1, v9, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/LikeCache;->like(J)V

    .line 210
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 215
    .end local v8           #me:Lco/vine/android/api/VineUser;
    .end local v9           #p:Lco/vine/android/api/VinePost;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/vine/android/api/VinePost;

    .line 216
    .local v10, post:Lco/vine/android/api/VinePost;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/vine/android/PostOptionsDialogActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_POST_ID:Ljava/lang/String;

    iget-wide v3, v10, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lco/vine/android/PostOptionsDialogActivity;->EXTRA_DELETE:Ljava/lang/String;

    iget-wide v4, v10, Lco/vine/android/api/VinePost;->userId:J

    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v11

    cmp-long v0, v4, v11

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 221
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 216
    .end local v7           #i:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x7f090049
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;-><init>(Lco/vine/android/BaseTimelineFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 48
    if-eqz p1, :cond_0

    const-string v0, "state_like_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "state_like_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/LikeCache;

    iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lco/vine/android/LikeCache;

    invoke-direct {v0}, Lco/vine/android/LikeCache;-><init>()V

    iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    goto :goto_0
.end method

.method public abstract onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
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
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 66
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onDestroyView()V

    .line 67
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 80
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 81
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 83
    invoke-virtual {p0, v3, v2}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, v3}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V

    .line 86
    iget-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mFetched:Z

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->refreshSilently()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/BaseTimelineFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMoveAway(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onMoveAway(I)V

    .line 108
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 109
    return-void
.end method

.method public onMoveTo(I)V
    .locals 2
    .parameter "oldPosition"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onMoveTo(I)V

    .line 102
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onResume(Z)V

    .line 103
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onPause()V

    .line 158
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 114
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "state_like_cache"

    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 274
    iget-boolean v1, p0, Lco/vine/android/BaseTimelineFragment;->mRefreshable:Z

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_last"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 276
    .local v0, isLast:Z
    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x190

    if-gt v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 278
    invoke-virtual {p0, v3, v3}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V

    .line 281
    .end local v0           #isLast:Z
    :cond_0
    return-void
.end method

.method public declared-synchronized onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 266
    monitor-enter p0

    if-nez p2, :cond_0

    .line 267
    :try_start_0
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_0
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 5
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 176
    packed-switch p2, :pswitch_data_0

    .line 190
    .end local p3
    :goto_0
    return-void

    .restart local p3
    :pswitch_0
    move-object v1, p3

    .line 178
    check-cast v1, Ljava/lang/Long;

    .line 179
    .local v1, postId:Ljava/lang/Long;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/vine/android/UsersActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, i:Landroid/content/Intent;
    const-string v2, "post_id"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    const-string v2, "u_type"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lco/vine/android/BaseTimelineFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #postId:Ljava/lang/Long;
    :pswitch_1
    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 163
    invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V

    .line 164
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V

    .line 166
    return-void
.end method

.method protected refreshSilently()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 169
    invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V

    .line 170
    iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->onPause(Z)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V

    .line 172
    return-void
.end method
