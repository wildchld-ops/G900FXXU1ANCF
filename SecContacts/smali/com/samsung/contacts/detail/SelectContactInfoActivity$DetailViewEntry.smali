.class public Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;
.super Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public data:Ljava/lang/String;

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public textDirection:I

.field public type:I

.field public typeString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;-><init>(I)V

    iput v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    iput v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iput v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->textDirection:I

    iput v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->isPrimary:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    return-void
.end method

.method public static fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJLcom/android/contacts/common/model/dataitem/DataKind;)Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;
    .locals 5

    new-instance v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    invoke-direct {v0}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;-><init>()V

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {p5, p0}, Lcom/android/contacts/common/model/dataitem/DataKind;->getKindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {p1, p0, p5}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p1, p5}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, p5}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v3

    iput v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    const-string v3, ""

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iget-object v3, p5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_2

    iget v3, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, ""

    iput-object v3, v0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    iput v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->type:I

    iget-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iget v1, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iget v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->collapseWith(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)V

    return-void
.end method

.method public shouldCollapseWith(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;->shouldCollapseWith(Lcom/samsung/contacts/detail/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
