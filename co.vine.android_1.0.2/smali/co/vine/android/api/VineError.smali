.class public Lco/vine/android/api/VineError;
.super Ljava/lang/Object;
.source "VineError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineError$VineKnownErrors;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lco/vine/android/api/VineError;->errorCode:I

    .line 167
    iput-object p2, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 194
    .end local p1
    :cond_0
    :goto_0
    return v1

    .line 188
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 189
    iget v2, p0, Lco/vine/android/api/VineError;->errorCode:I

    check-cast p1, Lco/vine/android/api/VineError;

    .end local p1
    iget v3, p1, Lco/vine/android/api/VineError;->errorCode:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 191
    .restart local p1
    :cond_3
    instance-of v2, p1, Lco/vine/android/api/VineError$VineKnownErrors;

    if-eqz v2, :cond_0

    .line 192
    iget v2, p0, Lco/vine/android/api/VineError;->errorCode:I

    check-cast p1, Lco/vine/android/api/VineError$VineKnownErrors;

    .end local p1
    iget v3, p1, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    if-ne v2, v3, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getLocalizedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    iget v1, p0, Lco/vine/android/api/VineError;->errorCode:I

    invoke-static {v1}, Lco/vine/android/api/VineError$VineKnownErrors;->valueOf(I)Lco/vine/android/api/VineError$VineKnownErrors;

    move-result-object v0

    .line 172
    .local v0, knownError:Lco/vine/android/api/VineError$VineKnownErrors;
    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Lco/vine/android/api/VineError$VineKnownErrors;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    goto :goto_0
.end method
