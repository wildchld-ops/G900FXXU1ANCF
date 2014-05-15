.class Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;
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
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;Lcom/samsung/contacts/vcard/ImportFinishActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;-><init>(Lcom/samsung/contacts/vcard/ImportFinishActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportFinishActivity$NegativeButtonListener;->this$0:Lcom/samsung/contacts/vcard/ImportFinishActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/vcard/ImportFinishActivity;->finish()V

    return-void
.end method
