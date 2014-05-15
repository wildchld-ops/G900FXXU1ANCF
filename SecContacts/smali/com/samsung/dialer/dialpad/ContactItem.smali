.class public Lcom/samsung/dialer/dialpad/ContactItem;
.super Ljava/lang/Object;
.source "ContactItem.java"


# instance fields
.field private actionCode:Ljava/lang/String;

.field private contactId:I

.field private filterPriority:I

.field private highlightEndIndex:I

.field private highlightStartIndex:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private phoneType:Ljava/lang/String;

.field private photoId:I

.field private searchType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->filterPriority:I

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightStartIndex:I

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightEndIndex:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->filterPriority:I

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightStartIndex:I

    iput v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightEndIndex:I

    iput p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->contactId:I

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/ContactItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/dialer/dialpad/ContactItem;->number:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/dialer/dialpad/ContactItem;->actionCode:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/dialer/dialpad/ContactItem;->photoId:I

    iput-object p6, p0, Lcom/samsung/dialer/dialpad/ContactItem;->phoneType:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/dialer/dialpad/ContactItem;->searchType:I

    return-void
.end method


# virtual methods
.method public getContactId()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->contactId:I

    return v0
.end method

.method public getFilterPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->filterPriority:I

    return v0
.end method

.method public getHighlightEndIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightEndIndex:I

    return v0
.end method

.method public getHighlightStartIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightStartIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->photoId:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/dialpad/ContactItem;->searchType:I

    return v0
.end method

.method public setFilterPriority(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->filterPriority:I

    return-void
.end method

.method public setHighlightEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightEndIndex:I

    return-void
.end method

.method public setHighlightStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->highlightStartIndex:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->number:Ljava/lang/String;

    return-void
.end method

.method public setPhoneType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->phoneType:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/dialpad/ContactItem;->searchType:I

    return-void
.end method
