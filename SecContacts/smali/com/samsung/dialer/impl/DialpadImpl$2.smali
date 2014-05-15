.class Lcom/samsung/dialer/impl/DialpadImpl$2;
.super Ljava/lang/Object;
.source "DialpadImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/impl/DialpadImpl;->showSpeedDialDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/DialpadImpl;

.field final synthetic val$mIndex:I


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/DialpadImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    iput p2, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->val$mIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionbar_title"

    const-string v2, "Speed dial setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "index"

    iget v2, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->val$mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    #getter for: Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->access$000(Lcom/samsung/dialer/impl/DialpadImpl;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    #getter for: Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->access$000(Lcom/samsung/dialer/impl/DialpadImpl;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl$2;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    #getter for: Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/samsung/dialer/impl/DialpadImpl;->access$000(Lcom/samsung/dialer/impl/DialpadImpl;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialDlg:Landroid/app/AlertDialog;

    return-void
.end method
