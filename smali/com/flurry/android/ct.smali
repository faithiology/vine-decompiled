.class final Lcom/flurry/android/ct;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic eO:Landroid/content/Context;

.field private synthetic eR:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1558
    iput-object p2, p0, Lcom/flurry/android/ct;->eO:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/ct;->eR:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/flurry/android/ct;->eO:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/ct;->eR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAds;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1564
    return-void
.end method
