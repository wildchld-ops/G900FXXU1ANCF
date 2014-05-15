.class Lcom/android/mms/ui/MessageListItem$16$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$16;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$16;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$16$1;->this$1:Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16$1;->this$1:Lcom/android/mms/ui/MessageListItem$16;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->deleteDraftMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3500(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16$1;->this$1:Lcom/android/mms/ui/MessageListItem$16;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$3600(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
