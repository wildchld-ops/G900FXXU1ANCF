.class Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;
.super Ljava/lang/Object;
.source "EditGroupSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupCache"
.end annotation


# instance fields
.field public checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public groupText:Landroid/widget/TextView;

.field public parentLayout:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter$GroupCache;-><init>()V

    return-void
.end method
