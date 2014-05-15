.class public Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditGroupSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$1;,
        Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isEnabled()Z

    move-result v0

    iget-object v2, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->groupText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->groupText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v2, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->parentLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->groupText:Landroid/widget/TextView;

    const v4, 0x7f0b01fd

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->bindView(Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;I)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300bf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;-><init>(Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$1;)V

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->groupText:Landroid/widget/TextView;

    const v2, 0x7f080139

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f08021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;->parentLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
