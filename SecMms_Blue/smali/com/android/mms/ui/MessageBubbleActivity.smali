.class public Lcom/android/mms/ui/MessageBubbleActivity;
.super Landroid/app/Activity;
.source "MessageBubbleActivity.java"


# static fields
.field protected static final BG_STYLE_ID:[I = null

.field protected static final BUBBLE_BG_ID:[I = null

.field protected static final BUBBLE_RECEIVE_STYLE_H_ID:[I = null

.field protected static final BUBBLE_RECEIVE_STYLE_ID:[I = null

.field protected static final BUBBLE_SEND_STYLE_H_ID:[I = null

.field protected static final BUBBLE_SEND_STYLE_ID:[I = null

.field protected static final CUSTOM2_BG_STYLE_ID:[I = null

.field protected static final CUSTOM2_BUBBLE_BG_ID:[I = null

.field protected static final CUSTOM_BG_STYLE_ID:[I = null

.field protected static final CUSTOM_BUBBLE_BG_ID:[I = null

.field protected static CUSTOM_ITEM_INDEX:I = 0x0

.field private static final ITEM_BETWEEN_GAP:I = 0x1c

.field private static final ITEM_BETWEEN_GAP_LAND:I = 0x14

.field protected static final ITEM_WIDTH:I = 0x64

.field protected static final MENU_SELECTION_CANCEL:I = 0x2

.field protected static final MENU_SELECTION_SAVE:I = 0x1

.field protected static final NEW_CUSTOM_ITEM_INDEX:I = 0x0

.field private static final SIDE_PADDING:I = 0xf

.field private static final SIDE_PADDING_LAND:I = 0xe

.field private static final TAG:Ljava/lang/String; = "Mms/MessageBubbleActivity"

.field protected static mActionBar:Landroid/app/ActionBar; = null

.field protected static mBGImageArray:[I = null

.field protected static mBGStyleArray:[I = null

.field protected static mCancelButton:Landroid/widget/Button; = null

.field private static mGridHeightLand:I = 0x0

.field protected static mGridWidth:I = 0x0

.field protected static mIsCustomItemExist:Z = false

.field protected static mMaxItemCount:I = 0x0

.field protected static final mMinTime_BG:I = 0x64

.field protected static final mMinTime_Bubble:I = 0xc8

.field protected static mSaveButton:Landroid/widget/Button; = null

.field protected static final mTimeFactor_BG:F = 1.5f

.field protected static final mTimeFactor_Bubble:F = 2.0f

.field protected static final originalTarget:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image_original.jpg"

.field protected static final originalTargetFileName:Ljava/lang/String; = "message_background_image_original.jpg"

.field protected static sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static final source:Ljava/lang/String; = "/mnt/sdcard/message_background_image.jpg"

.field protected static source_origin:Ljava/lang/String; = null

.field protected static final target:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image.jpg"

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"

.field protected static targetOriginFileName:Ljava/lang/String;


# instance fields
.field protected BUBBLE_GRID_HEIGHT:I

.field protected BUBBLE_GRID_WIDTH:I

.field protected NO_OF_ITEMS_NO_ANIMATION:I

.field protected doReceiveAnimatin:Z

.field protected doSentAnimation:Z

.field protected doanimation:Z

.field protected mAnimationTime:I

.field protected mAnimationValue:I

.field protected mBGSScollVertical:Landroid/widget/ScrollView;

.field protected mBGScroll:Landroid/widget/HorizontalScrollView;

.field protected mBackgroundVertical:Landroid/widget/LinearLayout;

.field protected mCurrentScrollPosition:I

.field public mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mGridViewHorizontal_BG:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Receice:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Sent:Landroid/widget/GridView;

.field protected mGridViewVertical_BG:Landroid/widget/GridView;

.field protected mGridViewVertical_Reveice:Landroid/widget/GridView;

.field protected mGridViewVertical_Sent:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsLandscape:Z

.field protected mLayoutHorizontal:Landroid/widget/LinearLayout;

.field private mMessageFakeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinBubbleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSkinFakeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinFakeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevSelectedBGIndex:I

.field protected mReceiveScroll:Landroid/widget/HorizontalScrollView;

.field protected mReceiveScrollVertical:Landroid/widget/ScrollView;

.field public mSelectedBGIndex:I

.field public mSelectedBubbleReceiveIndex:I

.field public mSelectedBubbleSentIndex:I

.field protected mSentScroll:Landroid/widget/HorizontalScrollView;

.field protected mSentScrollVertical:Landroid/widget/ScrollView;

.field protected mSmoothHoriScroll:Landroid/view/animation/Animation;

.field protected mSmoothVerticalScroll:Landroid/view/animation/Animation;

.field protected mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x320

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_H_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_H_ID:[I

    const-string v0, "/mnt/sdcard/message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->source_origin:Ljava/lang/String;

    const-string v0, "message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->targetOriginFileName:Ljava/lang/String;

    const/16 v0, 0x38c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    sput v3, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x72t 0x1t 0x2t 0x7ft
        0x73t 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
        0x75t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x53t 0x2t 0x2t 0x7ft
        0x54t 0x2t 0x2t 0x7ft
        0x55t 0x2t 0x2t 0x7ft
        0x56t 0x2t 0x2t 0x7ft
        0x57t 0x2t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x77t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x58t 0x2t 0x2t 0x7ft
        0x53t 0x2t 0x2t 0x7ft
        0x54t 0x2t 0x2t 0x7ft
        0x55t 0x2t 0x2t 0x7ft
        0x56t 0x2t 0x2t 0x7ft
        0x57t 0x2t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x77t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x58t 0x2t 0x2t 0x7ft
        0x58t 0x2t 0x2t 0x7ft
        0x53t 0x2t 0x2t 0x7ft
        0x54t 0x2t 0x2t 0x7ft
        0x55t 0x2t 0x2t 0x7ft
        0x56t 0x2t 0x2t 0x7ft
        0x57t 0x2t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0xe0t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0xe1t 0x1t 0x2t 0x7ft
        0xe3t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0xebt 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
        0xf1t 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0xect 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xf0t 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->NO_OF_ITEMS_NO_ANIMATION:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    return-void
.end method

.method private static createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 24

    new-instance v19, Ljava/io/File;

    const-string v20, "/data/data/com.android.mms/"

    const-string v21, "message_background_image.jpg"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v9

    move v12, v14

    move v13, v15

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v17

    :goto_0
    if-nez v17, :cond_1

    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "photo is null. return null"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_1
    return-object v19

    :cond_0
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_0

    :cond_1
    sub-int v12, v14, v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v19

    if-nez v19, :cond_5

    if-eqz p1, :cond_2

    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v8, v19, v20

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    div-int/lit8 v22, v22, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v17, v18

    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-lt v0, v12, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v13, :cond_4

    :cond_3
    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "setBackground photo.getHeight() < mNewScreenHeight || photo.getWidth() < mNewScreenWidth"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v15, v14, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v17, v18

    :cond_4
    new-instance v6, Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v5, v6

    :goto_3
    move-object/from16 v19, v5

    goto/16 :goto_1

    :cond_5
    if-nez p1, :cond_2

    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v8, v19, v20

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v17, 0x0

    move-object/from16 v17, v18

    goto/16 :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "OutOfMemoryError caught @ getCropedBackground() and throw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v5

    goto :goto_3
.end method

.method public static getBGStyleArray(Z)[I
    .locals 1

    invoke-static {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray(Z)V

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    return-object v0
.end method

.method protected static getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v4, :cond_0

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v2, :cond_3

    invoke-static {p0, v3, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_3
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->releaseBackgroundBitmapDrawable()V

    if-eqz v1, :cond_5

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    :cond_5
    invoke-static {p0, v3, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1
.end method

.method public static getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I
    .locals 9

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    sub-int v3, v0, v2

    const-string v6, "StatusBarTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StatusBar Height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TitleBar Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isCustomItemExist()Z
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    return v1
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static releaseBackgroundBitmapDrawable()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_1
    return-void
.end method

.method private setDateSeperator()V
    .locals 0

    return-void
.end method

.method protected static updateBGStyleArray(Z)V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    :goto_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x14

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0
.end method


# virtual methods
.method protected calculateAnimationValues(IIIIZ)V
    .locals 2

    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    sub-int v0, p3, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, p4, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v1, p4, 0xc8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    goto :goto_0
.end method

.method protected calculateScrollPosition(IIII)I
    .locals 2

    div-int v0, p4, p2

    mul-int/2addr v0, p3

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public makeView()V
    .locals 11

    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v3

    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    invoke-static {v2, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    iput v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iput v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0b0182

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040065

    iget-object v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageSkinFakeItem;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MessageSkinBubbleItem;->bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V

    invoke-virtual {v1, v7}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    iget v8, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v5, v8}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    const v5, 0x7f0b0188

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    const v5, 0x7f0b0184

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    const v5, 0x7f0b0190

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    const v5, 0x7f0b018e

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    const v5, 0x7f0b018b

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    const v5, 0x7f0b0186

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const v5, 0x7f0b0189

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    const v5, 0x7f0b0185

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    const v5, 0x7f0b0187

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    const v5, 0x7f0b0191

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    const v5, 0x7f0b018f

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    const v5, 0x7f0b018d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    const v5, 0x7f0b018c

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->updateGridViewLayout()V

    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v8, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground(Z)V

    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setDateSeperator()V

    return-void

    :cond_5
    move v5, v7

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->releaseBackgroundBitmapDrawable()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v8, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    iget v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040059

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0352

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    invoke-direct {v3, v0, v5}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->populateFakeList()V

    return-void
.end method

.method public populateFakeList()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    const v2, 0x7f0b0182

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040065

    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageSkinFakeItem;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageSkinBubbleItem;->bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    iget v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    return-void
.end method

.method public setActionBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mActionBar:Landroid/app/ActionBar;

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040039

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageBubbleActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageBubbleActivity$1;-><init>(Lcom/android/mms/ui/MessageBubbleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0c00da

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageBubbleActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageBubbleActivity$2;-><init>(Lcom/android/mms/ui/MessageBubbleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setBackground(Z)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v2, v1, v7

    neg-int v2, v2

    aget v3, v1, v6

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    aget v5, v1, v7

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    aget v6, v1, v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setBounds(IIII)V

    const/high16 v2, 0x3300

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBubbleImage(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBubbleImage(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method protected setWindowResizingEventHandler()V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/MessageBubbleActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageBubbleActivity$3;-><init>(Lcom/android/mms/ui/MessageBubbleActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected updateGridViewLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    sget v3, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
