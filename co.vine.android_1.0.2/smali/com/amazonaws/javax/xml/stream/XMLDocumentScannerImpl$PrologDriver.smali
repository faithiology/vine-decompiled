.class public final Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PrologDriver"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/16 v7, 0x2b

    const/4 v6, 0x0

    .line 837
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    sparse-switch v3, :sswitch_data_0

    .line 892
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    .line 894
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v3, :pswitch_data_0

    .line 1016
    :goto_1
    :pswitch_0
    return v2

    .line 839
    :sswitch_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 840
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 841
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Ljava/io/EOFException;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "PrematureEOF"

    invoke-virtual {v3, v4, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 843
    .end local v0           #e:Ljava/io/EOFException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 844
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 853
    :sswitch_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 854
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 855
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 858
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 859
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 860
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "InvalidCommentStart"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 865
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 866
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 867
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v1

    .line 868
    .local v1, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    instance-of v3, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_6

    .line 869
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .end local v1           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget v4, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iput v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 871
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 872
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    if-nez v3, :cond_7

    .line 873
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 874
    :cond_7
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v4, "<!DOCTYPE"

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    :cond_8
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "MarkupNotRecognizedInProlog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 882
    :cond_9
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 883
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    .line 886
    :cond_a
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "MarkupNotRecognizedInProlog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 898
    :pswitch_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 899
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 901
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    goto/16 :goto_1

    .line 905
    :pswitch_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->scanComment()V

    .line 906
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 907
    const/4 v2, 0x5

    goto/16 :goto_1

    .line 913
    :pswitch_3
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 914
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->scanPI(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 915
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 916
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 922
    :pswitch_4
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v3, :cond_b

    .line 923
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "AlreadySeenDoctype"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    :cond_b
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 929
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->scanDoctypeDecl(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 931
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 933
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 934
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-nez v3, :cond_c

    .line 935
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 937
    :cond_c
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 938
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    goto/16 :goto_1

    .line 955
    :cond_d
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v3, :cond_f

    .line 956
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v1

    .line 957
    .restart local v1       #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    instance-of v3, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_e

    .line 958
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .end local v1           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget v4, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iput v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 960
    :cond_e
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 963
    :cond_f
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_13

    .line 964
    :cond_10
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v3, :cond_12

    .line 965
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 968
    :goto_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 969
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-nez v3, :cond_11

    .line 970
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    new-instance v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v4, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 971
    :cond_11
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v2

    goto/16 :goto_1

    .line 967
    :cond_12
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    goto :goto_2

    .line 981
    :cond_13
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    if-eqz v3, :cond_14

    .line 982
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 985
    :cond_14
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 986
    const/16 v2, 0xb

    goto/16 :goto_1

    .line 990
    :pswitch_5
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "ContentIllegalInProlog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 994
    :pswitch_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v4, "ReferenceIllegalInProlog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 837
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch

    .line 894
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
