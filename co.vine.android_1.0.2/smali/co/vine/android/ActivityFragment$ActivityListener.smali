.class Lco/vine/android/ActivityFragment$ActivityListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ActivityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ActivityFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ActivityFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 190
    iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ActivityFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    .line 191
    .local v0, req:Lco/vine/android/PendingRequest;
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/ActivityFragment;->hideProgress(I)V

    .line 193
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    #getter for: Lco/vine/android/ActivityFragment;->mFocused:Z
    invoke-static {v1}, Lco/vine/android/ActivityFragment;->access$000(Lco/vine/android/ActivityFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    invoke-virtual {v1}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0800bd

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 197
    :cond_0
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
    .line 201
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v0, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;

    iget-object v0, v0, Lco/vine/android/ActivityFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/ActivityAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ActivityAdapter;->setUserImages(Ljava/util/HashMap;)V

    .line 202
    return-void
.end method
