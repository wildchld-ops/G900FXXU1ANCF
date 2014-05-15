.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryView"
.end annotation


# instance fields
.field protected isEnabled:Z

.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

.field private final viewType:I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->viewType:I

    return-void
.end method


# virtual methods
.method getViewType()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->viewType:I

    return v0
.end method
