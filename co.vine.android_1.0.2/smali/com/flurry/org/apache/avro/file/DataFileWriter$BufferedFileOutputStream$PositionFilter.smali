.class Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;
.super Ljava/io/FilterOutputStream;
.source "DataFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>.BufferedFileOutputStream.PositionFilter;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;->this$1:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>.BufferedFileOutputStream.PositionFilter;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 386
    iget-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;->this$1:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;

    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->access$014(Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;J)J

    .line 387
    return-void
.end method
