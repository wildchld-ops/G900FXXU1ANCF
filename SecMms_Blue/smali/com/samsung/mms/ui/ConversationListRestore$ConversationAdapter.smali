.class Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    move-object/from16 v7, p2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v10

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020260

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v2, 0x0

    if-nez v7, :cond_0

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f040034

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    :cond_0
    const v12, 0x7f0b010d

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b001c

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v12, "Mms/ConversationListRestore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Address set is:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v12, 0x7f0b0033

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b010b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const v12, 0x7f0b001b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/QuickContactBadge;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    iget-object v13, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-virtual {v12, v13, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    const v12, 0x7f0b005e

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z
    invoke-static {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->access$500(Lcom/samsung/mms/ui/ConversationListRestore;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    iget-object v12, p0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;
    invoke-static {v12}, Lcom/samsung/mms/ui/ConversationListRestore;->access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-object v7

    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0
.end method
