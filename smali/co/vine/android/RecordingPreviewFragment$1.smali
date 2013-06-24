.class Lco/vine/android/RecordingPreviewFragment$1;
.super Ljava/lang/Object;
.source "RecordingPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecordingPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecordingPreviewFragment;


# direct methods
.method constructor <init>(Lco/vine/android/RecordingPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    invoke-virtual {v0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    invoke-virtual {v1}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    #getter for: Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;
    invoke-static {v2}, Lco/vine/android/RecordingPreviewFragment;->access$000(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    #getter for: Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;
    invoke-static {v3}, Lco/vine/android/RecordingPreviewFragment;->access$100(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;

    #getter for: Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;
    invoke-static {v4}, Lco/vine/android/RecordingPreviewFragment;->access$200(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lco/vine/android/PostActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7c6

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
