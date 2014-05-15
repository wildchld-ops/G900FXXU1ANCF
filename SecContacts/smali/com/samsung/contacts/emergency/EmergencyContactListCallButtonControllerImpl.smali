.class public Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;
.super Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;
.source "EmergencyContactListCallButtonControllerImpl.java"


# instance fields
.field private mCallButton:Landroid/widget/ImageView;

.field private mCallButtonPadding:I

.field private mContext:Landroid/content/Context;

.field private mGapBetweenAccountAndCallButton:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButtonPadding:I

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mGapBetweenAccountAndCallButton:I

    return-void
.end method

.method public static bindCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ILandroid/net/Uri;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getListCallButtonController()Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;-><init>(Landroid/content/Context;)V

    :cond_0
    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListItemView;->showCallButton(Lcom/samsung/contacts/impl/ListCallButtonControllerImpl;Landroid/database/Cursor;ILandroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public setLayout(IIII)I
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    sub-int v2, p3, v0

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    iget v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mGapBetweenAccountAndCallButton:I

    add-int/2addr v1, v0

    sub-int/2addr p3, v1

    :cond_0
    return p3
.end method

.method public setMeasure()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    :cond_0
    return-void
.end method

.method public showCallButton(Landroid/view/ViewGroup;Landroid/database/Cursor;ILandroid/net/Uri;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButtonPadding:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->mCallButton:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
