.class public Lco/vine/android/FindFriendsTwitterFragment;
.super Lco/vine/android/BaseListFragment;
.source "FindFriendsTwitterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_TWITTER_SDK:I = 0x1

.field private static final REQUEST_CODE_TWITTER_XAUTH:I = 0x2

.field private static final STATE_FETCHED:Ljava/lang/String; = "fetch"

.field private static final STATE_FRIENDSHIPS:Ljava/lang/String; = "friendships"

.field private static final STATE_SAFE_TO_LOAD:Ljava/lang/String; = "safe"


# instance fields
.field private mBold:[Landroid/text/style/StyleSpan;

.field private mFetched:Z

.field private mFriendships:Lco/vine/android/Friendships;

.field private mProjection:[Ljava/lang/String;

.field private mSafeToLoad:Z

.field private mSecret:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    .line 298
    return-void
.end method

.method static synthetic access$002(Lco/vine/android/FindFriendsTwitterFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z

    return p1
.end method

.method static synthetic access$100(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    return-object v0
.end method

.method private fetchContent(I)V
    .locals 8
    .parameter "fetchType"

    .prologue
    const/4 v7, 0x1

    .line 177
    iput-boolean v7, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 182
    .local v1, activity:Landroid/app/Activity;
    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 184
    .local v0, ac:Landroid/accounts/Account;
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 186
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v5, "account_t_token"

    invoke-virtual {v2, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    .line 187
    const-string v5, "account_t_secret"

    invoke-virtual {v2, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 191
    :cond_1
    const/4 v3, 0x0

    .line 193
    .local v3, authStarted:Z
    :try_start_0
    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 198
    :goto_1
    if-nez v3, :cond_0

    .line 200
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "finish"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 205
    .end local v3           #authStarted:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .restart local v3       #authStarted:Z
    :catch_0
    move-exception v5

    goto :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "secret"

    .prologue
    .line 216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 218
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 219
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 221
    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 222
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lco/vine/android/client/AppController;->fetchTwitterFriends(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    return-void
.end method

.method private startProfileActivity(J)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 290
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    .line 291
    return-void
.end method


# virtual methods
.method public getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProjection:[Ljava/lang/String;

    .line 127
    const-string v0, "username ASC"

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSortOrder:Ljava/lang/String;

    .line 128
    new-instance v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v3, 0x1

    iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 131
    :cond_0
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 231
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    .line 232
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->dismissDialog()V

    .line 236
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 242
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 243
    const-string v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    .line 244
    const-string v0, "secret"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 260
    :sswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->fetchContent(I)V

    .line 263
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FollowButtonViewHolder;

    .line 264
    .local v0, holder:Lco/vine/android/FollowButtonViewHolder;
    if-eqz v0, :cond_0

    .line 265
    iget-boolean v1, v0, Lco/vine/android/FollowButtonViewHolder;->following:Z

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->addFollowing(J)V

    .line 269
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->removeFollowing(J)V

    .line 274
    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090020 -> :sswitch_0
        0x7f090083 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-array v0, v3, [Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mBold:[Landroid/text/style/StyleSpan;

    .line 68
    if-eqz p1, :cond_4

    .line 69
    const-string v0, "fetch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "fetch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z

    .line 72
    :cond_0
    const-string v0, "friendships"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "friendships"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/Friendships;

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    .line 75
    :cond_1
    const-string v0, "safe"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "safe"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z

    .line 82
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;

    .line 88
    :cond_3
    new-instance v0, Lcom/twitter/android/sdk/Twitter;

    sget-object v1, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;

    sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 89
    new-instance v0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;

    invoke-direct {v0, p0}, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;-><init>(Lco/vine/android/FindFriendsTwitterFragment;)V

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 90
    return-void

    .line 79
    :cond_4
    new-instance v0, Lco/vine/android/Friendships;

    invoke-direct {v0}, Lco/vine/android/Friendships;-><init>()V

    iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

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

    .line 169
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;

    iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProjection:[Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSortOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, v:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;

    .line 98
    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 99
    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, mActionButton:Landroid/widget/Button;
    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mBold:[Landroid/text/style/StyleSpan;

    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Lco/vine/android/FindFriendsTwitterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lco/vine/android/widget/UserViewHolder;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/UserViewHolder;

    .line 285
    .local v0, h:Lco/vine/android/widget/UserViewHolder;
    iget-wide v1, v0, Lco/vine/android/widget/UserViewHolder;->userId:J

    invoke-direct {p0, v1, v2}, Lco/vine/android/FindFriendsTwitterFragment;->startProfileActivity(J)V

    .line 287
    .end local v0           #h:Lco/vine/android/widget/UserViewHolder;
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
    .line 160
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 161
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsTwitterFragment;->hideProgress(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/FindFriendsTwitterFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
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
    .line 295
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 137
    iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->initLoader()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->dismissDialog()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v0, "fetch"

    iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "friendships"

    iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    const-string v0, "safe"

    iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSafeToLoad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, title:Landroid/view/View;
    iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 118
    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 120
    return-void
.end method
