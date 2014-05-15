.class Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;
.super Landroid/widget/BaseAdapter;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/cover/MissedCallCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallAdapter"
.end annotation


# instance fields
.field layoutResourceId:I

.field mContext:Landroid/content/Context;

.field private mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

.field private mInflater:Landroid/view/LayoutInflater;

.field final sendNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/dialer/cover/MissedCallCover;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/content/Context;I[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->sendNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->layoutResourceId:I

    if-nez p4, :cond_1

    const-string v1, "MissedCallCover"

    const-string v2, "mCallDetails2 is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    :cond_0
    return-void

    :cond_1
    array-length v1, p4

    new-array v1, v1, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    aget-object v2, p4, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    const-string v10, "MissedCallCover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getView, position : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->layoutResourceId:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v10, 0x7f080250

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v10, 0x7f080252

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    aget-object v2, v10, p1

    if-nez p1, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v10, 0x7f0800fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0801b6

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f080054

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const-string v7, ""

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    iget v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberType:I

    if-nez v10, :cond_3

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberLabel:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    const-string v10, ""

    iget-object v11, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v10}, Lcom/samsung/dialer/cover/MissedCallCover;->access$100(Lcom/samsung/dialer/cover/MissedCallCover;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v10

    iget-object v11, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    iget-object v12, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    iget-object v13, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->countryIso:Ljava/lang/String;

    iget-object v14, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    const-string v11, "-2"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    const-string v11, "-3"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_3
    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberType:I

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v10, ""

    iget-object v11, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberType:I

    invoke-static {v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->numberType:I

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v10, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;

    invoke-direct {v10, p0, v9}, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter$1;-><init>(Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v10, 0x7f080253

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v2}, Lcom/samsung/dialer/cover/MissedCallCoverImpl;->getTitleTimeText(Landroid/content/Context;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    iget-wide v12, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    invoke-static {v11, v12, v13}, Lcom/samsung/dialer/util/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
