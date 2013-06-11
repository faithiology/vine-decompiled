.class Lco/vine/android/ProfileFragment$ProfileListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ProfileFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "type"
    .parameter "count"

    .prologue
    .line 385
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 386
    .local v0, req:Lco/vine/android/PendingRequest;
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 387
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 389
    :cond_0
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 392
    :cond_1
    return-void
.end method

.method public onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "user"

    .prologue
    .line 426
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 428
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 429
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #setter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1, p4}, Lco/vine/android/ProfileFragment;->access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;

    .line 430
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1, p4}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    .line 432
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1}, Lco/vine/android/ProfileHeaderAdapter;->notifyDataSetChanged()V

    .line 433
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "sessionOwnerId"
    .parameter "user"

    .prologue
    .line 397
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 399
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mIsMe:Z
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$100(Lco/vine/android/ProfileFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #setter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1, p6}, Lco/vine/android/ProfileFragment;->access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;

    .line 401
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1, p6}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    .line 403
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1}, Lco/vine/android/ProfileHeaderAdapter;->notifyDataSetChanged()V

    .line 404
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 445
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 446
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 447
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 448
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V

    .line 449
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 452
    :cond_0
    return-void
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 421
    return-void
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
    .line 439
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ProfileHeaderAdapter;->onImageLoaded(Ljava/util/HashMap;)V

    .line 440
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FeedAdapter;->setImages(Ljava/util/HashMap;)V

    .line 441
    return-void
.end method

.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 456
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 457
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 458
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 459
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V

    .line 460
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 463
    :cond_0
    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 416
    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FeedAdapter;->onVideoPathObtained(Ljava/util/HashMap;)V

    .line 411
    return-void
.end method
