.class public Lco/vine/android/UsersAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UsersAdapter.java"


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;

.field private mFollow:Z

.field private mFriendships:Lco/vine/android/Friendships;

.field private mListener:Landroid/view/View$OnClickListener;

.field mLoggedInUserId:J

.field protected final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/widget/UserViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V
    .locals 2
    .parameter "context"
    .parameter "appController"
    .parameter "follow"
    .parameter "listener"
    .parameter "friendships"
    .parameter "flags"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 70
    iput-object p2, p0, Lco/vine/android/UsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 71
    invoke-virtual {p2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/UsersAdapter;->mLoggedInUserId:J

    .line 72
    iput-boolean p3, p0, Lco/vine/android/UsersAdapter;->mFollow:Z

    .line 73
    iput-object p4, p0, Lco/vine/android/UsersAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p5, p0, Lco/vine/android/UsersAdapter;->mFriendships:Lco/vine/android/Friendships;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method private setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "holder"
    .parameter "bmp"

    .prologue
    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/UsersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/widget/UserViewHolder;

    .line 99
    .local v4, holder:Lco/vine/android/widget/UserViewHolder;
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;

    const/16 v11, 0xd

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lco/vine/android/widget/UserViewHolder;->userId:J

    .line 102
    const/4 v10, 0x5

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, description:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 104
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_0
    const/4 v10, 0x6

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, location:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 113
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_1
    iget-boolean v10, p0, Lco/vine/android/UsersAdapter;->mFollow:Z

    if-eqz v10, :cond_0

    .line 121
    iget-object v1, v4, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    .line 123
    .local v1, followButton:Landroid/widget/ImageButton;
    iget-object v3, p0, Lco/vine/android/UsersAdapter;->mFriendships:Lco/vine/android/Friendships;

    .line 124
    .local v3, friendships:Lco/vine/android/Friendships;
    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 126
    .local v8, userId:J
    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {v3, v8, v9}, Lco/vine/android/Friendships;->contains(J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 128
    invoke-virtual {v3, v8, v9}, Lco/vine/android/Friendships;->isFollowing(J)Z

    move-result v2

    .line 136
    .local v2, following:Z
    :goto_2
    new-instance v10, Lco/vine/android/FollowButtonViewHolder;

    invoke-direct {v10, v8, v9, v2}, Lco/vine/android/FollowButtonViewHolder;-><init>(JZ)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 138
    if-eqz v2, :cond_7

    .line 139
    const v10, 0x7f02002b

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 144
    .end local v1           #followButton:Landroid/widget/ImageButton;
    .end local v2           #following:Z
    .end local v3           #friendships:Lco/vine/android/Friendships;
    .end local v8           #userId:J
    :cond_0
    :goto_3
    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, url:Ljava/lang/String;
    new-instance v5, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v5, v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 146
    .local v5, key:Lco/vine/android/util/image/ImageKey;
    iget-object v10, p0, Lco/vine/android/UsersAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 147
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    const v11, 0x7f020004

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_4
    return-void

    .line 107
    .end local v5           #key:Lco/vine/android/util/image/ImageKey;
    .end local v6           #location:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_1
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    .restart local v6       #location:Ljava/lang/String;
    :cond_2
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v10, v4, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 130
    .restart local v1       #followButton:Landroid/widget/ImageButton;
    .restart local v3       #friendships:Lco/vine/android/Friendships;
    .restart local v8       #userId:J
    :cond_3
    const/16 v10, 0xa

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v2, 0x1

    .restart local v2       #following:Z
    :goto_5
    goto :goto_2

    .end local v2           #following:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 133
    :cond_5
    const/16 v10, 0xa

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v2, 0x1

    .restart local v2       #following:Z
    :goto_6
    goto :goto_2

    .end local v2           #following:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 141
    .restart local v2       #following:Z
    :cond_7
    const v10, 0x7f02002a

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 149
    .end local v1           #followButton:Landroid/widget/ImageButton;
    .end local v2           #following:Z
    .end local v3           #friendships:Lco/vine/android/Friendships;
    .end local v8           #userId:J
    .restart local v5       #key:Lco/vine/android/util/image/ImageKey;
    .restart local v7       #url:Ljava/lang/String;
    :cond_8
    iput-object v5, v4, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    .line 150
    iget-object v10, p0, Lco/vine/android/UsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v10, v5}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lco/vine/android/UsersAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 175
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 178
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, v:Landroid/view/View;
    new-instance v0, Lco/vine/android/widget/UserViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/UserViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    .local v0, holder:Lco/vine/android/widget/UserViewHolder;
    iget-boolean v3, p0, Lco/vine/android/UsersAdapter;->mFollow:Z

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lco/vine/android/UsersAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_0
    iget-object v3, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    return-object v2

    .line 88
    :cond_0
    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;>;"
    iget-object v6, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 157
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/UserViewHolder;

    .line 158
    .local v0, holder:Lco/vine/android/widget/UserViewHolder;
    if-nez v0, :cond_1

    .line 159
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    .end local v0           #holder:Lco/vine/android/widget/UserViewHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 161
    .restart local v0       #holder:Lco/vine/android/widget/UserViewHolder;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;>;"
    :cond_1
    :try_start_1
    iget-object v6, v0, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    .line 162
    .local v2, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6}, Lco/vine/android/UsersAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 167
    .end local v0           #holder:Lco/vine/android/widget/UserViewHolder;
    .end local v2           #image:Lco/vine/android/util/image/UrlImage;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 168
    .local v3, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    iget-object v6, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    .end local v3           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/UserViewHolder;>;"
    :cond_3
    monitor-exit p0

    return-void
.end method
