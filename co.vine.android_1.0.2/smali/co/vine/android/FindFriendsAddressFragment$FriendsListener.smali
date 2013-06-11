.class Lco/vine/android/FindFriendsAddressFragment$FriendsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/FindFriendsAddressFragment;


# direct methods
.method constructor <init>(Lco/vine/android/FindFriendsAddressFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 254
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    #getter for: Lco/vine/android/FindFriendsAddressFragment;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v0}, Lco/vine/android/FindFriendsAddressFragment;->access$100(Lco/vine/android/FindFriendsAddressFragment;)Lco/vine/android/Friendships;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V

    .line 256
    :cond_0
    return-void
.end method

.method public onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 229
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->dismissDialog()V

    .line 230
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 231
    if-gtz p4, :cond_0

    .line 232
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800a0

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08009f

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

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
    .line 247
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    .line 248
    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "reqId"

    .prologue
    .line 241
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/FindFriendsAddressFragment;->mSafeToLoad:Z
    invoke-static {v0, v1}, Lco/vine/android/FindFriendsAddressFragment;->access$002(Lco/vine/android/FindFriendsAddressFragment;Z)Z

    .line 242
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->initLoader()V

    .line 243
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 262
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    #getter for: Lco/vine/android/FindFriendsAddressFragment;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v0}, Lco/vine/android/FindFriendsAddressFragment;->access$100(Lco/vine/android/FindFriendsAddressFragment;)Lco/vine/android/Friendships;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V

    .line 264
    :cond_0
    return-void
.end method
