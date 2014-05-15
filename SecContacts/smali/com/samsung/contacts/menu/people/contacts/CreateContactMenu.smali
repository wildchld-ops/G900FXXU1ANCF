.class public Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CreateContactMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/contacts/ContactsApplication;->contactsEditEnter:Lcom/samsung/contacts/ContactsPerformance;

    iget-object v3, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    const-string v4, "editorEnter"

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->isHelpSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.INSERT_FOR_HELP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tutorial_mode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return v6

    :cond_1
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/CreateContactMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
