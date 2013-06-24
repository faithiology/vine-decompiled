.class final Lcom/crashlytics/android/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(ZIIIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/crashlytics/android/ar;->a:Z

    .line 22
    iput p2, p0, Lcom/crashlytics/android/ar;->b:I

    .line 23
    iput p5, p0, Lcom/crashlytics/android/ar;->c:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/crashlytics/android/ar;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/crashlytics/android/ar;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/crashlytics/android/ar;->c:I

    return v0
.end method
