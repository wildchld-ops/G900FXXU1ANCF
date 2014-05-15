.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$dataAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/database/Cursor;Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iput-object p2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->val$c:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->val$dataAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->val$c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;->val$dataAdapter:Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;->getId(I)J
    invoke-static {v1, p2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;->access$1100(Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;I)J

    move-result-wide v1

    const/4 v3, 0x0

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$1200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;JLandroid/net/Uri;)V

    return-void
.end method
