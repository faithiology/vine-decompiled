.class public Lco/vine/android/recorder/RsYuv;
.super Ljava/lang/Object;
.source "RsYuv.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private mAllocationIn:Landroid/renderscript/Allocation;

.field private mAllocationOut:Landroid/renderscript/Allocation;

.field private mYuv:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 5
    .parameter "rs"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 37
    invoke-static {p1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 38
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 39
    .local v0, tb:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 40
    invoke-virtual {v0, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 42
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/renderscript/Allocation;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    mul-int v2, p3, p2

    div-int/lit8 v3, p3, 0x2

    div-int/lit8 v4, p2, 0x2

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/renderscript/Allocation;

    .line 45
    iget-object v1, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v2, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 49
    return-void

    .line 47
    .end local v0           #tb:Landroid/renderscript/Type$Builder;
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "You can\'t use this yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public execute([BLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "yuv"
    .parameter "b"

    .prologue
    .line 52
    iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mAllocationIn:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 53
    iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mYuv:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v1, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 54
    iget-object v0, p0, Lco/vine/android/recorder/RsYuv;->mAllocationOut:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method
