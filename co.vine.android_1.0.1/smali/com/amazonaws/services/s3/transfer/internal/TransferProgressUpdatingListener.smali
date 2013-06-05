.class public Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# instance fields
.field private final transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransfered()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->updateProgress(J)V

    return-void
.end method
