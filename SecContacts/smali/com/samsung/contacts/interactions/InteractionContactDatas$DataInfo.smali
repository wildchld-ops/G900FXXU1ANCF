.class public Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionContactDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public dataType:I

.field public displayName:Ljava/lang/String;

.field public displayNameAlt:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public rawContactId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionContactDatas;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/InteractionContactDatas;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->this$0:Lcom/samsung/contacts/interactions/InteractionContactDatas;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->shouldCollapseWith(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->collapseWith(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)V

    return-void
.end method

.method public shouldCollapseWith(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->shouldCollapseWith(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Z

    move-result v0

    return v0
.end method
