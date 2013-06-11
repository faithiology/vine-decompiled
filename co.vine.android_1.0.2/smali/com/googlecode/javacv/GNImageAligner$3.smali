.class Lcom/googlecode/javacv/GNImageAligner$3;
.super Ljava/lang/Object;
.source "GNImageAligner.java"

# interfaces
.implements Lcom/googlecode/javacv/Parallel$Looper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/GNImageAligner;->doRegularization([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/GNImageAligner;

.field final synthetic val$K:D

.field final synthetic val$m:I


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/GNImageAligner;ID)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iput p2, p0, Lcom/googlecode/javacv/GNImageAligner$3;->val$m:I

    iput-wide p3, p0, Lcom/googlecode/javacv/GNImageAligner$3;->val$K:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loop(III)V
    .locals 11
    .parameter "from"
    .parameter "to"
    .parameter "looperID"

    .prologue
    .line 666
    move v4, p1

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_5

    .line 667
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v4, v7, :cond_0

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    aget-boolean v7, v7, v4

    if-nez v7, :cond_0

    .line 666
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 671
    :cond_0
    move v5, v4

    .local v5, j:I
    :goto_2
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    iget v8, p0, Lcom/googlecode/javacv/GNImageAligner$3;->val$m:I

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_3

    .line 672
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v5, v7, :cond_1

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_1

    .line 671
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 675
    :cond_1
    const-wide/16 v2, 0x0

    .line 676
    .local v2, h:D
    const/4 v6, 0x0

    .local v6, k:I
    :goto_4
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v6, v7, :cond_2

    .line 677
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v6

    iget-object v9, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v9, v9, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v9, v9, v5

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v2, v7

    .line 676
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 680
    :cond_2
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/googlecode/javacv/GNImageAligner$3;->val$K:D

    mul-double/2addr v9, v2

    add-double v2, v7, v9

    .line 681
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7, v4, v5, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 682
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7, v5, v4, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_3

    .line 685
    .end local v2           #h:D
    .end local v6           #k:I
    :cond_3
    const-wide/16 v0, 0x0

    .line 686
    .local v0, g:D
    const/4 v6, 0x0

    .restart local v6       #k:I
    :goto_5
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v6, v7, :cond_4

    .line 687
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v6

    iget-object v9, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v9, v9, Lcom/googlecode/javacv/GNImageAligner;->subspaceResidual:[D

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    sub-double/2addr v0, v7

    .line 686
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 690
    :cond_4
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/googlecode/javacv/GNImageAligner$3;->val$K:D

    mul-double/2addr v9, v0

    add-double v0, v7, v9

    .line 691
    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$3;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v7, v7, Lcom/googlecode/javacv/GNImageAligner;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7, v4, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_1

    .line 692
    .end local v0           #g:D
    .end local v5           #j:I
    .end local v6           #k:I
    :cond_5
    return-void
.end method
