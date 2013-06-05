.class final Lcom/flurry/android/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bR:Ljava/lang/String;

.field private final bS:Ljava/lang/String;

.field private final bT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/flurry/android/av;->bR:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/flurry/android/av;->bS:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/flurry/android/av;->bT:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/android/av;->bR:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/flurry/android/av;->bS:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/av;->bT:Ljava/lang/String;

    return-object v0
.end method
