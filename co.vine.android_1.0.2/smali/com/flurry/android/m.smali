.class abstract Lcom/flurry/android/m;
.super Lcom/flurry/android/ao;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/m;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/ao;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V

    .line 20
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/flurry/android/m;->C()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/m;->D()Lcom/flurry/android/cz;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cz;

    .line 61
    invoke-virtual {p0}, Lcom/flurry/android/m;->E()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/flurry/android/m;->C()Lcom/flurry/android/FlurryAds;

    move-result-object v7

    new-instance v0, Lcom/flurry/android/cw;

    invoke-virtual {p0}, Lcom/flurry/android/m;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/m;->E()Lcom/flurry/android/AdUnit;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/android/m;->D()Lcom/flurry/android/cz;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/cw;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;I)V

    invoke-virtual {p0}, Lcom/flurry/android/m;->C()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v6}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "clicked"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public final onAdClosed(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "adClosed"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public final onAdFilled(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, "filled"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    return-void
.end method

.method public final onAdShown(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "rendered"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public final onRenderFailed(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "renderFailed"

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method
