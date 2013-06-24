.class public Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;
.super Ljava/lang/Object;
.source "XMLEventWriterImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLEventWriter;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .parameter "streamWriter"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    .line 76
    return-void
.end method


# virtual methods
.method public add(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 2
    .parameter "xMLEventReader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v1, "Event reader shouldn\'t be null"

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->add(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public add(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V
    .locals 21
    .parameter "xMLEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v15

    .line 97
    .local v15, type:I
    packed-switch v15, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v6, p1

    .line 99
    check-cast v6, Lcom/amazonaws/javax/xml/stream/events/DTD;

    .line 101
    .local v6, dtd:Lcom/amazonaws/javax/xml/stream/events/DTD;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v6}, Lcom/amazonaws/javax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #dtd:Lcom/amazonaws/javax/xml/stream/events/DTD;
    :pswitch_2
    move-object/from16 v13, p1

    .line 105
    check-cast v13, Lcom/amazonaws/javax/xml/stream/events/StartDocument;

    .line 108
    .local v13, startDocument:Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v13}, Lcom/amazonaws/javax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v13}, Lcom/amazonaws/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v7

    .line 110
    .local v7, e:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v13}, Lcom/amazonaws/javax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v7           #e:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    .end local v13           #startDocument:Lcom/amazonaws/javax/xml/stream/events/StartDocument;
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v14

    .line 117
    .local v14, startElement:Lcom/amazonaws/javax/xml/stream/events/StartElement;
    invoke-interface {v14}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v12

    .line 118
    .local v12, qname:Lcom/amazonaws/javax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v16 .. v19}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v14}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v9

    .line 127
    .local v9, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 128
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/javax/xml/stream/events/Namespace;

    .line 129
    .local v10, namespace:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v10}, Lcom/amazonaws/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v10}, Lcom/amazonaws/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v10           #namespace:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    :cond_1
    invoke-interface {v14}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    .local v3, attributes:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 135
    .local v2, attribute:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v1

    .line 136
    .local v1, aqname:Lcom/amazonaws/javax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v16 .. v20}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #aqname:Lcom/amazonaws/javax/xml/namespace/QName;
    .end local v2           #attribute:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .end local v3           #attributes:Ljava/util/Iterator;
    .end local v9           #iterator:Ljava/util/Iterator;
    .end local v12           #qname:Lcom/amazonaws/javax/xml/namespace/QName;
    .end local v14           #startElement:Lcom/amazonaws/javax/xml/stream/events/StartElement;
    :pswitch_4
    move-object/from16 v10, p1

    .line 141
    check-cast v10, Lcom/amazonaws/javax/xml/stream/events/Namespace;

    .line 143
    .restart local v10       #namespace:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v10}, Lcom/amazonaws/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v10}, Lcom/amazonaws/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10           #namespace:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    :pswitch_5
    move-object/from16 v5, p1

    .line 147
    check-cast v5, Lcom/amazonaws/javax/xml/stream/events/Comment;

    .line 149
    .local v5, comment:Lcom/amazonaws/javax/xml/stream/events/Comment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #comment:Lcom/amazonaws/javax/xml/stream/events/Comment;
    :pswitch_6
    move-object/from16 v11, p1

    .line 153
    check-cast v11, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;

    .line 155
    .local v11, processingInstruction:Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v11}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v11}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v11           #processingInstruction:Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v4

    .line 162
    .local v4, characters:Lcom/amazonaws/javax/xml/stream/events/Characters;
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->isCData()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #characters:Lcom/amazonaws/javax/xml/stream/events/Characters;
    :pswitch_8
    move-object/from16 v8, p1

    .line 171
    check-cast v8, Lcom/amazonaws/javax/xml/stream/events/EntityReference;

    .line 173
    .local v8, entityReference:Lcom/amazonaws/javax/xml/stream/events/EntityReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v8}, Lcom/amazonaws/javax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8           #entityReference:Lcom/amazonaws/javax/xml/stream/events/EntityReference;
    :pswitch_9
    move-object/from16 v2, p1

    .line 177
    check-cast v2, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 179
    .restart local v2       #attribute:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v12

    .line 180
    .restart local v12       #qname:Lcom/amazonaws/javax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v16 .. v20}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #attribute:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .end local v12           #qname:Lcom/amazonaws/javax/xml/namespace/QName;
    :pswitch_a
    move-object/from16 v4, p1

    .line 186
    check-cast v4, Lcom/amazonaws/javax/xml/stream/events/Characters;

    .line 188
    .restart local v4       #characters:Lcom/amazonaws/javax/xml/stream/events/Characters;
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->isCData()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v4           #characters:Lcom/amazonaws/javax/xml/stream/events/Characters;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto/16 :goto_0

    .line 206
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->close()V

    .line 220
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->flush()V

    .line 229
    return-void
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V
    .locals 1
    .parameter "namespaceContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V

    .line 265
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLEventWriterImpl;->fStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
