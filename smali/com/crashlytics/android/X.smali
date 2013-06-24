.class final Lcom/crashlytics/android/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/crashlytics/android/ak;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/crashlytics/android/X;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/ak;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/crashlytics/android/X;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/crashlytics/android/ak;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/ak;

    return-object v0
.end method
