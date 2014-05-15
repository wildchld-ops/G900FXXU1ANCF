.class Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CustomCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    iget-object v0, p1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    #getter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->access$100(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    #getter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->mAutoRequery:Z
    invoke-static {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->access$200(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    #getter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->access$300(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    #getter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->access$300(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    #setter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->access$402(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Z)Z

    :cond_0
    return-void
.end method
