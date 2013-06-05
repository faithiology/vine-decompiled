.class public final enum Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;
.super Ljava/lang/Enum;
.source "PS3EyeFrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/PS3EyeFrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Triggered"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

.field public static final enum HAS_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

.field public static final enum NO_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

.field public static final enum NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    const-string v1, "NO_TRIGGER"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    new-instance v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    const-string v1, "HAS_FRAME"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->HAS_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    new-instance v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    const-string v1, "NO_FRAME"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->HAS_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    aput-object v1, v0, v4

    sput-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->$VALUES:[Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;
    .locals 1
    .parameter "name"

    .prologue
    .line 106
    const-class v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->$VALUES:[Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    invoke-virtual {v0}, [Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    return-object v0
.end method
