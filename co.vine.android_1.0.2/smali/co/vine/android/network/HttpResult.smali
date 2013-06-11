.class public Lco/vine/android/network/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# instance fields
.field public durationMs:J

.field public errorCode:I

.field public exception:Ljava/lang/Exception;

.field public final reasonPhrase:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lco/vine/android/network/HttpResult;->statusCode:I

    .line 17
    iput-object p2, p0, Lco/vine/android/network/HttpResult;->reasonPhrase:Ljava/lang/String;

    .line 18
    return-void
.end method
