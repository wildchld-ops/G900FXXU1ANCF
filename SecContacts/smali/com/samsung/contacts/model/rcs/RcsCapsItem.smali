.class public Lcom/samsung/contacts/model/rcs/RcsCapsItem;
.super Ljava/lang/Object;
.source "RcsCapsItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/contacts/model/rcs/RcsCapsItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mFeatureTag:Ljava/lang/String;

.field public mIconId:I

.field public mIntent:Landroid/content/Intent;

.field public mPackageName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mSipUri:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mType:I

    iput-object p2, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mDisplayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mSipUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mServiceName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mFeatureTag:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mIconId:I

    iput-object p8, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/contacts/model/rcs/RcsCapsItem;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/contacts/model/rcs/RcsCapsItem;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->compareTo(Lcom/samsung/contacts/model/rcs/RcsCapsItem;)I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mIconId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mSipUri:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->mType:I

    return v0
.end method
