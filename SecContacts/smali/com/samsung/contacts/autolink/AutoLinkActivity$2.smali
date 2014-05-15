.class Lcom/samsung/contacts/autolink/AutoLinkActivity$2;
.super Ljava/lang/Object;
.source "AutoLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/autolink/AutoLinkActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

.field final synthetic val$message:I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/autolink/AutoLinkActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iput p2, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;->val$message:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;->this$0:Lcom/samsung/contacts/autolink/AutoLinkActivity;

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkActivity$2;->val$message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
