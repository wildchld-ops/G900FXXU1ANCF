.class Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation


# instance fields
.field protected id:J

.field protected isEnabled:Z

.field private final viewTypeForAdapter:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->id:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    iput p1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->viewTypeForAdapter:I

    return-void
.end method


# virtual methods
.method getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->id:J

    return-wide v0
.end method

.method getViewType()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->viewTypeForAdapter:I

    return v0
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    return v0
.end method
