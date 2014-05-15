.class public Lcom/samsung/contacts/menu/people/contacts/VZCloudMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "VZCloudMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/people/contacts/VZCloudMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.vcast.mediamanager.ACTION_CONTACTS"

    invoke-static {v0, v1}, Lcom/samsung/contacts/impl/VZCloudUtilsImpl;->launchVZCloud(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
