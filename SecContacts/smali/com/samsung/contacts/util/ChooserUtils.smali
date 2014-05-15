.class public Lcom/samsung/contacts/util/ChooserUtils;
.super Ljava/lang/Object;
.source "ChooserUtils.java"


# static fields
.field public static ACTION_SHARE_VIA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.contact.action.SHARE_VIA"

    sput-object v0, Lcom/samsung/contacts/util/ChooserUtils;->ACTION_SHARE_VIA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget-object v1, Lcom/samsung/contacts/util/ChooserUtils;->ACTION_SHARE_VIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-lez p2, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
