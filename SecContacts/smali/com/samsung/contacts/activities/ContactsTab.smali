.class public Lcom/samsung/contacts/activities/ContactsTab;
.super Ljava/lang/Object;
.source "ContactsTab.java"


# static fields
.field public static ALL:I

.field public static CALLLOG:I

.field public static COUNT:I

.field public static DEFAULT:I

.field public static DIALER:I

.field public static FAVORITES:I

.field public static GROUPS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupContactsTab(ZZ)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/samsung/contacts/activities/ContactsTab;->setupTabStateEasy(Z)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/contacts/activities/ContactsTab;->setupTabState(Z)V

    goto :goto_1
.end method

.method private static setupTabState(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sput v4, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->GROUPS:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->COUNT:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    sput v4, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->GROUPS:I

    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->COUNT:I

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    goto :goto_0
.end method

.method private static setupTabStateEasy(Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->GROUPS:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->COUNT:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    sput v2, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    sput v3, Lcom/samsung/contacts/activities/ContactsTab;->GROUPS:I

    sput v1, Lcom/samsung/contacts/activities/ContactsTab;->COUNT:I

    sput v0, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    goto :goto_0
.end method
