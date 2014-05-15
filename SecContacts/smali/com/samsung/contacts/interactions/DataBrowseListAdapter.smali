.class public Lcom/samsung/contacts/interactions/DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iput-object p4, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)V
    .locals 12

    const-string v3, ""

    const-string v9, ""

    iget-object v5, p3, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    iget v0, p3, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataType:I

    iget-object v10, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v11, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v10, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v10, v8, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_8

    iget-object v10, v8, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v10, "vnd.sec.contact.sim"

    iget-object v11, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.sec.contact.sim2"

    iget-object v11, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_1
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v8, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    const/4 v11, 0x2

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    if-ne v10, v11, :cond_5

    iget v10, v8, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_1
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p3, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    const v10, 0x7f0e0243

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    iget v10, v8, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    iget-object v9, p3, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_9
    const-string v9, ""

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
