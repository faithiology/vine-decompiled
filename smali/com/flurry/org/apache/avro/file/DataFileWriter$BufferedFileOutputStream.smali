.class Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "DataFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/file/DataFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedFileOutputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;
    }
.end annotation


# instance fields
.field private position:J

.field final synthetic this$0:Lcom/flurry/org/apache/avro/file/DataFileWriter;


# direct methods
.method public constructor <init>(Lcom/flurry/org/apache/avro/file/DataFileWriter;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>.BufferedFileOutputStream;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->this$0:Lcom/flurry/org/apache/avro/file/DataFileWriter;

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 392
    new-instance v0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;

    invoke-direct {v0, p0, p2}, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream$PositionFilter;-><init>(Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->out:Ljava/io/OutputStream;

    .line 393
    return-void
.end method

.method static synthetic access$014(Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->position:J

    return-wide v0
.end method


# virtual methods
.method public tell()J
    .locals 4

    .prologue
    .line 395
    .local p0, this:Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;,"Lcom/flurry/org/apache/avro/file/DataFileWriter<TD;>.BufferedFileOutputStream;"
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->position:J

    iget v2, p0, Lcom/flurry/org/apache/avro/file/DataFileWriter$BufferedFileOutputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
