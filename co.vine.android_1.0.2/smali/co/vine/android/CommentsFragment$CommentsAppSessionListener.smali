.class Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "CommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/CommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentsAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/CommentsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/CommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 262
    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 263
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mPostId:J
    invoke-static {v1}, Lco/vine/android/CommentsFragment;->access$000(Lco/vine/android/CommentsFragment;)J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lco/vine/android/CommentsFragment;->hideProgress(I)V

    .line 265
    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    iget-object v1, v1, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/vine/android/CommentsFragment;->showSadface(Z)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/CommentsFragment;->showSadface(Z)V

    goto :goto_0
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .locals 1
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
    .line 275
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    invoke-super {p0, p1}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V

    .line 276
    iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    iget-object v0, v0, Lco/vine/android/CommentsFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/CommentsAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/CommentsAdapter;->updateProfileImages(Ljava/util/HashMap;)V

    .line 277
    return-void
.end method

.method public onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"
    .parameter "comment"

    .prologue
    .line 282
    iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    invoke-virtual {v2}, Lco/vine/android/CommentsFragment;->dismissDialog()V

    .line 283
    iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    invoke-virtual {v2, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v1

    .line 284
    .local v1, req:Lco/vine/android/PendingRequest;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mPostId:J
    invoke-static {v2}, Lco/vine/android/CommentsFragment;->access$000(Lco/vine/android/CommentsFragment;)J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 285
    iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    iget-object v0, v2, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    .line 286
    .local v0, listView:Landroid/widget/ListView;
    new-instance v2, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;

    invoke-direct {v2, p0, v0}, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;-><init>(Lco/vine/android/CommentsFragment$CommentsAppSessionListener;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 291
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    .line 292
    iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lco/vine/android/CommentsFragment;->access$400(Lco/vine/android/CommentsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_0
    return-void
.end method
