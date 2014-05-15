.class Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;
.super Landroid/database/MergeCursor;
.source "EmergencyAndContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

.field final synthetic val$contactsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/list/EmergencyAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;->this$0:Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    iput-object p3, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader$1;->val$contactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
