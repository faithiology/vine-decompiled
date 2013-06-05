.class public Lco/vine/android/widget/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "MultiTouchImageView.java"


# static fields
.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_PAN:I = 0x1

.field private static final GESTURE_ZOOM:I = 0x2

.field private static final MIN_SCALE_FACTOR:F = 1.0f


# instance fields
.field protected mBitmapHeight:F

.field protected mBitmapWidth:F

.field private mCurrentMinScale:F

.field private mGesture:I

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLastZoomDistance:F

.field protected final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixBounds:Landroid/graphics/RectF;

.field private final mMatrixValues:[F

.field private mMidTouchX:F

.field private mMidTouchY:F

.field private final mStartBounds:Landroid/graphics/RectF;

.field private mTotalScaleFactor:F

.field protected mTransformBounds:Landroid/graphics/RectF;

.field private mViewHeight:F

.field private mViewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/high16 v1, 0x3f80

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    .line 55
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    .line 56
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F

    .line 63
    invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v1, 0x3f80

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    .line 55
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    .line 56
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F

    .line 68
    invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x3f80

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 52
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    .line 55
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    .line 56
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F

    .line 73
    invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->initMultiTouchImageView()V

    .line 74
    return-void
.end method

.method private calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F
    .locals 3
    .parameter "fromWidth"
    .parameter "toWidth"
    .parameter "fromHeight"
    .parameter "toHeight"
    .parameter "scaleType"

    .prologue
    .line 309
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p5, v1, :cond_1

    .line 310
    cmpl-float v1, p1, p3

    if-lez v1, :cond_0

    .line 311
    div-float v0, p4, p3

    .line 319
    .local v0, scale:F
    :goto_0
    return v0

    .line 313
    .end local v0           #scale:F
    :cond_0
    div-float v0, p2, p1

    .restart local v0       #scale:F
    goto :goto_0

    .line 316
    .end local v0           #scale:F
    :cond_1
    div-float v1, p2, p1

    div-float v2, p4, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0       #scale:F
    goto :goto_0
.end method

.method private resetGesture()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    .line 293
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F

    .line 294
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F

    .line 295
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F

    .line 296
    iput v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F

    .line 297
    return-void
.end method

.method private resetScale()V
    .locals 24

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->updateBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 227
    .local v9, bounds:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    .line 228
    .local v20, transformBounds:Landroid/graphics/RectF;
    iget v3, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_0

    iget v3, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_0

    iget v3, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_0

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_6

    .line 231
    :cond_0
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v22, 0x4000

    div-float v8, v8, v22

    add-float v10, v3, v8

    .line 232
    .local v10, centerX:F
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v22, 0x4000

    div-float v8, v8, v22

    add-float v11, v3, v8

    .line 233
    .local v11, centerY:F
    iget v3, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v22, 0x4000

    div-float v8, v8, v22

    add-float v15, v3, v8

    .line 234
    .local v15, imageCenterX:F
    iget v3, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v22, 0x4000

    div-float v8, v8, v22

    add-float v16, v3, v8

    .line 235
    .local v16, imageCenterY:F
    sub-float v13, v10, v15

    .line 236
    .local v13, deltaX:F
    sub-float v14, v11, v16

    .line 242
    .local v14, deltaY:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_2

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 247
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F

    .line 248
    .local v12, currentMinScale:F
    move-object/from16 v0, p0

    iget v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    cmpg-float v3, v3, v12

    if-gez v3, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    div-float v19, v12, v3

    .line 250
    .local v19, scaleRatio:F
    move-object/from16 v0, p0

    iput v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v8, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    const/high16 v22, 0x4000

    div-float v8, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v8, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 254
    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F

    .line 255
    .local v4, bitmapWidth:F
    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F

    .line 256
    .local v6, bitmapHeight:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 257
    .local v5, tbWidth:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 258
    .local v7, tbHeight:F
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F

    move-result v21

    .line 261
    .local v21, viewScale:F
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 262
    .local v17, newBounds:Landroid/graphics/RectF;
    mul-float v3, v4, v21

    float-to-int v3, v3

    float-to-int v8, v5

    if-le v3, v8, :cond_3

    .line 263
    mul-float v3, v4, v21

    sub-float/2addr v3, v5

    const/high16 v8, 0x4000

    div-float v18, v3, v8

    .line 264
    .local v18, offset:F
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 265
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 267
    .end local v18           #offset:F
    :cond_3
    mul-float v3, v6, v21

    float-to-int v3, v3

    float-to-int v8, v7

    if-le v3, v8, :cond_4

    .line 268
    mul-float v3, v6, v21

    sub-float/2addr v3, v7

    const/high16 v8, 0x4000

    div-float v18, v3, v8

    .line 269
    .restart local v18       #offset:F
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 270
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    add-float v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 272
    .end local v18           #offset:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 274
    .end local v4           #bitmapWidth:F
    .end local v5           #tbWidth:F
    .end local v6           #bitmapHeight:F
    .end local v7           #tbHeight:F
    .end local v17           #newBounds:Landroid/graphics/RectF;
    .end local v19           #scaleRatio:F
    .end local v21           #viewScale:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 276
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v12           #currentMinScale:F
    .end local v13           #deltaX:F
    .end local v14           #deltaY:F
    .end local v15           #imageCenterX:F
    .end local v16           #imageCenterY:F
    :cond_6
    return-void
.end method

.method private touchDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 301
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 302
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private updateBounds()Landroid/graphics/RectF;
    .locals 9

    .prologue
    .line 279
    iget-object v6, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixValues:[F

    .line 280
    .local v6, values:[F
    iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 281
    const/4 v7, 0x2

    aget v4, v6, v7

    .line 282
    .local v4, tX:F
    const/4 v7, 0x5

    aget v5, v6, v7

    .line 283
    .local v5, tY:F
    iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    mul-float v3, v7, v8

    .line 284
    .local v3, scaledWidth:F
    iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    mul-float v2, v7, v8

    .line 285
    .local v2, scaledHeight:F
    add-float v1, v4, v3

    .line 286
    .local v1, right:F
    add-float v0, v5, v2

    .line 287
    .local v0, bottom:F
    iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    invoke-virtual {v7, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    iget-object v7, p0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    return-object v7
.end method


# virtual methods
.method initMultiTouchImageView()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    .line 78
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lco/vine/android/widget/MultiTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 84
    invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    .line 85
    invoke-virtual {p0}, Lco/vine/android/widget/MultiTouchImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    iget v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/widget/MultiTouchImageView;->setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "event"

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 218
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .line 221
    :goto_0
    return v23

    .line 104
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    cmpl-float v23, v23, v24

    if-lez v23, :cond_1

    .line 105
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 109
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F

    .line 112
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    .line 221
    :cond_0
    :goto_2
    const/16 v23, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 117
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 118
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F

    .line 119
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F

    .line 120
    invoke-direct/range {p0 .. p1}, Lco/vine/android/widget/MultiTouchImageView;->touchDistance(Landroid/view/MotionEvent;)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    .line 121
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    goto :goto_2

    .line 126
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 128
    .local v11, evX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 129
    .local v12, evY:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F

    move/from16 v23, v0

    sub-float v7, v11, v23

    .line 130
    .local v7, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F

    move/from16 v23, v0

    sub-float v8, v12, v23

    .line 132
    .local v8, deltaY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/RectF;->left:F

    .line 133
    .local v13, leftBound:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    .line 134
    .local v19, rightBound:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    .line 135
    .local v21, topBound:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 137
    .local v5, bottomBound:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    .line 138
    .local v15, panBounds:Landroid/graphics/RectF;
    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    .line 139
    .local v16, panLeft:F
    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    .line 140
    .local v18, panTop:F
    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    .line 141
    .local v17, panRight:F
    iget v14, v15, Landroid/graphics/RectF;->bottom:F

    .line 142
    .local v14, panBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F

    move/from16 v23, v0

    cmpl-float v23, v23, v12

    if-lez v23, :cond_7

    const/4 v9, 0x1

    .line 143
    .local v9, directionDown:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F

    move/from16 v23, v0

    cmpl-float v23, v23, v11

    if-lez v23, :cond_8

    const/4 v10, 0x1

    .line 144
    .local v10, directionRight:Z
    :goto_4
    if-eqz v10, :cond_a

    .line 145
    cmpl-float v23, v19, v17

    if-lez v23, :cond_9

    add-float v23, v19, v7

    cmpg-float v23, v23, v17

    if-gez v23, :cond_9

    .line 146
    sub-float v7, v17, v19

    .line 159
    :cond_3
    :goto_5
    if-eqz v9, :cond_d

    .line 160
    cmpl-float v23, v5, v14

    if-lez v23, :cond_c

    add-float v23, v5, v8

    cmpg-float v23, v23, v14

    if-gez v23, :cond_c

    .line 161
    sub-float v8, v14, v5

    .line 172
    :cond_4
    :goto_6
    const/16 v23, 0x0

    cmpl-float v23, v7, v23

    if-nez v23, :cond_5

    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-eqz v23, :cond_6

    .line 173
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownX:F

    .line 178
    move-object/from16 v0, p0

    iput v12, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastDownY:F

    goto/16 :goto_2

    .line 142
    .end local v9           #directionDown:Z
    .end local v10           #directionRight:Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 143
    .restart local v9       #directionDown:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 147
    .restart local v10       #directionRight:Z
    :cond_9
    cmpg-float v23, v19, v17

    if-gtz v23, :cond_3

    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5

    .line 152
    :cond_a
    cmpg-float v23, v13, v16

    if-gez v23, :cond_b

    add-float v23, v13, v7

    cmpl-float v23, v23, v16

    if-lez v23, :cond_b

    .line 153
    sub-float v7, v16, v13

    goto :goto_5

    .line 154
    :cond_b
    cmpl-float v23, v13, v16

    if-ltz v23, :cond_3

    .line 155
    const/4 v7, 0x0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_5

    .line 162
    :cond_c
    cmpg-float v23, v5, v14

    if-gtz v23, :cond_4

    .line 163
    const/4 v8, 0x0

    goto :goto_6

    .line 166
    :cond_d
    cmpg-float v23, v21, v18

    if-gez v23, :cond_e

    add-float v23, v21, v8

    cmpl-float v23, v23, v18

    if-lez v23, :cond_e

    .line 167
    sub-float v8, v18, v21

    goto :goto_6

    .line 168
    :cond_e
    cmpl-float v23, v21, v18

    if-ltz v23, :cond_4

    .line 169
    const/4 v8, 0x0

    goto :goto_6

    .line 179
    .end local v5           #bottomBound:F
    .end local v7           #deltaX:F
    .end local v8           #deltaY:F
    .end local v9           #directionDown:Z
    .end local v10           #directionRight:Z
    .end local v11           #evX:F
    .end local v12           #evY:F
    .end local v13           #leftBound:F
    .end local v14           #panBottom:F
    .end local v15           #panBounds:Landroid/graphics/RectF;
    .end local v16           #panLeft:F
    .end local v17           #panRight:F
    .end local v18           #panTop:F
    .end local v19           #rightBound:F
    .end local v21           #topBound:F
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 180
    invoke-direct/range {p0 .. p1}, Lco/vine/android/widget/MultiTouchImageView;->touchDistance(Landroid/view/MotionEvent;)F

    move-result v22

    .line 181
    .local v22, touchDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    move/from16 v23, v0

    div-float v20, v22, v23

    .line 182
    .local v20, scaleRatio:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    move/from16 v23, v0

    mul-float v23, v23, v20

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    .line 183
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->updateBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 184
    .local v6, bounds:Landroid/graphics/RectF;
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_10

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_10

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_10

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_10

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMidTouchY:F

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 190
    :goto_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/widget/MultiTouchImageView;->mLastZoomDistance:F

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    .line 188
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_7

    .line 193
    .end local v6           #bounds:Landroid/graphics/RectF;
    .end local v20           #scaleRatio:F
    .end local v22           #touchDistance:F
    :cond_11
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    goto/16 :goto_0

    .line 198
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 199
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V

    goto/16 :goto_2

    .line 204
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 205
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetScale()V

    .line 207
    :cond_12
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V

    goto/16 :goto_2

    .line 211
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mGesture:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 212
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetScale()V

    .line 213
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/MultiTouchImageView;->resetGesture()V

    goto/16 :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F

    .line 97
    iget v0, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    iget v1, p0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/widget/MultiTouchImageView;->setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V
    .locals 20
    .parameter "width"
    .parameter "height"
    .parameter "scaleType"
    .parameter "resetImage"

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewWidth:F

    move/from16 v19, v0

    .line 333
    .local v19, viewWidth:F
    sub-float v2, v19, p1

    const/high16 v4, 0x4000

    div-float v12, v2, v4

    .line 334
    .local v12, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mViewHeight:F

    move/from16 v18, v0

    .line 335
    .local v18, viewHeight:F
    sub-float v2, v18, p2

    const/high16 v4, 0x4000

    div-float v13, v2, v4

    .line 336
    .local v13, deltaY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 337
    .local v3, startWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 338
    .local v5, startHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 339
    new-instance v2, Landroid/graphics/RectF;

    add-float v4, v12, p1

    add-float v6, v13, p2

    invoke-direct {v2, v12, v13, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    .line 343
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    .line 344
    invoke-direct/range {v2 .. v7}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mCurrentMinScale:F

    .line 346
    :cond_0
    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    :goto_1
    return-void

    .line 341
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTransformBounds:Landroid/graphics/RectF;

    add-float v4, v12, p1

    add-float v6, v13, p2

    invoke-virtual {v2, v12, v13, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 350
    :cond_2
    const/4 v15, 0x0

    .line 351
    .local v15, marginX:F
    const/16 v16, 0x0

    .line 352
    .local v16, marginY:F
    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapWidth:F

    .line 353
    .local v7, bitmapWidth:F
    move-object/from16 v0, p0

    iget v9, v0, Lco/vine/android/widget/MultiTouchImageView;->mBitmapHeight:F

    .line 354
    .local v9, bitmapHeight:F
    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_3

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 355
    invoke-direct/range {v6 .. v11}, Lco/vine/android/widget/MultiTouchImageView;->calculateScale(FFFFLandroid/widget/ImageView$ScaleType;)F

    move-result v14

    .line 358
    .local v14, initialScale:F
    mul-float v2, v14, v7

    sub-float v2, v19, v2

    const/high16 v4, 0x4000

    div-float v15, v2, v4

    .line 359
    mul-float v2, v14, v9

    sub-float v2, v18, v2

    const/high16 v4, 0x4000

    div-float v16, v2, v4

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    .line 361
    .local v17, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 362
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/widget/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 365
    .end local v14           #initialScale:F
    .end local v17           #matrix:Landroid/graphics/Matrix;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    sub-float v4, v19, v15

    sub-float v6, v18, v16

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mMatrixBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/MultiTouchImageView;->mStartBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 367
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iput v2, v0, Lco/vine/android/widget/MultiTouchImageView;->mTotalScaleFactor:F

    goto :goto_1
.end method
