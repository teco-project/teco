//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Ivld {
    /// 出现信息索引对
    ///
    /// AppearIndex可选值定义如下：
    ///
    /// | AppearIndex名称 | AppearIndex取值 | AppearIndex描述 |
    /// |---|---|---|
    /// | APPEAR_INDEX_INVALID | 0 | 非法的任务状态 |
    /// | APPEAR_INDEX_AUDIO | 1 | 音频出现信息|
    /// | APPEAR_INDEX_TEXT | 2 | 可视文本出现信息|
    /// | APPEAR_INDEX_VIDEO | 3 | 视频出现信息|
    ///
    /// 例如，当AppearIndex=1，Index=15，则意味着目标关键词出现在第16个(Index计数从0开始)音频文字识别结果之中
    public struct AppearIndexPair: TCOutputModel {
        /// 出现信息，取值范围为[1，3]
        public let appearIndex: Int64

        /// AppearInfo中AppearIndex对应元素的第Index元素，从0开始技术
        public let index: Int64

        enum CodingKeys: String, CodingKey {
            case appearIndex = "AppearIndex"
            case index = "Index"
        }
    }

    /// 出现信息结构
    ///
    /// 包含关键词在音频转文字(ASR)，图片转文字(OCR)以及视频结果中的出现信息
    public struct AppearInfo: TCOutputModel {
        /// 关键词在音频文本结果中的出现位置数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioAppearSet: [TextAppearInfo]?

        /// 关键词在可视文本结果中的出现位置数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textAppearSet: [TextAppearInfo]?

        /// 关键词在视频信息中的出现位置数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoAppearSet: [VideoAppearInfo]?

        enum CodingKeys: String, CodingKey {
            case audioAppearSet = "AudioAppearSet"
            case textAppearSet = "TextAppearSet"
            case videoAppearSet = "VideoAppearSet"
        }
    }

    /// 音频文件分析结果数据
    public struct AudioData: TCOutputModel {
        /// 音频识别文本结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioInfoSet: [AudioInfo]?

        /// 音频识别标签数据
        public let textTagSet: MultiLevelTag

        enum CodingKeys: String, CodingKey {
            case audioInfoSet = "AudioInfoSet"
            case textTagSet = "TextTagSet"
        }
    }

    /// 音频识别结果信息
    public struct AudioInfo: TCOutputModel {
        /// ASR提取的文字信息
        public let content: String

        /// ASR起始时间戳，从0开始
        public let startTimeStamp: Float

        /// ASR结束时间戳，从0开始
        public let endTimeStamp: Float

        /// ASR提取的音频标签
        public let tag: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case tag = "Tag"
        }
    }

    /// 音频文件元信息
    public struct AudioMetadata: TCOutputModel {
        /// 媒资音频文件大小，单位为Byte
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: Int64?

        /// 媒资音频文件MD5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5: String?

        /// 媒资音频时长，单位为秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: Float?

        /// 媒资音频采样率，单位为khz
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sampleRate: Float?

        /// 媒资音频码率，单位为kbps
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bitRate: Int64?

        /// 媒资音频文件格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let format: String?

        enum CodingKeys: String, CodingKey {
            case fileSize = "FileSize"
            case md5 = "MD5"
            case duration = "Duration"
            case sampleRate = "SampleRate"
            case bitRate = "BitRate"
            case format = "Format"
        }
    }

    /// 已分类的人物信息
    public struct ClassifiedPersonInfo: TCOutputModel {
        /// 人物分类名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let classifyName: String?

        /// 符合特定分类的人物信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let personInfoSet: [PersonInfo]?

        enum CodingKeys: String, CodingKey {
            case classifyName = "ClassifyName"
            case personInfoSet = "PersonInfoSet"
        }
    }

    /// 自定义分类信息
    public struct CustomCategory: TCOutputModel {
        /// 自定义分类ID
        public let categoryId: String

        /// 一级自定义类型
        public let l1Category: String

        /// 二级自定义类型
        public let l2Category: String

        enum CodingKeys: String, CodingKey {
            case categoryId = "CategoryId"
            case l1Category = "L1Category"
            case l2Category = "L2Category"
        }
    }

    /// 自定义人物批量查询过滤条件
    public struct CustomPersonFilter: TCInputModel {
        /// 待查询的人物姓名
        public let name: String

        /// 待过滤的自定义类型Id数组
        public let categoryIdSet: [String]

        /// 待过滤的自定义人物Id数组
        public let personIdSet: [String]

        /// 一级自定义人物类型数组
        public let l1CategorySet: [String]

        public init(name: String, categoryIdSet: [String], personIdSet: [String], l1CategorySet: [String]) {
            self.name = name
            self.categoryIdSet = categoryIdSet
            self.personIdSet = personIdSet
            self.l1CategorySet = l1CategorySet
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case categoryIdSet = "CategoryIdSet"
            case personIdSet = "PersonIdSet"
            case l1CategorySet = "L1CategorySet"
        }
    }

    /// 自定义人物信息
    public struct CustomPersonInfo: TCOutputModel {
        /// 自定义人物Id
        public let personId: String

        /// 自定义人物姓名
        public let name: String

        /// 自定义人物简介信息
        public let basicInfo: String

        /// 一级自定义人物类型
        public let l1Category: String

        /// 二级自定义人物类型
        public let l2Category: String

        /// 自定义人物图片信息
        public let imageInfoSet: [PersonImageInfo]

        /// 自定义人物创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case name = "Name"
            case basicInfo = "BasicInfo"
            case l1Category = "L1Category"
            case l2Category = "L2Category"
            case imageInfoSet = "ImageInfoSet"
            case createTime = "CreateTime"
        }
    }

    /// 任务结果数据
    public struct Data: TCOutputModel {
        /// 节目粒度结构化结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let showInfo: ShowInfo?

        enum CodingKeys: String, CodingKey {
            case showInfo = "ShowInfo"
        }
    }

    /// 图片文件标签结果
    public struct ImageData: TCOutputModel {
        /// 图片中出现的可视文本识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrSet: [ImageOcr]?

        /// 图片中出现的帧标签识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frameTagSet: MultiLevelTag?

        /// 图片中出现的层级人物识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let multiLevelPersonInfoSet: [MultiLevelPersonInfo]?

        /// 图片中出现的台标识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tvLogo: ImageLogo?

        /// 图片中出现的来源信息识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceLogo: ImageLogo?

        enum CodingKeys: String, CodingKey {
            case ocrSet = "OcrSet"
            case frameTagSet = "FrameTagSet"
            case multiLevelPersonInfoSet = "MultiLevelPersonInfoSet"
            case tvLogo = "TvLogo"
            case sourceLogo = "SourceLogo"
        }
    }

    /// 图片中出现的Logo信息
    public struct ImageLogo: TCOutputModel {
        /// 图片中出现的Logo识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logo: String?

        /// Logo在图片中出现的位置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearRect: Rectf?

        enum CodingKeys: String, CodingKey {
            case logo = "Logo"
            case appearRect = "AppearRect"
        }
    }

    /// 图片文件元信息
    public struct ImageMetadata: TCOutputModel {
        /// 媒资图片文件大小，单位为Byte
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: Int64?

        /// 媒资图片文件MD5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5: String?

        /// 媒资图片文件宽度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let width: Int64?

        /// 媒资图片文件高度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let height: Int64?

        /// 媒资图片文件格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let format: String?

        enum CodingKeys: String, CodingKey {
            case fileSize = "FileSize"
            case md5 = "MD5"
            case width = "Width"
            case height = "Height"
            case format = "Format"
        }
    }

    /// 图片OCR识别结果
    public struct ImageOcr: TCOutputModel {
        /// 图片中可视文本识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?

        /// 可视文本在图片中的位置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearRect: Rectf?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case appearRect = "AppearRect"
        }
    }

    /// 一级标签信息
    ///
    /// 请注意，一级标签信息可能不包含二级标签(此时L2TagSet为空)。在这种情况下，一级标签可直接包含出现信息。
    public struct L1Tag: TCOutputModel {
        /// 一级标签名
        public let name: String

        /// 二级标签数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l2TagSet: [L2Tag]?

        /// 一级标签出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearIndexPairSet: [AppearIndexPair]?

        /// 一级标签首次出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstAppear: Int64?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case l2TagSet = "L2TagSet"
            case appearIndexPairSet = "AppearIndexPairSet"
            case firstAppear = "FirstAppear"
        }
    }

    /// 二级标签信息
    ///
    /// 请注意，二级标签信息可能不包含三级标签(此时L3TagSet为空)。
    public struct L2Tag: TCOutputModel {
        /// 二级标签名
        public let name: String

        /// 从属于此二级标签的三级标签数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l3TagSet: [L3Tag]?

        /// 二级标签出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearIndexPairSet: [AppearIndexPair]?

        /// 二级标签首次出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstAppear: Int64?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case l3TagSet = "L3TagSet"
            case appearIndexPairSet = "AppearIndexPairSet"
            case firstAppear = "FirstAppear"
        }
    }

    /// 三级标签信息。
    ///
    /// 三级标签不再包含任何子标签。所有三级标签都对应着识别结果中的出现信息，出现信息使用AppearIndexPairSet定位。
    public struct L3Tag: TCOutputModel {
        /// 三级标签名
        public let name: String

        /// 三级标签出现信息索引数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearIndexPairSet: [AppearIndexPair]?

        /// 三级标签首次出现信息，可选值为[1,3]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstAppear: Int64?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case appearIndexPairSet = "AppearIndexPairSet"
            case firstAppear = "FirstAppear"
        }
    }

    /// 媒资过滤条件
    public struct MediaFilter: TCInputModel {
        /// 媒资名称过滤条件
        public let mediaNameSet: [String]?

        /// 媒资状态数组，媒资状态可选值参见MediaInfo
        public let statusSet: [Int64]?

        /// 媒资ID数组
        public let mediaIdSet: [String]?

        /// 媒资自定义标签数组
        public let labelSet: [String]?

        /// 媒资文件类型，定义参见[MediaPreknownInfo.MediaType](https://cloud.tencent.com/document/product/1509/65063#MediaPreknownInfo)
        public let mediaType: Int64?

        public init(mediaNameSet: [String]? = nil, statusSet: [Int64]? = nil, mediaIdSet: [String]? = nil, labelSet: [String]? = nil, mediaType: Int64? = nil) {
            self.mediaNameSet = mediaNameSet
            self.statusSet = statusSet
            self.mediaIdSet = mediaIdSet
            self.labelSet = labelSet
            self.mediaType = mediaType
        }

        enum CodingKeys: String, CodingKey {
            case mediaNameSet = "MediaNameSet"
            case statusSet = "StatusSet"
            case mediaIdSet = "MediaIdSet"
            case labelSet = "LabelSet"
            case mediaType = "MediaType"
        }
    }

    /// 媒资信息结构体
    ///
    /// 媒资状态定义如下：
    ///
    /// | 状态名 | 状态值 | 状态描述 |
    /// |---|---|---|
    /// | MEDIA_STATUS_INVALID | 0 | 非法状态|
    /// | MEDIA_STATUS_WAITING| 1 | 等待中 |
    /// | MEDIA_STATUS_DOWNLOADING | 2 | 下载中 |
    /// | MEDIA_STATUS_DOWNLOADED | 3 | 下载完成 |
    /// | MEDIA_STATUS_DOWNLOAD_FAILED | 4 | 下载失败(已废弃) |
    /// | MEDIA_STATUS_TRANSCODING | 5 | 转码中 |
    /// | MEDIA_STATUS_TRANSCODED | 6 | 转码完成 |
    /// | MEDIA_STATUS_TRANCODE_FAILED | 7 | 转码失败(已废弃) |
    /// | MEDIA_STATUS_SUCCESS | 8 | 媒资文件状态就绪，可发起任务 |
    /// | MEDIA_STATUS_EXPIRED | 9 | 媒资文件已过期 |
    /// | MEDIA_STATUS_FAILED | 10 | 媒资导入失败 |
    public struct MediaInfo: TCOutputModel {
        /// 媒资ID
        public let mediaId: String

        /// 媒资名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 媒资下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downLoadURL: String?

        /// 媒资状态，取值参看上方表格
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 若状态为失败，表示失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedReason: String?

        /// 媒资视频元信息，仅在MediaType=VIDEO时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metadata: MediaMetadata?

        /// 导入视频进度，取值范围为[0,100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: Float?

        /// 媒资自定义标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 媒资导入完成后的回调地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackURL: String?

        /// 媒资文件类型，具体参看[MediaPreknownInfo](https://cloud.tencent.com/document/product/1509/65063#MediaPreknownInfo)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaType: Int64?

        /// 媒资音频元信息，仅在MediaType=Audio时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioMetadata: AudioMetadata?

        /// 媒资图片文件元信息，仅在MediaType=Image时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageMetadata: ImageMetadata?

        /// 媒资文本文件元信息，仅在MediaType=Text时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textMetadata: TextMetadata?

        enum CodingKeys: String, CodingKey {
            case mediaId = "MediaId"
            case name = "Name"
            case downLoadURL = "DownLoadURL"
            case status = "Status"
            case failedReason = "FailedReason"
            case metadata = "Metadata"
            case progress = "Progress"
            case label = "Label"
            case callbackURL = "CallbackURL"
            case mediaType = "MediaType"
            case audioMetadata = "AudioMetadata"
            case imageMetadata = "ImageMetadata"
            case textMetadata = "TextMetadata"
        }
    }

    /// 媒资文件视频元信息，包括分辨率，帧率，码率等
    public struct MediaMetadata: TCOutputModel {
        /// 媒资视频文件大小，单位为字节
        public let fileSize: Int64

        /// 媒资视频文件MD5
        public let md5: String

        /// 媒资视频时长，单位为秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: Float?

        /// 媒资视频总帧数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let numFrames: Int64?

        /// 媒资视频宽度，单位为像素
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let width: Int64?

        /// 媒资视频高度，单位为像素
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let height: Int64?

        /// 媒资视频帧率，单位为Hz
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fps: Float?

        /// 媒资视频比特率，单位为kbps
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bitRate: Int64?

        enum CodingKeys: String, CodingKey {
            case fileSize = "FileSize"
            case md5 = "MD5"
            case duration = "Duration"
            case numFrames = "NumFrames"
            case width = "Width"
            case height = "Height"
            case fps = "FPS"
            case bitRate = "BitRate"
        }
    }

    /// 描述输入媒资的先验知识，例如文件类型(视频)，媒体类型(新闻/综艺等)
    ///
    /// MediaPreknownInfo.MediaType:
    ///
    /// | MediaType 名称|  MediaType取值 | MediaType描述 |
    /// |---|---|---|
    /// | MEDIA_TYPE_INVALID | 0 | 非法的媒资文件类型 |
    /// | MEDIA_TYPE_IMAGE | 1 | 图片 |
    /// | MEDIA_TYPE_VIDEO | 2 | 视频 |
    /// | MEDIA_TYPE_AUDIO | 3 | 音频 |
    /// | MEDIA_TYPE_VIDEO_STREAM | 4 | 视频流，暂不支持 |
    /// | MEDIA_TYPE_TEXT | 5 | 文本 |
    ///
    /// MediaPreknownInfo.MediaLabel:
    ///
    /// | MediaLabel名称 | MediaLabel取值 | MediaLabel描述 |
    /// |---|---|---|
    /// | MEDIA_LABEL_INVALID | 0 | 非法的一级媒资素材类型 |
    /// | MEDIA_LABEL_NEWS | 1 | 新闻 |
    /// | MEDIA_LABEL_ENTERTAINMENT | 2 | 综艺|
    /// | MEDIA_LABEL_INTERNET_INFO | 3 | 互联网资讯 |
    /// | MEDIA_LABEL_MOVIE | 4 | 电影 |
    /// | MEDIA_LABEL_SERIES | 5 | 电视连续剧 |
    /// | MEDIA_LABEL_SPECIAL | 6 | 专题 |
    /// | MEDIA_LABEL_SPORT | 7 | 体育 |
    ///
    /// MediaPreknownInfo.MediaSecondLabel
    /// 请注意：**当且仅当MediaLabel=2(综艺)时MediaSecondLabel才有意义**
    ///
    /// | MediaSecondLabel名称 | MediaSecondLabel取值 | MediaSecondLabel 描述|
    /// |---|---|---|
    /// | MEDIA_SECOND_LABEL_INVALID |  0  | 非法的MediaSecondLabel |
    /// | MEDIA_SECOND_LABEL_EVENING | 1 | 综艺晚会 |
    /// | MEDIA_SECOND_LABEL_OTHERS | 2 | 其他 |
    ///
    /// MediaMeta.MediaLang
    ///
    /// | MediaLang名称 | MediaLang取值 | MediaLang描述 |
    /// |---|---|---|
    /// | MEDIA_LANG_INVALID | 0 | 非法的MediaLang |
    /// | MEDIA_LANG_MANDARIN | 1 | 普通话 |
    /// | MEDIA_LANG_CANTONESE | 2 | 粤语 |
    public struct MediaPreknownInfo: TCInputModel, TCOutputModel {
        /// 媒资文件类型，参见MediaPreknownInfo结构体定义
        public let mediaType: Int64

        /// 媒资素材一级类型，参见MediaPreknownInfo结构体定义
        public let mediaLabel: Int64

        /// 媒资素材二级类型，参见MediaPreknownInfo结构体定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaSecondLabel: Int64?

        /// 媒资音频类型，参见MediaPreknownInfo结构体定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaLang: Int64?

        public init(mediaType: Int64, mediaLabel: Int64, mediaSecondLabel: Int64, mediaLang: Int64? = nil) {
            self.mediaType = mediaType
            self.mediaLabel = mediaLabel
            self.mediaSecondLabel = mediaSecondLabel
            self.mediaLang = mediaLang
        }

        enum CodingKeys: String, CodingKey {
            case mediaType = "MediaType"
            case mediaLabel = "MediaLabel"
            case mediaSecondLabel = "MediaSecondLabel"
            case mediaLang = "MediaLang"
        }
    }

    /// 带类型树的已分类人物信息
    public struct MultiLevelPersonInfo: TCOutputModel {
        /// 一级分类名称(分类信息参见自定义人物类型)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l1ClassifyName: String?

        /// 已分类人物信息数组(所有分类类型为二级分类)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l2ClassifiedPersonInfoSet: [ClassifiedPersonInfo]?

        /// 检测结果来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: UInt64?

        enum CodingKeys: String, CodingKey {
            case l1ClassifyName = "L1ClassifyName"
            case l2ClassifiedPersonInfoSet = "L2ClassifiedPersonInfoSet"
            case source = "Source"
        }
    }

    /// 标签信息结构体
    ///
    /// 包含多级(最多三级)标签结果，以及这些标签在识别结果中的出现位置
    public struct MultiLevelTag: TCOutputModel {
        /// 树状标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagSet: [L1Tag]?

        /// 标签在识别结果中的定位信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearInfo: AppearInfo?

        enum CodingKeys: String, CodingKey {
            case tagSet = "TagSet"
            case appearInfo = "AppearInfo"
        }
    }

    /// 自定义人物人脸图片信息
    public struct PersonImageInfo: TCOutputModel {
        /// 人脸图片ID
        public let imageId: String

        /// 自定义人脸图片的URL，存储在IVLDCustomPreson存储桶内
        public let imageURL: String

        /// 自定义人脸图片处理错误码
        public let errorCode: String

        /// 自定义人脸图片处理错误信息
        public let errorMsg: String

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case imageURL = "ImageURL"
            case errorCode = "ErrorCode"
            case errorMsg = "ErrorMsg"
        }
    }

    /// 人物信息
    public struct PersonInfo: TCOutputModel {
        /// 公众人物姓名
        public let name: String

        /// 公众人物职务
        public let job: String

        /// 首次出现模态，可选值为[1,3]，详细参见AppearIndex定义
        public let firstAppear: Int64

        /// 人物出现信息
        public let appearInfo: AppearInfo

        /// 人脸在图片中的位置，仅在图片标签任务有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appearRect: Rectf?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case job = "Job"
            case firstAppear = "FirstAppear"
            case appearInfo = "AppearInfo"
            case appearRect = "AppearRect"
        }
    }

    /// 矩形内容框
    public struct Rectf: TCOutputModel {
        /// 矩形框左上角水平座标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let x: Float?

        /// 矩形框左上角竖直座标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let y: Float?

        /// 矩形框宽度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let width: Float?

        /// 矩形框长度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let height: Float?

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
        }
    }

    /// 视频结构化结果
    public struct ShowInfo: TCOutputModel {
        /// 节目日期(只在新闻有效)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let date: String?

        /// 台标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logo: String?

        /// 节目名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let column: String?

        /// 来源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: String?

        /// 节目封面
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let coverImageURL: String?

        /// 节目内容概要列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summarySet: [String]?

        /// 节目片段标题列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let titleSet: [String]?

        /// 音频识别结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioInfoSet: [AudioInfo]?

        /// 可视文字识别结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textInfoSet: [TextInfo]?

        /// 已分类人物信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let classifiedPersonInfoSet: [ClassifiedPersonInfo]?

        /// 文本标签列表，包含标签内容和出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textTagSet: MultiLevelTag?

        /// 帧标签列表，包括人物信息，场景信息等
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frameTagSet: MultiLevelTag?

        /// 视频下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webMediaURL: String?

        /// 媒资分类信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaClassifierSet: [String]?

        /// 概要标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summaryTagSet: [String]?

        /// 未知人物信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unknownPersonSet: [UnknownPerson]?

        /// 树状已分类人物信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let multiLevelPersonInfoSet: [MultiLevelPersonInfo]?

        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case logo = "Logo"
            case column = "Column"
            case source = "Source"
            case coverImageURL = "CoverImageURL"
            case summarySet = "SummarySet"
            case titleSet = "TitleSet"
            case audioInfoSet = "AudioInfoSet"
            case textInfoSet = "TextInfoSet"
            case classifiedPersonInfoSet = "ClassifiedPersonInfoSet"
            case textTagSet = "TextTagSet"
            case frameTagSet = "FrameTagSet"
            case webMediaURL = "WebMediaURL"
            case mediaClassifierSet = "MediaClassifierSet"
            case summaryTagSet = "SummaryTagSet"
            case unknownPersonSet = "UnknownPersonSet"
            case multiLevelPersonInfoSet = "MultiLevelPersonInfoSet"
        }
    }

    /// 排序条件
    public struct SortBy: TCInputModel {
        /// 排序字段，默认为CreateTime
        public let by: String?

        /// true表示降序，false表示升序
        public let descend: Bool?

        public init(by: String? = nil, descend: Bool? = nil) {
            self.by = by
            self.descend = descend
        }

        enum CodingKeys: String, CodingKey {
            case by = "By"
            case descend = "Descend"
        }
    }

    /// 任务筛选条件结构体
    public struct TaskFilter: TCInputModel {
        /// 媒资文件类型
        public let mediaTypeSet: [Int64]?

        /// 待筛选的任务状态列表
        public let taskStatusSet: [Int64]?

        /// 待筛选的任务名称数组
        public let taskNameSet: [String]?

        /// TaskId数组
        public let taskIdSet: [String]?

        /// 媒资文件名数组
        public let mediaNameSet: [String]?

        /// 媒资语言类型
        public let mediaLangSet: [Int64]?

        /// 媒资素材一级类型
        public let mediaLabelSet: [Int64]?

        /// 媒资自定义标签数组
        public let labelSet: [String]?

        public init(mediaTypeSet: [Int64]? = nil, taskStatusSet: [Int64]? = nil, taskNameSet: [String]? = nil, taskIdSet: [String]? = nil, mediaNameSet: [String]? = nil, mediaLangSet: [Int64]? = nil, mediaLabelSet: [Int64]? = nil, labelSet: [String]? = nil) {
            self.mediaTypeSet = mediaTypeSet
            self.taskStatusSet = taskStatusSet
            self.taskNameSet = taskNameSet
            self.taskIdSet = taskIdSet
            self.mediaNameSet = mediaNameSet
            self.mediaLangSet = mediaLangSet
            self.mediaLabelSet = mediaLabelSet
            self.labelSet = labelSet
        }

        enum CodingKeys: String, CodingKey {
            case mediaTypeSet = "MediaTypeSet"
            case taskStatusSet = "TaskStatusSet"
            case taskNameSet = "TaskNameSet"
            case taskIdSet = "TaskIdSet"
            case mediaNameSet = "MediaNameSet"
            case mediaLangSet = "MediaLangSet"
            case mediaLabelSet = "MediaLabelSet"
            case labelSet = "LabelSet"
        }
    }

    /// 任务信息
    ///
    /// TaskStatus定义如下:
    ///
    /// | TaskStatus名称 | TaskStatus取值 | TaskStatus描述 |
    /// |---|---|---|
    /// | TASK_STATUS_INVALID | 0 | 非法的任务状态 |
    /// | TASK_STATUS_WAITING | 1 | 排队中 |
    /// | TASK_STATUS_ANALYSING | 2 | 任务分析中 |
    /// | TASK_STATUS_ANALYSED | 3 | 任务分析完成 |
    /// | TASK_STATUS_SNAPSHOT_CREATING | 4 | 任务结果快照生成中 |
    /// | TASK_STATUS_SNAPSHOT_CREATED | 5 | 任务结果快照生成完成 |
    /// | TASK_STATUS_RESULT_UPLOADING | 6 | 任务结果快照上传中 |
    /// | TASK_STATUS_RESULT_UPLOADED | 7 | 任务结果快照上传完成 |
    /// | TASK_STATUS_SUCCESS | 8 | 任务执行完成 |
    /// | TASK_STATUS_FAILED | 9 | 任务执行失败 |
    public struct TaskInfo: TCOutputModel {
        /// 任务ID
        public let taskId: String

        /// 描述任务名称，指定后可根据名称筛选
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskName: String?

        /// 媒资文件ID
        public let mediaId: String

        /// 任务执行状态
        public let taskStatus: Int64

        /// 任务进度，范围为[0，100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskProgress: Float?

        /// 任务执行时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskTimeCost: Int64?

        /// 任务创建时间
        public let taskCreateTime: String

        /// 任务开始执行时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskStartTime: String?

        /// 任务失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedReason: String?

        /// 任务执行时指定的先验知识
        public let mediaPreknownInfo: MediaPreknownInfo

        /// 媒资文件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaName: String?

        /// 媒资自定义标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 任务分析完成后的后调地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callbackURL: String?

        /// 任务对应的媒资文件元信息，仅在MediaType为Audio时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioMetadata: AudioMetadata?

        /// 任务对应的媒资文件元信息，仅在MediaType为Audio时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageMetadata: ImageMetadata?

        /// 任务对应的媒资文件元信息，仅在MediaType为Text时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textMetadata: TextMetadata?

        /// 任务对应的媒资文件元信息，仅在MediaType为Video时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metadata: MediaMetadata?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskName = "TaskName"
            case mediaId = "MediaId"
            case taskStatus = "TaskStatus"
            case taskProgress = "TaskProgress"
            case taskTimeCost = "TaskTimeCost"
            case taskCreateTime = "TaskCreateTime"
            case taskStartTime = "TaskStartTime"
            case failedReason = "FailedReason"
            case mediaPreknownInfo = "MediaPreknownInfo"
            case mediaName = "MediaName"
            case label = "Label"
            case callbackURL = "CallbackURL"
            case audioMetadata = "AudioMetadata"
            case imageMetadata = "ImageMetadata"
            case textMetadata = "TextMetadata"
            case metadata = "Metadata"
        }
    }

    /// 关键词在文本中的定位信息
    ///
    /// Position为关键词在文本中的偏移量，从0开始。例如，给定文本结果"欢迎收看新闻三十分”，以及关键词"新闻三十分"，那么StartPosition的值为4，EndPosition的值为9
    public struct TextAppearInfo: TCOutputModel {
        /// 文本结果数组中的下标
        public let index: Int64

        /// 关键词在文本中出现的起始偏移量(包含)
        public let startPosition: Int64

        /// 关键词在文本中出现的结束偏移量(不包含)
        public let endPosition: Int64

        enum CodingKeys: String, CodingKey {
            case index = "Index"
            case startPosition = "StartPosition"
            case endPosition = "EndPosition"
        }
    }

    /// 文本文件标签识别结果
    public struct TextData: TCOutputModel {
        /// 文本内容信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?

        /// 文本概要信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summary: String?

        /// 文本标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textTagSet: MultiLevelTag?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case summary = "Summary"
            case textTagSet = "TextTagSet"
        }
    }

    /// 可视文本识别结果信息(OCR)
    public struct TextInfo: TCOutputModel {
        /// OCR提取的内容
        public let content: String

        /// OCR起始时间戳，从0开始
        public let startTimeStamp: Float

        /// OCR结束时间戳，从0开始
        public let endTimeStamp: Float

        /// OCR标签信息
        public let tag: String

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case tag = "Tag"
        }
    }

    /// 文本文件元信息
    public struct TextMetadata: TCOutputModel {
        /// 媒资文本文件大小，单位为字节
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: Int64?

        /// 媒资文本文件MD5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5: String?

        /// 媒资文本文件字符数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let length: Int64?

        /// 媒资文本文件格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let format: String?

        enum CodingKeys: String, CodingKey {
            case fileSize = "FileSize"
            case md5 = "MD5"
            case length = "Length"
            case format = "Format"
        }
    }

    /// 未知人物信息
    public struct UnknownPerson: TCOutputModel {
        /// 视觉出现信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoAppearSet: [VideoAppearInfo]?

        /// 未知人物是否可以入库(只有当未知人物人脸小图质量分符合要求时才可入库)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let putLibraryAllowed: Bool?

        enum CodingKeys: String, CodingKey {
            case videoAppearSet = "VideoAppearSet"
            case putLibraryAllowed = "PutLibraryAllowed"
        }
    }

    /// 关键词在视觉结果中的定位信息
    public struct VideoAppearInfo: TCOutputModel {
        /// 视觉信息起始时间戳，从0开始
        public let startTimeStamp: Float

        /// 视觉信息终止时间戳，从0开始
        /// 关键词在视觉信息中的区间为[StartTimeStamp, EndTimeStamp)
        public let endTimeStamp: Float

        /// 关键词在视觉信息中的封面图片
        public let imageURL: String

        enum CodingKeys: String, CodingKey {
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case imageURL = "ImageURL"
        }
    }
}
