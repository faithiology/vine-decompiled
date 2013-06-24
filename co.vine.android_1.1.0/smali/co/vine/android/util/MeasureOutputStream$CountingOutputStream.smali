.class public Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MeasureOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/MeasureOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

.field private final mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 2
    .parameter "out"
    .parameter "listener"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    iput-object p2, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    iput-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

    .line 39
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setBytesTransfered(I)V

    .line 52
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    iget-object v1, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    .line 55
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setBytesTransfered(I)V

    .line 44
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    iget-object v1, p0, Lco/vine/android/util/MeasureOutputStream$CountingOutputStream;->mProgressEvent:Lcom/amazonaws/services/s3/model/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    .line 47
    :cond_0
    return-void
.end method
