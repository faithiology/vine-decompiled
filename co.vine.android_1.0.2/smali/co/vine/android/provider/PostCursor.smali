.class public Lco/vine/android/provider/PostCursor;
.super Lco/vine/android/provider/GroupCursor;
.source "PostCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/provider/GroupCursor",
        "<",
        "Lco/vine/android/api/VinePost;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_IS_LAST:Ljava/lang/String; = "is_last"

.field public static final EXTRA_POST:Ljava/lang/String; = "post"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 22
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lco/vine/android/provider/PostCursor;-><init>(Landroid/database/Cursor;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0
    .parameter "cursor"
    .parameter "limit"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-super {p0}, Lco/vine/android/provider/GroupCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 83
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {p0}, Lco/vine/android/provider/PostCursor;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePost;

    .line 84
    .local v1, post:Lco/vine/android/api/VinePost;
    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string v2, "is_last"

    iget-boolean v3, v1, Lco/vine/android/api/VinePost;->isLast:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    return-object v0
.end method

.method public onPrepare()V
    .locals 14

    .prologue
    .line 31
    iget-object v4, p0, Lco/vine/android/provider/PostCursor;->mCursor:Landroid/database/Cursor;

    .line 37
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 38
    const-wide/16 v8, 0x0

    .line 39
    .local v8, postId:J
    const/4 v11, 0x0

    .line 40
    .local v11, vinePost:Lco/vine/android/api/VinePost;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lco/vine/android/provider/PostCursor;->mList:Ljava/util/List;

    .line 42
    :cond_0
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 45
    .local v2, currentPostId:J
    cmp-long v12, v2, v8

    if-eqz v12, :cond_3

    .line 47
    if-eqz v11, :cond_1

    .line 48
    iget-object v12, p0, Lco/vine/android/provider/PostCursor;->mList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    move-wide v8, v2

    .line 51
    invoke-static {v4}, Lco/vine/android/api/VinePost;->from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v11

    .line 52
    if-nez v11, :cond_3

    .line 73
    :cond_2
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 74
    iget-object v12, p0, Lco/vine/android/provider/PostCursor;->mList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2           #currentPostId:J
    .end local v8           #postId:J
    .end local v11           #vinePost:Lco/vine/android/api/VinePost;
    :goto_1
    return-void

    .line 58
    .restart local v2       #currentPostId:J
    .restart local v8       #postId:J
    .restart local v11       #vinePost:Lco/vine/android/api/VinePost;
    :cond_3
    const/16 v12, 0x23

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 59
    .local v0, commentId:J
    const/16 v12, 0x1c

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 60
    .local v6, likeId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-lez v12, :cond_5

    .line 61
    invoke-static {v4}, Lco/vine/android/api/VineComment;->from(Landroid/database/Cursor;)Lco/vine/android/api/VineComment;

    move-result-object v10

    .line 62
    .local v10, vc:Lco/vine/android/api/VineComment;
    iget-object v12, v11, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v12, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-nez v12, :cond_4

    .line 63
    iget-object v12, v11, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 65
    :cond_4
    iget-object v12, v11, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    iget-object v12, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v10           #vc:Lco/vine/android/api/VineComment;
    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_2

    .line 67
    invoke-static {v4}, Lco/vine/android/api/VineLike;->from(Landroid/database/Cursor;)Lco/vine/android/api/VineLike;

    move-result-object v5

    .line 68
    .local v5, like:Lco/vine/android/api/VineLike;
    iget-object v12, v11, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v12, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    if-nez v12, :cond_6

    .line 69
    iget-object v12, v11, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 71
    :cond_6
    iget-object v12, v11, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    iget-object v12, v12, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v0           #commentId:J
    .end local v2           #currentPostId:J
    .end local v5           #like:Lco/vine/android/api/VineLike;
    .end local v6           #likeId:J
    .end local v8           #postId:J
    .end local v11           #vinePost:Lco/vine/android/api/VinePost;
    :cond_7
    const/4 v12, 0x0

    iput-object v12, p0, Lco/vine/android/provider/PostCursor;->mList:Ljava/util/List;

    goto :goto_1
.end method
