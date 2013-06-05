.class public Lco/vine/android/UsersFragment;
.super Lco/vine/android/BaseListFragment;
.source "UsersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/UsersFragment$UsersAppSessionListener;
    }
.end annotation


# static fields
.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field public static final ARG_PROFILE_ID:Ljava/lang/String; = "p_id"

.field public static final ARG_USERS_TYPE:Ljava/lang/String; = "u_type"

.field private static final STATE_FRIENDSHIPS:Ljava/lang/String; = "state_friendships"

.field private static final STATE_LOAD_FLAGS:Ljava/lang/String; = "state_load_flags"


# instance fields
.field mFetched:Z

.field private mFriendships:Lco/vine/android/Friendships;

.field mLoadFlags:I

.field mPostId:J

.field mProfileId:J

.field private mProjection:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field mUsersType:I

.field private mUsersUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    .line 257
    return-void
.end method

.method private fetchContent(I)V
    .locals 6
    .parameter "fetchType"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lco/vine/android/UsersFragment;->hasPendingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/vine/android/UsersFragment;->mFetched:Z

    .line 178
    const/4 v1, 0x0

    .line 181
    .local v1, reqId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 196
    const/4 v0, 0x1

    .line 201
    .local v0, pageType:I
    :goto_1
    iget v2, p0, Lco/vine/android/UsersFragment;->mUsersType:I

    packed-switch v2, :pswitch_data_1

    .line 220
    :goto_2
    :pswitch_0
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lco/vine/android/UsersFragment;->showProgress(I)V

    .line 222
    invoke-virtual {p0, v1, p1}, Lco/vine/android/UsersFragment;->addRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    .end local v0           #pageType:I
    :pswitch_1
    const/4 v0, 0x1

    .line 184
    .restart local v0       #pageType:I
    goto :goto_1

    .line 188
    .end local v0           #pageType:I
    :pswitch_2
    const/4 v0, 0x2

    .line 189
    .restart local v0       #pageType:I
    goto :goto_1

    .line 192
    .end local v0           #pageType:I
    :pswitch_3
    const/4 v0, 0x3

    .line 193
    .restart local v0       #pageType:I
    goto :goto_1

    .line 203
    :pswitch_4
    iget-object v2, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v3, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    invoke-virtual {v2, v3, v4, v0}, Lco/vine/android/client/AppController;->fetchFollowing(JI)Ljava/lang/String;

    move-result-object v1

    .line 204
    goto :goto_2

    .line 207
    :pswitch_5
    iget-object v2, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v3, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    invoke-virtual {v2, v3, v4, v0}, Lco/vine/android/client/AppController;->fetchFollowers(JI)Ljava/lang/String;

    move-result-object v1

    .line 208
    goto :goto_2

    .line 211
    :pswitch_6
    iget-object v2, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lco/vine/android/UsersFragment;->mPostId:J

    invoke-virtual {v2, v3, v4, v5, v0}, Lco/vine/android/client/AppController;->fetchPostLikers(Lco/vine/android/client/Session;JI)Ljava/lang/String;

    move-result-object v1

    .line 213
    goto :goto_2

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mProjection:[Ljava/lang/String;

    .line 80
    const-string v0, "_id ASC"

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mSortOrder:Ljava/lang/String;

    .line 82
    iget v0, p0, Lco/vine/android/UsersFragment;->mUsersType:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not process user type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lco/vine/android/UsersFragment;->mUsersType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_1
    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    iget-wide v1, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mUsersUri:Landroid/net/Uri;

    .line 86
    const-string v0, "order_id DESC"

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mSortOrder:Ljava/lang/String;

    .line 107
    :goto_0
    new-instance v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v3, 0x1

    iget-object v5, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    new-instance v0, Lco/vine/android/UsersFragment$UsersAppSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/UsersFragment$UsersAppSessionListener;-><init>(Lco/vine/android/UsersFragment;)V

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 113
    return-void

    .line 91
    :pswitch_2
    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    iget-wide v1, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mUsersUri:Landroid/net/Uri;

    .line 93
    const-string v0, "order_id DESC"

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mSortOrder:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_3
    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_LIKERS:Landroid/net/Uri;

    iget-wide v1, p0, Lco/vine/android/UsersFragment;->mPostId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mUsersUri:Landroid/net/Uri;

    .line 99
    const-string v0, "order_id ASC"

    iput-object v0, p0, Lco/vine/android/UsersFragment;->mSortOrder:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/FollowButtonViewHolder;

    .line 231
    .local v7, holder:Lco/vine/android/FollowButtonViewHolder;
    if-eqz v7, :cond_0

    .line 232
    iget-boolean v0, v7, Lco/vine/android/FollowButtonViewHolder;->following:Z

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->addFollowing(J)V

    .line 236
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    iget-wide v5, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->removeFollowing(J)V

    .line 241
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x7f090083
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "u_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/UsersFragment;->mUsersType:I

    .line 60
    const-string v1, "p_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/UsersFragment;->mProfileId:J

    .line 61
    const-string v1, "post_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/UsersFragment;->mPostId:J

    .line 63
    if-eqz p1, :cond_1

    .line 64
    const-string v1, "state_load_flags"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/UsersFragment;->mLoadFlags:I

    .line 65
    const-string v1, "state_friendships"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "state_friendships"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/Friendships;

    iput-object v1, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lco/vine/android/UsersFragment;->mLoadFlags:I

    .line 70
    new-instance v1, Lco/vine/android/Friendships;

    invoke-direct {v1}, Lco/vine/android/Friendships;-><init>()V

    iput-object v1, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    goto :goto_0
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

    .line 134
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/UsersFragment;->mUsersUri:Landroid/net/Uri;

    iget-object v3, p0, Lco/vine/android/UsersFragment;->mProjection:[Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/UsersFragment;->mSortOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    .line 166
    :cond_0
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x3

    .line 139
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 140
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/UsersFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lco/vine/android/UsersFragment;->fetchContent(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v1}, Lco/vine/android/UsersFragment;->hideProgress(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/UsersFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 117
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mUsersUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lco/vine/android/UsersFragment;->showProgress(I)V

    .line 121
    invoke-virtual {p0}, Lco/vine/android/UsersFragment;->initLoader()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lco/vine/android/UsersFragment;->fetchContent(I)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0, v1}, Lco/vine/android/UsersFragment;->hideProgress(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "state_friendships"

    iget-object v1, p0, Lco/vine/android/UsersFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 149
    iget-boolean v0, p0, Lco/vine/android/UsersFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/UsersFragment;->fetchContent(I)V

    .line 153
    :cond_0
    return-void
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lco/vine/android/UsersFragment;->fetchContent(I)V

    .line 252
    return-void
.end method
