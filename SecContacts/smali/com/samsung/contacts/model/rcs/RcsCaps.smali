.class public Lcom/samsung/contacts/model/rcs/RcsCaps;
.super Ljava/lang/Object;
.source "RcsCaps.java"


# instance fields
.field private mFTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIMList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnFtCapable:Z

.field private mRcsCapsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mOwnFtCapable:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mIMList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mFTList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mRcsCapsItems:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mIMList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mFTList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mRcsCapsItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/model/rcs/RcsCapsItem;

    invoke-virtual {v1}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mIMList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mFTList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getFTList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mFTList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIMList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mIMList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOwnFtCapable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mOwnFtCapable:Z

    return v0
.end method

.method public getRcsCapsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mRcsCapsItems:Ljava/util/List;

    return-object v0
.end method

.method public setOwnFtCapable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/model/rcs/RcsCaps;->mOwnFtCapable:Z

    return-void
.end method
