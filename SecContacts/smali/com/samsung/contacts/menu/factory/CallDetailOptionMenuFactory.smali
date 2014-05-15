.class public Lcom/samsung/contacts/menu/factory/CallDetailOptionMenuFactory;
.super Ljava/lang/Object;
.source "CallDetailOptionMenuFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContactsMenu(Landroid/content/Context;I)Lcom/samsung/contacts/menu/OptionMenu;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/AddToContactsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/AddToContactsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/ViewContactsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/ViewContactsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/DeleteMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/DeleteMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/SendNumberMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/SendNumberMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    const-string v1, "0037"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/logdetail/AddRejectListMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/AddRejectListMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "0037"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/logdetail/RemoveRejectListMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/RemoveRejectListMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/CopyToDialingMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/CopyToDialingMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/logdetail/RecordedCallsDetailMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_4
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
