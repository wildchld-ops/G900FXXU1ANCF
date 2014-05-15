.class Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;
.super Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindTitleViewEntry"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SetDefaultActivity$ViewEntry;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SetDefaultActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
