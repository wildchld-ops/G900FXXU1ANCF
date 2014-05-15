.class Lcom/samsung/contacts/detail/SetDefaultActivity$2;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/SetDefaultActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/SetDefaultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$2;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$2;->this$0:Lcom/samsung/contacts/detail/SetDefaultActivity;

    #calls: Lcom/samsung/contacts/detail/SetDefaultActivity;->performSaveAction()V
    invoke-static {v0}, Lcom/samsung/contacts/detail/SetDefaultActivity;->access$000(Lcom/samsung/contacts/detail/SetDefaultActivity;)V

    return-void
.end method
