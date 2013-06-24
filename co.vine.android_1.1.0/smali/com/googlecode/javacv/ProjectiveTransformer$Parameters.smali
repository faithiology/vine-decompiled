.class public Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
.super Ljava/lang/Object;
.source "ProjectiveTransformer.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformer$Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectiveTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# instance fields
.field private H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private constraintError:D

.field protected fakeIdentity:Z

.field private n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected projectiveParameters:[D

.field private t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field final synthetic this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

.field private updateNeeded:Z


# direct methods
.method protected constructor <init>(Lcom/googlecode/javacv/ProjectiveTransformer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    .line 251
    invoke-static {v0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->constraintError:D

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->updateNeeded:Z

    .line 254
    iput-boolean v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    .line 247
    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->reset(Z)V

    .line 248
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProjectiveTransformer;)V

    .line 530
    .local v0, p:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 531
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 4
    .parameter "p1"
    .parameter "inverse1"
    .parameter "p2"
    .parameter "inverse2"

    .prologue
    .line 372
    move-object v0, p1

    check-cast v0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    .local v0, pp1:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    move-object v1, p3

    check-cast v1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    .line 373
    .local v1, pp2:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    if-eqz v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3, p4}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->compose(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ZLcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V

    goto :goto_0
.end method

.method public compose(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ZLcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
    .locals 2
    .parameter "H1"
    .parameter "inverse1"
    .parameter "H2"
    .parameter "inverse2"

    .prologue
    .line 382
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 383
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p3, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 384
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->set(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V

    .line 395
    return-void

    .line 385
    :cond_0
    if-eqz p2, :cond_1

    .line 386
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 387
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, p3, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 388
    :cond_1
    if-eqz p4, :cond_2

    .line 389
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 390
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0
.end method

.method public get(I)D
    .locals 2
    .parameter "i"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public get()[D
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->size()I

    move-result v2

    new-array v1, v2, [D

    .line 268
    .local v1, p:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->get(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-object v1
.end method

.method public getConstraintError()D
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 345
    iget-wide v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->constraintError:D

    return-wide v0
.end method

.method public getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 399
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getN()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 403
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getR()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 407
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getSubspace()[D
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getT()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 411
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public isUpdateNeeded()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->updateNeeded:Z

    return v0
.end method

.method public preoptimize()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public reset(Z)V
    .locals 6
    .parameter "asIdentity"

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0, v4}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->setUpdateNeeded(Z)V

    .line 293
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    if-ne v0, v1, :cond_3

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    if-nez v0, :cond_2

    .line 298
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_4

    .line 311
    const/4 v0, 0x3

    new-array v0, v0, [D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    aget-wide v1, v1, v3

    aput-wide v1, v0, v3

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    aget-wide v1, v1, v5

    aput-wide v1, v0, v4

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    const/4 v2, 0x4

    aget-wide v1, v1, v2

    aput-wide v1, v0, v5

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_5

    .line 314
    const/4 v0, 0x6

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    goto :goto_0

    .line 316
    :cond_5
    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    goto :goto_0

    .line 298
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 314
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 316
    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public set(ID)V
    .locals 2
    .parameter "i"
    .parameter "p"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    aget-wide v0, v0, p1

    cmpl-double v0, v0, p2

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    aput-wide p2, v0, p1

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->setUpdateNeeded(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 288
    invoke-interface {p1}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->get()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->set([D)V

    .line 289
    check-cast p1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    .end local p1
    iget-boolean v0, p1, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    iput-boolean v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->fakeIdentity:Z

    .line 290
    return-void
.end method

.method public set(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
    .locals 8
    .parameter "setH"
    .parameter "inverse"

    .prologue
    const/16 v7, 0x8

    .line 348
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    array-length v2, v2

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    if-eqz v2, :cond_4

    .line 349
    if-eqz p2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 354
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v2, v2

    if-nez v2, :cond_2

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 357
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v5, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    aput-wide v3, v2, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eq p1, v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 361
    :cond_2
    sget-object v2, Lcom/googlecode/javacv/ProjectiveTransformer;->pts4x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v3, v3, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    .line 362
    .local v1, pts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 363
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 365
    .end local v1           #pts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->setUpdateNeeded(Z)V

    .line 369
    return-void

    .line 367
    :cond_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Set homography operation not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs set([D)V
    .locals 3
    .parameter "p"

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 278
    aget-wide v1, p1, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->set(ID)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public varargs setSubspace([D)V
    .locals 0
    .parameter "p"

    .prologue
    .line 526
    return-void
.end method

.method public setUpdateNeeded(Z)V
    .locals 0
    .parameter "updateNeeded"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->updateNeeded:Z

    .line 261
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 535
    const-string v2, "["

    .line 536
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->get()[D

    move-result-object v1

    .line 537
    .local v1, p:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v1, v0

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    return-object v2
.end method

.method protected update()V
    .locals 11

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->isUpdateNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    array-length v0, v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 423
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v1, 0x8

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 501
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->setUpdateNeeded(Z)V

    goto :goto_0

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_1

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->K2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_7

    .line 452
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v10, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints2:[D

    .line 453
    .local v10, src:[D
    const/4 v0, 0x6

    new-array v9, v0, [D

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    const/4 v2, 0x3

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->referencePoints1:[D

    const/4 v2, 0x5

    aget-wide v1, v1, v2

    aput-wide v1, v9, v0

    .line 456
    .local v9, dst:[D
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_5

    .line 457
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_6

    .line 460
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTranspose(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 463
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProjectiveTransformer;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v2, -0x4010

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 464
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v2, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->invK2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->K1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object v0, v10

    move-object v1, v9

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_1

    .line 473
    .end local v9           #dst:[D
    .end local v10           #src:[D
    :cond_7
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_a

    .line 474
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveTransformer;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 483
    :goto_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_8

    .line 484
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 486
    :cond_8
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_9

    .line 487
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 489
    :cond_9
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 490
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvRodrigues2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    .line 491
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 494
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->t2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v2, -0x4010

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v5, 0x3ff0

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x2

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto/16 :goto_1

    .line 476
    :cond_a
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_b

    .line 477
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->n2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->projectiveParameters:[D

    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_2
.end method
