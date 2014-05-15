.class Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;
.super Ljava/lang/Object;
.source "ImportFinishActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/vcard/ImportFinishActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;Lcom/samsung/contacts/vcard/ImportFinishActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;-><init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    iget-object v1, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    #getter for: Lcom/samsung/contacts/vcard/ImportFinishActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->access$000(Lcom/samsung/contacts/vcard/ImportFinishActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$PositiveButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->finish()V

    return-void
.end method
