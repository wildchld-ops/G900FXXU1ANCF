.class Lcom/samsung/contacts/autolink/AutoLinkContactParentData;
.super Lcom/samsung/contacts/autolink/AutoLinkData;
.source "AutoLinkData.java"


# instance fields
.field public mChildCount:I

.field public mSaveChildId:J

.field public mSelectedChildrenCount:I

.field public mSelectedTotalJoinedCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    return-void
.end method


# virtual methods
.method public addSelectedChildCount(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    goto :goto_0
.end method

.method public minusSelectedChildCount(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    goto :goto_0
.end method
