.class public Lcom/flurry/android/AdCreative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final kAlignmentBottom:Ljava/lang/String; = "bottom"

.field public static final kAlignmentCenter:Ljava/lang/String; = "center"

.field public static final kAlignmentLeft:Ljava/lang/String; = "left"

.field public static final kAlignmentMiddle:Ljava/lang/String; = "middle"

.field public static final kAlignmentRight:Ljava/lang/String; = "right"

.field public static final kAlignmentTop:Ljava/lang/String; = "top"

.field public static final kFixBoth:Ljava/lang/String; = "both"

.field public static final kFixHeight:Ljava/lang/String; = "height"

.field public static final kFixNone:Ljava/lang/String; = "none"

.field public static final kFixWidth:Ljava/lang/String; = "width"

.field public static final kFormatBanner:Ljava/lang/String; = "banner"

.field public static final kFormatCustom:Ljava/lang/String; = "custom"

.field public static final kFormatTakeover:Ljava/lang/String; = "takeover"


# instance fields
.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/flurry/android/AdCreative;->i:I

    .line 27
    iput p2, p0, Lcom/flurry/android/AdCreative;->j:I

    .line 28
    iput-object p3, p0, Lcom/flurry/android/AdCreative;->k:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/flurry/android/AdCreative;->l:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/flurry/android/AdCreative;->m:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getAlignment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/AdCreative;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getFix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/AdCreative;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/AdCreative;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/flurry/android/AdCreative;->i:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/flurry/android/AdCreative;->j:I

    return v0
.end method
