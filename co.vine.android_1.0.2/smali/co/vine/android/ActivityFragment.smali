.class public Lco/vine/android/ActivityFragment;
.super Lco/vine/android/BaseListFragment;
.source "ActivityFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ActivityFragment$ActivityListener;
    }
.end annotation


# instance fields
.field private mFetched:Z

.field private mFocused:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lco/vine/android/BaseListFragment;-><init>()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ActivityFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFocused:Z

    return v0
.end method

.method private fetchContent(I)V
    .locals 3
    .parameter "fetchType"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityFragment;->hasPendingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/ActivityFragment;->mFetched:Z

    .line 119
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityFragment;->showProgress(I)V

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 131
    const/4 v0, 0x1

    .line 135
    .local v0, pageType:I
    :goto_1
    iget-object v1, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lco/vine/android/client/AppController;->fetchActivity(Lco/vine/android/client/Session;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lco/vine/android/ActivityFragment;->addRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 122
    .end local v0           #pageType:I
    :pswitch_0
    const/4 v0, 0x2

    .line 123
    .restart local v0       #pageType:I
    goto :goto_1

    .line 126
    .end local v0           #pageType:I
    :pswitch_1
    const/4 v0, 0x3

    .line 127
    .restart local v0       #pageType:I
    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lco/vine/android/ActivityAdapter;

    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lco/vine/android/ActivityAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 41
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lco/vine/android/ActivityFragment$ActivityListener;

    invoke-direct {v0, p0}, Lco/vine/android/ActivityFragment$ActivityListener;-><init>(Lco/vine/android/ActivityFragment;)V

    iput-object v0, p0, Lco/vine/android/ActivityFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

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
    const/4 v4, 0x0

    .line 54
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$Activity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$ActivityQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "notification_id DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const v0, 0x7f030019

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/ActivityFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-wide/16 v4, 0x0

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ActivityViewHolder;

    .line 162
    .local v0, holder:Lco/vine/android/widget/ActivityViewHolder;
    iget v1, v0, Lco/vine/android/widget/ActivityViewHolder;->type:I

    .line 163
    .local v1, type:I
    sparse-switch v1, :sswitch_data_0

    .line 175
    iget-wide v2, v0, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    invoke-static {v2, v3, v4}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 165
    :sswitch_0
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    invoke-static {v2, v3, v4}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 171
    :sswitch_1
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    invoke-static {v2, v3, v4}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 177
    :cond_1
    iget-wide v2, v0, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v3, v0, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    invoke-static {v2, v3, v4}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
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

    .line 71
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 72
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, v1}, Lco/vine/android/ActivityFragment;->fetchContent(I)V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, v1}, Lco/vine/android/ActivityFragment;->hideProgress(I)V

    .line 76
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/ActivityFragment;->showSadface(Z)V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/ActivityFragment;->showSadface(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/ActivityFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMoveAway(I)V
    .locals 1
    .parameter "newPosition"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onMoveAway(I)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFocused:Z

    .line 110
    return-void
.end method

.method public onMoveTo(I)V
    .locals 1
    .parameter "oldPosition"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lco/vine/android/BaseListFragment;->onMoveTo(I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFocused:Z

    .line 101
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->hasPendingRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lco/vine/android/BaseListFragment;->onResume()V

    .line 62
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->initLoader()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFetched:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V

    goto :goto_0
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 91
    iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mRefreshable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    .end local p3
    :goto_0
    return-void

    .line 143
    .restart local p3
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;J)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f090009
        :pswitch_0
    .end packed-switch
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V

    .line 87
    return-void
.end method
