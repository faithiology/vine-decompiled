.class Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/android/widget/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimateLoader"
.end annotation


# instance fields
.field mRotate:I

.field private mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "v"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mView:Landroid/widget/ImageView;

    .line 455
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 459
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I

    .line 460
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->mRotate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 464
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->this$0:Lcom/twitter/android/widget/RefreshableListView;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void
.end method
