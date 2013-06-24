.class public final enum Lcom/googlecode/javacv/FrameGrabber$ImageMode;
.super Ljava/lang/Enum;
.source "FrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/FrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/javacv/FrameGrabber$ImageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/javacv/FrameGrabber$ImageMode;

.field public static final enum COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

.field public static final enum GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

.field public static final enum RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacv/FrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/javacv/FrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/javacv/FrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->$VALUES:[Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/javacv/FrameGrabber$ImageMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 159
    const-class v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/javacv/FrameGrabber$ImageMode;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->$VALUES:[Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    invoke-virtual {v0}, [Lcom/googlecode/javacv/FrameGrabber$ImageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    return-object v0
.end method
