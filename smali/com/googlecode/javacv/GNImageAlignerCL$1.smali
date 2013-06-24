.class Lcom/googlecode/javacv/GNImageAlignerCL$1;
.super Ljava/lang/Object;
.source "GNImageAlignerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/Parallel$Looper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/GNImageAlignerCL;->doHessianGradient([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

.field final synthetic val$constraintError:D

.field final synthetic val$scale:[D

.field final synthetic val$stepSize:D


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/GNImageAlignerCL;D[DD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iput-wide p2, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$stepSize:D

    iput-object p4, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$scale:[D

    iput-wide p5, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$constraintError:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loop(III)V
    .locals 6
    .parameter "from"
    .parameter "to"
    .parameter "looperID"

    .prologue
    .line 330
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 331
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAlignerCL;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v1, v2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 332
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v2, v2, v0

    invoke-interface {v2, v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$stepSize:D

    add-double/2addr v2, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->set(ID)V

    .line 333
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$scale:[D

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v2, v2, v0

    invoke-interface {v2, v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v4, v4, Lcom/googlecode/javacv/GNImageAlignerCL;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v4, v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 334
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAlignerCL;->constraintGrad:[D

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->this$0:Lcom/googlecode/javacv/GNImageAlignerCL;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL$1;->val$constraintError:D

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method
