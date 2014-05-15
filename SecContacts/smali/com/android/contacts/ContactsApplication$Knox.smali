.class public Lcom/android/contacts/ContactsApplication$Knox;
.super Ljava/lang/Object;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Knox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$Knox$MODE;
    }
.end annotation


# static fields
.field public static isKnox:Z

.field public static which:Lcom/android/contacts/ContactsApplication$Knox$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    sget-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->PERSONAL:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
