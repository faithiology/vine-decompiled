.class public Lco/vine/android/widget/TypefacesSpan;
.super Landroid/text/style/TypefaceSpan;
.source "TypefacesSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "family"
    .parameter "type"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    .line 17
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "paint"
    .parameter "tf"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 21
    iget-object v0, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lco/vine/android/widget/TypefacesSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 22
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 26
    iget-object v0, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lco/vine/android/widget/TypefacesSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 27
    return-void
.end method
