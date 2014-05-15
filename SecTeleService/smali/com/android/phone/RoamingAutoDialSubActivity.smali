.class public Lcom/android/phone/RoamingAutoDialSubActivity;
.super Landroid/app/ListActivity;
.source "RoamingAutoDialSubActivity.java"


# instance fields
.field radSubName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "RAD_SUB_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "SKTRADAboutRADActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0903e0

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const v2, 0x7f040087

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setContentView(I)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    const-string v2, "SKTRADDialToKoreaActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0903e5

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "SKTRADDialToAbroadActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0903e6

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "SKTRADTRoamingCenterActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0903de

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "SKTRADMOFATInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0903df

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v2, "SKTRADOnOffActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0903ea

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "SKTRADLocalTimeInfoActivity"

    iget-object v3, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0903ec

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAutoDialSubActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialSubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x1000

    packed-switch p3, :pswitch_data_0

    const-string v1, "RoamingAutoDialSubActivity"

    const-string v2, "ListItemClick position ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v1, "SKTRADTRoamingCenterActivity"

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "+82263439000"

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "SKTRADMOFATInfoActivity"

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSubActivity;->radSubName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const-string v3, "+82232100404"

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAutoDialSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
