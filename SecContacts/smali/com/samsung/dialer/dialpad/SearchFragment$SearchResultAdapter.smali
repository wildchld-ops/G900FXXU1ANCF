.class public Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/dialer/dialpad/ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/dialer/dialpad/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/dialpad/SearchFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    const v0, 0x7f030080

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    if-eqz p2, :cond_0

    const v2, 0x7f0801ad

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v20, p2

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getSearchType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030075

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    new-instance v2, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$1;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object v8

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030080

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v17

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const v2, 0x7f0801ad

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v17, :cond_3

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v2, v4, v5, v15}, Lcom/samsung/dialer/dialpad/DialpadUtil;->loadPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getHighlightStartIndex()I

    move-result v19

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getHighlightEndIndex()I

    move-result v9

    const v2, 0x7f0801af

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v2, 0x7f0801b0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    const/high16 v4, 0x41c0

    invoke-virtual {v12, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x1

    const/high16 v4, 0x4190

    invoke-virtual {v14, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0801b0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getSearchType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_4
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v12, v14, v1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter$2;-><init>(Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v20

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v6

    int-to-long v6, v6

    #calls: Lcom/samsung/dialer/dialpad/SearchFragment;->setPhoto(Landroid/widget/ImageView;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/samsung/dialer/dialpad/SearchFragment;->access$000(Lcom/samsung/dialer/dialpad/SearchFragment;Landroid/widget/ImageView;JJ)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-virtual {v10}, Lcom/samsung/dialer/dialpad/ContactItem;->getContactId()I

    move-result v6

    int-to-long v6, v6

    #calls: Lcom/samsung/dialer/dialpad/SearchFragment;->setPhoto(Landroid/widget/ImageView;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/samsung/dialer/dialpad/SearchFragment;->access$000(Lcom/samsung/dialer/dialpad/SearchFragment;Landroid/widget/ImageView;JJ)V

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x2

    const/high16 v4, 0x41a8

    invoke-virtual {v12, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x1

    const/high16 v4, 0x4170

    invoke-virtual {v14, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :sswitch_0
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v13}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :sswitch_1
    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v2, v11, v4}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    array-length v2, v0

    add-int v9, v19, v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    move/from16 v0, v19

    invoke-virtual {v2, v11, v0, v9}, Lcom/samsung/dialer/dialpad/SearchFragment;->getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v13}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :sswitch_2
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    move/from16 v0, v19

    invoke-virtual {v2, v13, v0, v9}, Lcom/samsung/dialer/dialpad/SearchFragment;->getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :sswitch_3
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    move/from16 v0, v19

    invoke-virtual {v2, v13, v0, v9}, Lcom/samsung/dialer/dialpad/SearchFragment;->getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1010 -> :sswitch_1
        0x1020 -> :sswitch_2
        0x1030 -> :sswitch_3
    .end sparse-switch
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/dialpad/ContactItem;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setVisibilityDialpadSearchView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    iget-object v0, v0, Lcom/samsung/dialer/dialpad/SearchFragment;->mLastKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setVisibilityDialpadSearchView(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/SearchFragment$SearchResultAdapter;->this$0:Lcom/samsung/dialer/dialpad/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/dialer/dialpad/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setVisibilityDialpadSearchView(I)V

    goto :goto_0
.end method
