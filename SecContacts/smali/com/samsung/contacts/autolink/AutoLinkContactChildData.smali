.class Lcom/samsung/contacts/autolink/AutoLinkContactChildData;
.super Lcom/samsung/contacts/autolink/AutoLinkData;
.source "AutoLinkData.java"


# instance fields
.field public mAccountIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mAccountTypeNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEmailAddress:Ljava/lang/String;

.field public mId:J

.field public mIsDefault:Z

.field public mIsLastChild:Z

.field public mLinkedCount:I

.field public mName:Ljava/lang/String;

.field public mParentIndex:I

.field public mPhoneNumber:Ljava/lang/String;

.field public mPhoto:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkData;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsDefault:Z

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountTypeNameList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clickCheck(Lcom/samsung/contacts/autolink/AutoLinkContactParentData;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-ne v2, v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p1, v1}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->minusSelectedChildCount(I)V

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p1, v0}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->addSelectedChildCount(I)V

    move v0, v1

    goto :goto_0
.end method

.method public setCheck(ZLcom/samsung/contacts/autolink/AutoLinkContactParentData;)Z
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v2, p2, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    iget v3, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    add-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iput-boolean p1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    if-ne p1, v1, :cond_2

    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p2, v2}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->addSelectedChildCount(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p2, v2}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->minusSelectedChildCount(I)V

    goto :goto_0
.end method
