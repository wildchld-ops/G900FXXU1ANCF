.class public Lcom/samsung/contacts/model/sns/SnsTypeManager;
.super Ljava/lang/Object;
.source "SnsTypeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsType(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)Lcom/samsung/contacts/model/sns/SnsType;
    .locals 4

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    iget-object v2, v1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/samsung/contacts/model/sns/SnsTypeManager;->whichAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :pswitch_0
    new-instance v2, Lcom/samsung/contacts/model/sns/FacebookSnsType;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/model/sns/FacebookSnsType;-><init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;-><init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lcom/samsung/contacts/model/sns/LinkedinSnsType;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/model/sns/LinkedinSnsType;-><init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isSns3SupportedAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/contacts/model/sns/SnsTypeManager;->whichAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static whichAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
