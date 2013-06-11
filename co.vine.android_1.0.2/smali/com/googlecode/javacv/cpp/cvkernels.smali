.class public Lcom/googlecode/javacv/cpp/cvkernels;
.super Ljava/lang/Object;
.source "cvkernels.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            define = {
                "MAX_SIZE 16"
            }
            include = {
                "cvkernels.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            options = {
                "fastfpu"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/opencv/build/include/"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;,
        Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    }
.end annotation


# static fields
.field private static parallelData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/googlecode/javacv/cpp/cvkernels$1;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/cvkernels$1;-><init>()V

    sput-object v0, Lcom/googlecode/javacv/cpp/cvkernels;->parallelData:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static multiWarpColorTransform(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 27
    .parameter "data"
    .parameter "roi"
    .parameter "fillColor"

    .prologue
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v8

    .line 120
    .local v8, size:I
    sget-object v3, Lcom/googlecode/javacv/cpp/cvkernels;->parallelData:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    .line 123
    .local v4, pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v3, v4

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 124
    aget-object v3, v4, v16

    iget-object v3, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    if-eqz v3, :cond_0

    aget-object v3, v4, v16

    iget-object v3, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v3

    if-ge v3, v8, :cond_2

    .line 125
    :cond_0
    aget-object v3, v4, v16

    new-instance v9, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-direct {v9, v8}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;-><init>(I)V

    iput-object v9, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 126
    const/16 v18, 0x0

    .local v18, j:I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_2

    .line 127
    aget-object v3, v4, v16

    iget-object v3, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v10

    .line 128
    .local v10, d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 126
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 135
    .end local v10           #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .end local v18           #j:I
    :cond_2
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v8, :cond_3

    .line 136
    aget-object v3, v4, v16

    iget-object v3, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v10

    .line 137
    .restart local v10       #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v3

    #calls: Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->put(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    invoke-static {v10, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->access$100(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/cvkernels$KernelData;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 138
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 135
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 123
    .end local v10           #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 143
    .end local v18           #j:I
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    .line 144
    .local v17, img:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    .line 146
    .local v7, depth:I
    if-eqz p1, :cond_6

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v5

    .local v5, x:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v22

    .line 148
    .local v22, y:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v6

    .local v6, w:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v15

    .line 153
    .local v15, h:I
    :goto_3
    add-int v23, v22, v15

    array-length v0, v4

    move/from16 v24, v0

    new-instance v3, Lcom/googlecode/javacv/cpp/cvkernels$2;

    move-object/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/googlecode/javacv/cpp/cvkernels$2;-><init>([Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;IIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/Parallel;->loop(IIILcom/googlecode/javacv/Parallel$Looper;)V

    .line 166
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v8, :cond_a

    .line 167
    const/4 v11, 0x0

    .line 168
    .local v11, dstCount:I
    const/4 v13, 0x0

    .line 169
    .local v13, dstCountZero:I
    const/4 v12, 0x0

    .line 170
    .local v12, dstCountOutlier:I
    const-wide/16 v20, 0x0

    .line 171
    .local v20, srcDstDot:D
    const/4 v14, 0x0

    .line 172
    .local v14, dstDstDot:[D
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v3

    new-array v14, v3, [D

    .line 175
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_5
    array-length v3, v4

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 176
    aget-object v3, v4, v18

    iget-object v3, v3, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;->data:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v10

    .line 177
    .restart local v10       #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCount()I

    move-result v3

    add-int/2addr v11, v3

    .line 178
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountZero()I

    move-result v3

    add-int/2addr v13, v3

    .line 179
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountOutlier()I

    move-result v3

    add-int/2addr v12, v3

    .line 180
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDstDot()D

    move-result-wide v23

    add-double v20, v20, v23

    .line 181
    if-eqz v14, :cond_7

    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 182
    const/16 v19, 0x0

    .local v19, k:I
    :goto_6
    array-length v3, v14

    move/from16 v0, v19

    if-ge v0, v3, :cond_7

    .line 183
    aget-wide v23, v14, v19

    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v25

    add-double v23, v23, v25

    aput-wide v23, v14, v19

    .line 182
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 150
    .end local v5           #x:I
    .end local v6           #w:I
    .end local v10           #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .end local v11           #dstCount:I
    .end local v12           #dstCountOutlier:I
    .end local v13           #dstCountZero:I
    .end local v14           #dstDstDot:[D
    .end local v15           #h:I
    .end local v18           #j:I
    .end local v19           #k:I
    .end local v20           #srcDstDot:D
    .end local v22           #y:I
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #x:I
    const/16 v22, 0x0

    .line 151
    .restart local v22       #y:I
    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    .restart local v6       #w:I
    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v15

    .restart local v15       #h:I
    goto/16 :goto_3

    .line 175
    .restart local v10       #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .restart local v11       #dstCount:I
    .restart local v12       #dstCountOutlier:I
    .restart local v13       #dstCountZero:I
    .restart local v14       #dstDstDot:[D
    .restart local v18       #j:I
    .restart local v20       #srcDstDot:D
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 187
    .end local v10           #d:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCount(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountZero(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountOutlier(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 191
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDstDot(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 192
    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 166
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 197
    .end local v11           #dstCount:I
    .end local v12           #dstCountOutlier:I
    .end local v13           #dstCountZero:I
    .end local v14           #dstDstDot:[D
    .end local v18           #j:I
    .end local v20           #srcDstDot:D
    :cond_a
    return-void
.end method

.method public static native multiWarpColorTransform32F(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
.end method

.method public static native multiWarpColorTransform8U(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
.end method
