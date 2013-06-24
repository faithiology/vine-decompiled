.class Lco/vine/android/UserSearchFragment$UserSearchSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "UserSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/UserSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSearchSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/UserSearchFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/UserSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/UserSearchFragment;Lco/vine/android/UserSearchFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;-><init>(Lco/vine/android/UserSearchFragment;)V

    return-void
.end method


# virtual methods
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
    .line 150
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    iget-object v0, v0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    .line 151
    return-void
.end method

.method public onUserSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 4
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"
    .parameter "nextPage"
    .parameter "previousPage"

    .prologue
    const/4 v3, 0x1

    .line 128
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/UserSearchFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 129
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/UserSearchFragment;->hideProgress(I)V

    .line 133
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 142
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 135
    :pswitch_0
    if-ge p4, v3, :cond_1

    .line 136
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/UserSearchFragment;->cleanSearchResults()V

    .line 137
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lco/vine/android/UserSearchFragment;->showSadface(ZZ)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
