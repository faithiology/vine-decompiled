.class final Lcom/flurry/android/s;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic O:Lcom/flurry/android/a;


# direct methods
.method constructor <init>(Lcom/flurry/android/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/flurry/android/s;->O:Lcom/flurry/android/a;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/flurry/android/s;->O:Lcom/flurry/android/a;

    iget-object v0, v0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/s;->O:Lcom/flurry/android/a;

    iget-object v1, v1, Lcom/flurry/android/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1228
    return-void
.end method
