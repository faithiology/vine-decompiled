.class final Lcom/flurry/android/cp;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic eO:Landroid/content/Context;

.field private synthetic eP:Ljava/lang/String;

.field private synthetic eQ:Lcom/flurry/android/ac;

.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/ac;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2668
    iput-object p1, p0, Lcom/flurry/android/cp;->ee:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cp;->eO:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/cp;->eP:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/cp;->eQ:Lcom/flurry/android/ac;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/flurry/android/cp;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cp;->eO:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/cp;->eP:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cp;->eQ:Lcom/flurry/android/ac;

    invoke-virtual {v3}, Lcom/flurry/android/ac;->h()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    .line 2673
    return-void
.end method
