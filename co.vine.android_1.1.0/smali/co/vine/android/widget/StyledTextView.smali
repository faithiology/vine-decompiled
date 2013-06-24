.class public Lco/vine/android/widget/StyledTextView;
.super Lco/vine/android/widget/TypefacesTextView;
.source "StyledTextView.java"


# instance fields
.field init:Z

.field private mListener:Lco/vine/android/widget/SpanClickListener;

.field private mOriginalText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/StyledTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/StyledTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/widget/StyledTextView;->init:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lco/vine/android/widget/TypefacesTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method public setSpanClickListener(Lco/vine/android/widget/SpanClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 39
    iput-object p1, p0, Lco/vine/android/widget/StyledTextView;->mListener:Lco/vine/android/widget/SpanClickListener;

    .line 40
    return-void
.end method

.method public setStyledText(Ljava/lang/String;[Landroid/text/style/StyleSpan;)V
    .locals 2
    .parameter "styledText"
    .parameter "mStyleSpanBoldSingle"

    .prologue
    .line 44
    iput-object p1, p0, Lco/vine/android/widget/StyledTextView;->mOriginalText:Ljava/lang/String;

    .line 45
    const/16 v0, 0x22

    invoke-static {p2, p1, v0}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lco/vine/android/widget/StyledTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    return-void
.end method
