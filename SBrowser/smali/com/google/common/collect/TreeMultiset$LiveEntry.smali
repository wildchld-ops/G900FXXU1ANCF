.class Lcom/google/common/collect/TreeMultiset$LiveEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeMultiset$LiveEntry;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->expectedRoot:Lcom/google/common/collect/TreeMultiset$Node;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->count:I

    goto :goto_0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$LiveEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
