.class Lcom/googlecode/javacv/GNImageAligner$2;
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

.field final synthetic val$m:I

.field final synthetic val$scale:[D

.field final synthetic val$stepSize:D


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/GNImageAligner;[DID)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iput-object p2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$scale:[D

    iput p3, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$m:I

    iput-wide p4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$stepSize:D

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
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 630
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 631
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v2, v2, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v0, v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v2, v2, v0

    invoke-static {v2, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    .line 633
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$scale:[D

    aget-wide v4, v4, v0

    aput-wide v4, v2, v0

    .line 630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    aget-object v4, v4, p3

    iget v5, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$m:I

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    aget-object v2, v2, p3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v4, v4, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v4, v0, v4

    aget-wide v5, v2, v4

    iget-wide v7, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$stepSize:D

    add-double/2addr v5, v7

    aput-wide v5, v2, v4

    .line 637
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v4, v4, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v2, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 638
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v4, v4, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    aget-object v4, v4, p3

    invoke-interface {v2, v4}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->setSubspace([D)V

    .line 639
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->val$scale:[D

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner;->tempSubspaceParameters:[[D

    aget-object v4, v4, p3

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v5, v5, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v5, v0, v5

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v6, v6, Lcom/googlecode/javacv/GNImageAligner;->subspaceParameters:[D

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v7, v0, v7

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 640
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v2, v2, Lcom/googlecode/javacv/GNImageAligner;->n:I

    if-ge v1, v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v4, v4, v3

    invoke-interface {v4, v1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v4

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v6, v6, Lcom/googlecode/javacv/GNImageAligner;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget v7, v7, Lcom/googlecode/javacv/GNImageAligner;->n:I

    sub-int v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v6, v1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 642
    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v4, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceCorrelated:[Z

    aget-boolean v5, v4, v1

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAligner$2;->this$0:Lcom/googlecode/javacv/GNImageAligner;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner;->subspaceJacobian:[[D

    aget-object v2, v2, v0

    aget-wide v6, v2, v1

    cmpl-double v2, v6, v9

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v2, v5

    aput-boolean v2, v4, v1

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 642
    goto :goto_2

    .line 645
    .end local v1           #j:I
    :cond_3
    return-void
.end method
