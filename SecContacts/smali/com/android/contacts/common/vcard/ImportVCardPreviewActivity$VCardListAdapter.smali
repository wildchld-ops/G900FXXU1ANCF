.class public Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VCardListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/vcard/VCardReader$VCardData;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field resource:I

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

.field vcardData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/vcard/VCardReader$VCardData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/vcard/VCardReader$VCardData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->vcardData:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->resource:I

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->vcardData:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f080300

    move-object v2, p2

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/vcard/VCardReader$VCardData;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/VCardReader$VCardData;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->resource:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :cond_0
    const v5, 0x7f0802ff

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const v6, 0x7f0e0220

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;->vcardData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/vcard/VCardReader$VCardData;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/VCardReader$VCardData;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
