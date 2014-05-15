.class final Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;
.super Ljava/lang/Object;
.source "GroupMultiSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/ButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMultipleDeletionUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    #setter for: Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->access$602(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    #setter for: Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->access$702(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$GroupMultipleDeletionUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->updateSelectionMenu()V

    return-void
.end method
