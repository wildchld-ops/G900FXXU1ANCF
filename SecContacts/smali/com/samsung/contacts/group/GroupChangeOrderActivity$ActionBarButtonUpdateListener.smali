.class final Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/ButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupChangeOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;

    #calls: Lcom/samsung/contacts/group/GroupChangeOrderActivity;->updateDoneButtonState(Z)V
    invoke-static {v0, p1}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->access$200(Lcom/samsung/contacts/group/GroupChangeOrderActivity;Z)V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    return-void
.end method
