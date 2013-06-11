.class public final Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;
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
    name = "DTDDriver"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 13
    .parameter "complete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1067
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 1070
    :try_start_0
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 1071
    .local v5, resourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    if-nez v8, :cond_0

    .line 1072
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    new-instance v9, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    invoke-direct {v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;-><init>()V

    iput-object v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    .line 1073
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    if-eqz v8, :cond_0

    .line 1074
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    check-cast v8, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 1079
    .local v0, again:Z
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v8, :pswitch_data_0

    .line 1149
    :pswitch_0
    new-instance v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "DTDDriver#dispatch: scanner state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v10, v10, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0           #again:Z
    .end local v5           #resourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :catch_0
    move-exception v2

    .line 1157
    .local v2, e:Ljava/io/EOFException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/EOFException;->printStackTrace()V

    .line 1158
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v9, "PrematureEOF"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    const/4 v8, 0x0

    .line 1165
    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 1168
    .end local v2           #e:Ljava/io/EOFException;
    :goto_0
    return v8

    .line 1083
    .restart local v0       #again:Z
    .restart local v5       #resourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :pswitch_1
    const/4 v1, 0x1

    .line 1085
    .local v1, completeDTD:Z
    :try_start_2
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v10, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStandalone:Z

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v9, v1, v10, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z

    move-result v4

    .line 1086
    .local v4, moreToScan:Z
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v3

    .line 1087
    .local v3, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    instance-of v8, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    if-eqz v8, :cond_1

    .line 1088
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    check-cast v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .end local v3           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget v9, v3, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    iput v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 1090
    :cond_1
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 1091
    if-nez v4, :cond_8

    .line 1093
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1094
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v9, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    :cond_2
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1098
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1099
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const-string v9, "DoctypedeclUnterminated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    :cond_3
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 1103
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v8, :cond_6

    .line 1106
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v9

    iput-object v9, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 1107
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->reset()V

    .line 1116
    :cond_4
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1117
    const/4 v8, 0x1

    .line 1165
    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    goto/16 :goto_0

    .line 1085
    .end local v4           #moreToScan:Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1110
    .restart local v4       #moreToScan:Z
    :cond_6
    :try_start_3
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v8, :cond_4

    .line 1111
    :cond_7
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1152
    .end local v1           #completeDTD:Z
    .end local v4           #moreToScan:Z
    :cond_8
    :goto_2
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 1165
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 1168
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1122
    :pswitch_2
    :try_start_4
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/4 v7, 0x0

    .line 1125
    .local v7, xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v8, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->resolveEntityAsPerStax(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;

    move-result-object v6

    .line 1126
    .local v6, staxInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->getXMLInputSource()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-result-object v7

    .line 1127
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v8, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 1128
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 1129
    const/4 v0, 0x1

    .line 1130
    goto :goto_2

    .line 1135
    .end local v6           #staxInputSource:Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
    .end local v7           #xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    :pswitch_3
    const/4 v1, 0x1

    .line 1136
    .restart local v1       #completeDTD:Z
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v8, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v4

    .line 1137
    .restart local v4       #moreToScan:Z
    if-nez v4, :cond_8

    .line 1138
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1139
    const/4 v8, 0x1

    .line 1165
    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    goto/16 :goto_0

    .line 1145
    .end local v1           #completeDTD:Z
    .end local v4           #moreToScan:Z
    :pswitch_4
    :try_start_5
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setEndDTDScanState()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1146
    const/4 v8, 0x1

    .line 1165
    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    goto/16 :goto_0

    .end local v0           #again:Z
    .end local v5           #resourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    invoke-virtual {v9, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 1166
    throw v8

    .line 1079
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->dispatch(Z)Z

    .line 1048
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->getGrammar()Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object v0

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-direct {v2, v0, v3, v4}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;-><init>(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    .line 1050
    const/16 v0, 0xb

    return v0
.end method
