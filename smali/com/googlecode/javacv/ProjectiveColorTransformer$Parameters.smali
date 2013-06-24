.class public Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
.super Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
.source "ProjectiveColorTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProjectiveColorTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected colorParameters:[D

.field protected identityColorParameters:[D

.field final synthetic this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/googlecode/javacv/ProjectiveColorTransformer;)V
    .locals 10
    .parameter

    .prologue
    const-wide/high16 v8, 0x4008

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 181
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProjectiveTransformer;)V

    .line 213
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    .line 214
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 182
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    iget v1, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    add-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    .line 183
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    if-lez v0, :cond_0

    .line 184
    invoke-static {v5, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 185
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 187
    :cond_0
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    if-lez v0, :cond_1

    .line 188
    invoke-static {v5, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 189
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 192
    :cond_1
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    sparse-switch v0, :sswitch_data_0

    .line 200
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :sswitch_0
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :sswitch_1
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    add-double/2addr v1, v3

    div-double/2addr v1, v8

    aput-wide v1, v0, v6

    .line 202
    :cond_2
    :goto_0
    iget v0, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :pswitch_0
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :sswitch_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 197
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    aput-wide v1, v0, v7

    .line 198
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0

    .line 199
    :sswitch_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    const/16 v2, 0x9

    invoke-virtual {v0, v6, v1, v6, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 203
    :pswitch_1
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    iget v1, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v4, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    aput-wide v2, v0, v1

    .line 210
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->reset(Z)V

    .line 211
    return-void

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    iget v2, p1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    invoke-virtual {v0, v6, v1, v2, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_1

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProjectiveColorTransformer;)V

    .line 374
    .local v0, p:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 375
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v0

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
    .line 180
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 0
    .parameter "p1"
    .parameter "inverse1"
    .parameter "p2"
    .parameter "inverse2"

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->compose(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 277
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->composeColor(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 278
    return-void
.end method

.method public composeColor(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 13
    .parameter "p1"
    .parameter "inverse1"
    .parameter "p2"
    .parameter "inverse2"

    .prologue
    .line 281
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    move-object v10, p1

    .line 283
    check-cast v10, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .local v10, pp1:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    move-object/from16 v11, p3

    check-cast v11, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 284
    .local v11, pp2:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getA()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v9

    .local v9, A1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getB()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    .line 285
    .local v1, b1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v11}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getA()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .local v0, A2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v11}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getB()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    .line 287
    .local v4, b2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_3

    .line 288
    iget-boolean v2, v10, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->fakeIdentity:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_2

    .line 289
    sget-object v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->temp3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 290
    .local v12, temp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v1, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 291
    move-object v1, v12

    .line 294
    .end local v12           #temp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_2
    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 295
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 305
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_4

    .line 306
    if-nez v9, :cond_8

    .line 307
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 315
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    sparse-switch v2, :sswitch_data_0

    .line 323
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 296
    :cond_5
    if-nez v1, :cond_6

    .line 297
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v4, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 298
    :cond_6
    if-nez v4, :cond_7

    .line 299
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 301
    :cond_7
    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v5, 0x3ff0

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto :goto_0

    .line 308
    :cond_8
    if-nez v0, :cond_9

    .line 309
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_1

    .line 311
    :cond_9
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_1

    .line 316
    :sswitch_0
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 317
    :sswitch_1
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008

    div-double/2addr v5, v7

    aput-wide v5, v2, v3

    .line 325
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    packed-switch v2, :pswitch_data_0

    .line 330
    :pswitch_0
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 319
    :sswitch_2
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 320
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 321
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    aput-wide v5, v2, v3

    goto :goto_2

    .line 322
    :sswitch_3
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_2

    .line 326
    :pswitch_1
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 327
    :pswitch_2
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v3, v3, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008

    div-double/2addr v5, v7

    aput-wide v5, v2, v3

    .line 332
    :cond_b
    :goto_3
    return-void

    .line 329
    :pswitch_3
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v6, v6, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    const/4 v7, 0x3

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_3

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public get(I)D
    .locals 3
    .parameter "i"

    .prologue
    .line 227
    invoke-super {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->size()I

    move-result v0

    .line 228
    .local v0, s:I
    if-ge p1, v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->get(I)D

    move-result-wide v1

    .line 231
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    sub-int v2, p1, v0

    aget-wide v1, v1, v2

    goto :goto_0
.end method

.method public getA()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->update()V

    .line 336
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getB()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->update()V

    .line 340
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getColorParameters()[D
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    return-object v0
.end method

.method public getIdentityColorParameters()[D
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    return-object v0
.end method

.method public reset(Z)V
    .locals 0
    .parameter "asIdentity"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->reset(Z)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->resetColor(Z)V

    .line 248
    return-void
.end method

.method public resetColor(Z)V
    .locals 2
    .parameter "asIdentity"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->fakeIdentity:Z

    if-eq v0, p1, :cond_1

    .line 253
    :cond_0
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->fakeIdentity:Z

    .line 254
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->identityColorParameters:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->setUpdateNeeded(Z)V

    .line 258
    :cond_1
    return-void
.end method

.method public set(ID)V
    .locals 3
    .parameter "i"
    .parameter "p"

    .prologue
    .line 235
    invoke-super {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->size()I

    move-result v0

    .line 236
    .local v0, s:I
    if-ge p1, v0, :cond_1

    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->set(ID)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    sub-int v2, p1, v0

    aget-wide v1, v1, v2

    cmpl-double v1, v1, p2

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    sub-int v2, p1, v0

    aput-wide p2, v1, v2

    .line 241
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->setUpdateNeeded(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->size()I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v1, v1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v1, v1, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected update()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->isUpdateNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    sparse-switch v0, :sswitch_data_0

    .line 357
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :sswitch_0
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :sswitch_1
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 351
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 352
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 359
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :pswitch_0
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 353
    :sswitch_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 354
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 355
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    aget-wide v1, v1, v5

    invoke-virtual {v0, v7, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_1

    .line 356
    :sswitch_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    const/16 v2, 0x9

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_1

    .line 360
    :pswitch_1
    sget-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 362
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 363
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 368
    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->update()V

    .line 369
    invoke-virtual {p0, v4}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->setUpdateNeeded(Z)V

    goto/16 :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->colorParameters:[D

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    iget v2, v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_2

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
