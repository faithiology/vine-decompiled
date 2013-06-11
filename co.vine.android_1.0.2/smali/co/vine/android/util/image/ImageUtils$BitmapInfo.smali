.class public Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/image/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final origHeight:I

.field public final origWidth:I

.field public final scale:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;III)V
    .locals 0
    .parameter "bitmap"
    .parameter "scale"
    .parameter "origWidth"
    .parameter "origHeight"

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p1, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 928
    iput p2, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->scale:I

    .line 929
    iput p3, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I

    .line 930
    iput p4, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I

    .line 931
    return-void
.end method
