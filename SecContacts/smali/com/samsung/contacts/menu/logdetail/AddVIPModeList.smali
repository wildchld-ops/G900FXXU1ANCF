.class public Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "AddVIPModeList.java"


# static fields
.field private static mAddBlackList:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mContext:Landroid/content/Context;

    sput-boolean p2, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mAddBlackList:Z

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    sget-boolean v1, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mAddBlackList:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/samsung/contacts/menu/logdetail/AddVIPModeList;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
