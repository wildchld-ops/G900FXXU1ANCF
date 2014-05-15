.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;
.super Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryItemView"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final logType:I

.field private final position:I

.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;ILjava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;I)V

    iput p2, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->position:I

    iput-object p3, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->id:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->logType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->isEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->getPosition()I

    move-result v0

    return v0
.end method

.method private getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->position:I

    return v0
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->id:Ljava/lang/String;

    return-object v0
.end method

.method getLogType()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->logType:I

    return v0
.end method
