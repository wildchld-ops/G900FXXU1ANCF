.class Lcom/samsung/contacts/detail/SelectContactInfoActivity$HeaderViewEntry;
.super Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewEntry"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    return-void
.end method
