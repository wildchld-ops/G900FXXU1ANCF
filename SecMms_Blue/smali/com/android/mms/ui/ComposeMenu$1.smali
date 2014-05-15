.class Lcom/android/mms/ui/ComposeMenu$1;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;

.field final synthetic val$location:Lcom/samsung/mms/model/LocationVcardModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/samsung/mms/model/LocationVcardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$1;->this$0:Lcom/android/mms/ui/ComposeMenu;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$1;->val$location:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$1;->this$0:Lcom/android/mms/ui/ComposeMenu;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$1;->val$location:Lcom/samsung/mms/model/LocationVcardModel;

    #calls: Lcom/android/mms/ui/ComposeMenu;->createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    invoke-static {v1, p2, v2}, Lcom/android/mms/ui/ComposeMenu;->access$400(Lcom/android/mms/ui/ComposeMenu;ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$1;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
