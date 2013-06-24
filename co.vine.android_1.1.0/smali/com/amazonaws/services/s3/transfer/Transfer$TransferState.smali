.class public final enum Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/transfer/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field public static final enum Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field public static final enum Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field public static final enum Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field public static final enum InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field public static final enum Waiting:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Waiting:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    new-instance v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const-string v1, "InProgress"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    new-instance v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const-string v1, "Completed"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    new-instance v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    new-instance v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Waiting:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->$VALUES:[Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->$VALUES:[Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    return-object v0
.end method
