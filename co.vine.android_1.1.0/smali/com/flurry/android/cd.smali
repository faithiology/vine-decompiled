.class final Lcom/flurry/android/cd;
.super Lcom/flurry/android/az;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/cd;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/android/az;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/flurry/android/bp;->p(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    const-string v1, "com.flurry.millennial.MYAPID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v0, Lcom/flurry/android/cd;->d:Ljava/lang/String;

    const-string v1, "The meta-data should include not empty value for com.flurry.millennial.MYAPID key in AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 44
    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ao;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/android/ar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/ar;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/android/bi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/bi;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final b()Lcom/flurry/android/av;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/flurry/android/av;

    const-string v1, "MMAdView"

    const-string v2, "4.6.0"

    const-string v3, "com.millennialmedia.android.MMAdView"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/av;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final c()Lcom/flurry/android/av;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/flurry/android/av;

    const-string v1, "MMAdView"

    const-string v2, "4.6.0"

    const-string v3, "com.millennialmedia.android.MMAdView"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/av;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
