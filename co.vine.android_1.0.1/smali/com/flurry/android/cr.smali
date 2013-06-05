.class final Lcom/flurry/android/cr;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic eO:Landroid/content/Context;

.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/flurry/android/cr;->ee:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cr;->eO:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/flurry/android/cr;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cr;->eO:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;

    move-result-object v0

    .line 1649
    iget-object v1, p0, Lcom/flurry/android/cr;->ee:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v1, v0}, Lcom/flurry/android/FlurryAds;->e(Ljava/util/List;)V

    .line 1650
    return-void
.end method
