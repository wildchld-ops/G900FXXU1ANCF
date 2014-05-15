.class public Lcom/samsung/contacts/menu/factory/PeopleOptionMenuFactory;
.super Ljava/lang/Object;
.source "PeopleOptionMenuFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContactsMenu(Landroid/content/Context;ILcom/android/contacts/common/list/ContactListFilter;II)Lcom/samsung/contacts/menu/OptionMenu;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v1, "0003"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/SendMessageMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/SendMessageMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "0004"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/AddContactsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "0006"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/SpeedDialSettingMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/TwoSecPauseMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/TwoSecPauseMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/AddWaitMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/AddWaitMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/OneHandOperationMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/OneHandOperationMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/samsung/contacts/menu/people/logs/RegularSearchMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/logs/RegularSearchMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    const-string v1, "0013"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/logs/CallDurationMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/samsung/contacts/menu/people/common/CallSettingsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/common/CallSettingsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/GroupsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/MultipleDeleteMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/MultipleDeleteMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/MultiSelectionMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/MultiSelectionMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/MergeAccountsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/MergeAccountsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/ImportExportMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/ImportExportMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/AccountsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/AccountsMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;

    invoke-direct {v0, p0, p2}, Lcom/samsung/contacts/menu/people/contacts/ContactsFilterMenu;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    :pswitch_12
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/SendContactMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/SendContactMenu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_13
    const-string v1, "0007"

    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/SettingMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/MoveToKnoxMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/samsung/contacts/menu/people/favorites/FavoriteMultiSelectionMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteMultiSelectionMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteAddMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteRemoveMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/favorites/FavoriteViewChangeMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/SimManagementMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/SimManagementMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/BackupVZWMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/BackupVZWMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;

    invoke-direct {v0, p0, p3}, Lcom/samsung/contacts/menu/people/contacts/HelpMenu;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/AutoLinkContactsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/AutoLinkContactsMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1e
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/IpCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/IpCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1f
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/VideoCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/VideoCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_20
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/CMFCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_21
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/MessageCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/MessageCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_22
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/CallIncludedMessageMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/CallIncludedMessageMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_23
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/GroupVideoCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/GroupVideoCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_24
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/GroupCallMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_25
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_26
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/BusinesscardMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/BusinesscardMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_27
    new-instance v0, Lcom/samsung/contacts/menu/people/logs/LogsMultiSelectionMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/logs/LogsMultiSelectionMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_28
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/KDDIauIDServerMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/KDDIauIDServerMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_29
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/YellowPageMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/YellowPageMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2a
    new-instance v0, Lcom/samsung/contacts/menu/people/contacts/VZCloudMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/contacts/VZCloudMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2b
    new-instance v0, Lcom/samsung/contacts/menu/people/keypad/eSurfingDialupMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/keypad/eSurfingDialupMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_2c
    new-instance v0, Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/people/logs/RecordedCallsMenu;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080304
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_1
        :pswitch_6
        :pswitch_27
        :pswitch_7
        :pswitch_8
        :pswitch_2b
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_2a
        :pswitch_29
        :pswitch_26
        :pswitch_e
        :pswitch_3
        :pswitch_12
        :pswitch_1d
        :pswitch_0
        :pswitch_13
        :pswitch_1a
        :pswitch_f
        :pswitch_1b
        :pswitch_28
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method
