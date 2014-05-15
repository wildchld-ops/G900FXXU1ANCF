.class Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CustomCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->access$402(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->access$402(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
