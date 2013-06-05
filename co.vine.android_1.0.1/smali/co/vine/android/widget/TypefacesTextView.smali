.class public Lco/vine/android/widget/TypefacesTextView;
.super Landroid/widget/TextView;
.source "TypefacesTextView.java"


# instance fields
.field private mStyle:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v1, Lco/vine/android/R$styleable;->VineTextView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/TypefacesTextView;->mStyle:I

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-static {p1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    iget v2, p0, Lco/vine/android/widget/TypefacesTextView;->mStyle:I

    iget v3, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    invoke-virtual {v1, v2, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Lco/vine/android/widget/TypefacesTextView;->mStyle:I

    invoke-virtual {p0, v1, v2}, Lco/vine/android/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3
    .parameter "tf"
    .parameter "style"

    .prologue
    .line 44
    invoke-virtual {p0}, Lco/vine/android/widget/TypefacesTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    iget v2, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    invoke-virtual {v1, p2, v2}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    return-void
.end method
