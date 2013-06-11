.class public Lco/vine/android/widget/OverlayImageView;
.super Landroid/widget/ImageView;
.source "OverlayImageView.java"


# instance fields
.field private mFramed:Z

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/OverlayImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/OverlayImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/OverlayImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v2, Lco/vine/android/R$styleable;->OverlayImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0, v1}, Lco/vine/android/widget/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-boolean v2, p0, Lco/vine/android/widget/OverlayImageView;->mFramed:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->getMeasuredWidth()I

    move-result v1

    .line 117
    .local v1, width:I
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->getMeasuredHeight()I

    move-result v0

    .line 118
    .local v0, height:I
    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->invalidate()V

    .line 121
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 66
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 70
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 99
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->invalidate()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 74
    iget v3, p0, Lco/vine/android/widget/OverlayImageView;->mImageWidth:I

    .line 75
    .local v3, imageWidth:I
    iget v2, p0, Lco/vine/android/widget/OverlayImageView;->mImageHeight:I

    .line 76
    .local v2, imageHeight:I
    if-lez v3, :cond_2

    if-lez v2, :cond_2

    .line 77
    invoke-static {v3, p1}, Lco/vine/android/widget/OverlayImageView;->getDefaultSize(II)I

    move-result v4

    .line 78
    .local v4, width:I
    invoke-static {v2, p2}, Lco/vine/android/widget/OverlayImageView;->getDefaultSize(II)I

    move-result v0

    .line 79
    .local v0, height:I
    mul-int v5, v3, v0

    .line 80
    .local v5, widthScale:I
    mul-int v1, v2, v4

    .line 81
    .local v1, heightScale:I
    if-le v5, v1, :cond_1

    .line 82
    div-int v0, v1, v3

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v0}, Lco/vine/android/widget/OverlayImageView;->setMeasuredDimension(II)V

    .line 90
    .end local v0           #height:I
    .end local v1           #heightScale:I
    .end local v4           #width:I
    .end local v5           #widthScale:I
    :goto_1
    iget-object v6, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6}, Lco/vine/android/widget/OverlayImageView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void

    .line 83
    .restart local v0       #height:I
    .restart local v1       #heightScale:I
    .restart local v4       #width:I
    .restart local v5       #widthScale:I
    :cond_1
    if-ge v5, v1, :cond_0

    .line 84
    div-int v4, v5, v2

    goto :goto_0

    .line 88
    .end local v0           #height:I
    .end local v1           #heightScale:I
    .end local v4           #width:I
    .end local v5           #widthScale:I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 109
    .local v0, changed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/widget/OverlayImageView;->mFramed:Z

    .line 110
    iget-object v1, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lco/vine/android/widget/OverlayImageView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return v0
.end method

.method public setImageSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    iget v1, p0, Lco/vine/android/widget/OverlayImageView;->mImageWidth:I

    .line 142
    .local v1, oldWidth:I
    iget v0, p0, Lco/vine/android/widget/OverlayImageView;->mImageHeight:I

    .line 143
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 144
    :cond_0
    iput p1, p0, Lco/vine/android/widget/OverlayImageView;->mImageWidth:I

    .line 145
    iput p2, p0, Lco/vine/android/widget/OverlayImageView;->mImageHeight:I

    .line 146
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->requestLayout()V

    .line 148
    :cond_1
    return-void
.end method

.method public setOverlayDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 94
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/widget/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 124
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 125
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    iget-object v0, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lco/vine/android/widget/OverlayImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    iput-object p1, p0, Lco/vine/android/widget/OverlayImageView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 136
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/widget/OverlayImageView;->requestLayout()V

    .line 138
    :cond_2
    return-void
.end method
