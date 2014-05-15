.class public Lcom/samsung/contacts/detail/ContactDetailIconManager;
.super Ljava/lang/Object;
.source "ContactDetailIconManager.java"


# instance fields
.field private mCallIcon:I

.field private mIpCallIcon:I

.field private mMessageIcon:I

.field private mVideoCallIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f020075

    iput v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mCallIcon:I

    const v0, 0x7f0200d0

    iput v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mVideoCallIcon:I

    const v0, 0x7f0201b8

    iput v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mIpCallIcon:I

    const v0, 0x7f0200b5

    iput v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mMessageIcon:I

    return-void
.end method


# virtual methods
.method public getCallIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mCallIcon:I

    return v0
.end method

.method public getIpCallIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mIpCallIcon:I

    return v0
.end method

.method public getMessageIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mMessageIcon:I

    return v0
.end method

.method public getVideoCallIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactDetailIconManager;->mVideoCallIcon:I

    return v0
.end method
