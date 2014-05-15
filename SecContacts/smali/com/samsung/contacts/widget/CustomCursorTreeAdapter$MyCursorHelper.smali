.class Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;
.super Ljava/lang/Object;
.source "CustomCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;,
        Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;
    }
.end annotation


# instance fields
.field private mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

.field private mDataValid:Z

.field private mRowIDColumn:I

.field final synthetic this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;Landroid/database/Cursor;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iput-boolean v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    new-instance v1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;-><init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)V

    iput-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    new-instance v1, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$1;)V

    iput-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic access$300(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    return p1
.end method


# virtual methods
.method changeCursor(Landroid/database/Cursor;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->swapCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method getId(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveTo(I)Landroid/database/Cursor;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method swapCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iput-object p1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mContentObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->notifyDataSetChanged(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    iget-object v1, p0, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter$MyCursorHelper;->this$0:Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/widget/CustomCursorTreeAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
