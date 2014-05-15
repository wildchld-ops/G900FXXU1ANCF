.class public Lcom/android/contacts/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttribute(Landroid/content/res/Resources$Theme;I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1

    const v0, 0x101030e

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method
