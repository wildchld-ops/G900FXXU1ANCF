.class Lcom/samsung/dialer/impl/DialpadImpl$1;
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


# direct methods
.method constructor <init>(Lcom/samsung/dialer/impl/DialpadImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialpadImpl$1;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl$1;->this$0:Lcom/samsung/dialer/impl/DialpadImpl;

    #getter for: Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/samsung/dialer/impl/DialpadImpl;->access$000(Lcom/samsung/dialer/impl/DialpadImpl;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    return-void
.end method
