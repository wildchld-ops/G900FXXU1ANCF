.class Lcom/samsung/contacts/model/account/Sim2AccountType$PhoneActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "Sim2AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/account/Sim2AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/model/account/Sim2AccountType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/model/account/Sim2AccountType$PhoneActionInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 3

    const v0, 0x7f0e00e1

    const v1, 0x7f0e00dc

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->getAnrConfigValue()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0241

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const v0, 0x7f0e00da

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e00db

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e00dd

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e00de

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0e00df

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0e00e0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0e00e2

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0e00e3

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0e00e4

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0e00e5

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0e00e6

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0e00e7

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0e00e8

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0e00e9

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0e00ea

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0e00eb

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0e00ec

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0e00ed

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0e00ee

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
