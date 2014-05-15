.class Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mMaxContactsNumber:I
    invoke-static {v1}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$000(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$1;->this$0:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;

    #getter for: Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->mContactsCount:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;->access$100(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->show(Landroid/app/FragmentManager;II)V

    return-void
.end method
