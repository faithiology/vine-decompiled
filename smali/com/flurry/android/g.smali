.class final Lcom/flurry/android/g;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic n:Lcom/flurry/android/ac;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/g;-><init>(Lcom/flurry/android/ac;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/ac;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flurry/android/g;->n:Lcom/flurry/android/ac;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/flurry/android/g;->n:Lcom/flurry/android/ac;

    invoke-static {v0}, Lcom/flurry/android/ac;->a(Lcom/flurry/android/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/flurry/android/g;->n:Lcom/flurry/android/ac;

    invoke-static {v0}, Lcom/flurry/android/ac;->c(Lcom/flurry/android/ac;)V

    .line 132
    :cond_0
    return-void
.end method
