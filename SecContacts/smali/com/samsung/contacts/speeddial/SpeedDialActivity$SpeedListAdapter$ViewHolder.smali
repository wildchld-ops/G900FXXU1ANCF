.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field AddButton:Landroid/widget/LinearLayout;

.field DelBtnContainer:Landroid/widget/RelativeLayout;

.field DelButton:Landroid/widget/Button;

.field listItemData:Landroid/widget/LinearLayout;

.field name:Landroid/widget/TextView;

.field phone:Landroid/widget/TextView;

.field photoView:Landroid/widget/ImageView;

.field spdlNum:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$ViewHolder;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V

    return-void
.end method
