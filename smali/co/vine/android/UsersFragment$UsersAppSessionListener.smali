.class Lco/vine/android/UsersFragment$UsersAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "UsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/UsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsersAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/UsersFragment;


# direct methods
.method constructor <init>(Lco/vine/android/UsersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;II)V
    .locals 3
    .parameter "session"
    .parameter "reqId"
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "count"
    .parameter
    .parameter "nextPage"
    .parameter "prevPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/client/Session;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p6, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    packed-switch p3, :pswitch_data_0

    .line 272
    iget-object v1, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lco/vine/android/UsersFragment;->hideProgress(I)V

    .line 273
    iget-object v1, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    invoke-virtual {v1}, Lco/vine/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v1, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    invoke-virtual {v1, p2}, Lco/vine/android/UsersFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 266
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/UsersFragment;->hideProgress(I)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
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
    .line 281
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/UsersFragment$UsersAppSessionListener;->this$0:Lco/vine/android/UsersFragment;

    iget-object v0, v0, Lco/vine/android/UsersFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    .line 282
    return-void
.end method
