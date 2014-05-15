.class public Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "AutoDialingSettingMenu.java"


# instance fields
.field private final RAD_SETTING_CLASS_NAME:Ljava/lang/String;

.field private final RAD_SETTING_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;->RAD_SETTING_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.android.phone.LGTSetAutoDialing"

    iput-object v0, p0, Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;->RAD_SETTING_CLASS_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTSetAutoDialing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/keypad/AutoDialingSettingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
