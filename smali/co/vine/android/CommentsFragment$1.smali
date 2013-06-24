.class Lco/vine/android/CommentsFragment$1;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/CommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/CommentsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/CommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 260
    iget-object v0, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    iget-object v1, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    iget-object v1, v1, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mPostId:J
    invoke-static {v2}, Lco/vine/android/CommentsFragment;->access$000(Lco/vine/android/CommentsFragment;)J

    move-result-wide v2

    invoke-static {}, Lco/vine/android/CommentsFragment;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lco/vine/android/client/AppController;->deleteComment(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 249
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 267
    iget-object v0, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$200(Lco/vine/android/CommentsFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lco/vine/android/CommentsFragment$1;->this$0:Lco/vine/android/CommentsFragment;

    #getter for: Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$200(Lco/vine/android/CommentsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 270
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$302(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 271
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method
