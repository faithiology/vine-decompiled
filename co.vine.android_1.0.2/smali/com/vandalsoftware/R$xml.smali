.class public final Lcom/vandalsoftware/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static authenticator:I

.field public static settings:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1431
    const/high16 v0, 0x7f05

    sput v0, Lcom/vandalsoftware/R$xml;->authenticator:I

    .line 1432
    const v0, 0x7f050001

    sput v0, Lcom/vandalsoftware/R$xml;->settings:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
