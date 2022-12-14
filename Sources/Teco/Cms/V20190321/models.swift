//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cms {
    /// 从图片中检测到的二维码，可能为多个
    public struct CodeDetail: TCInputModel {
        /// 二维码在图片中的位置，由边界点的坐标表示
        public let codePosition: [CodePosition]?

        /// 二维码文本的编码格式
        public let codeCharset: String?

        /// 二维码的文本内容
        public let codeText: String?

        /// 二维码的类型：1:ONED_BARCODE，2:QRCOD，3:WXCODE，4:PDF417，5:DATAMATRIX
        public let codeType: Int64?

        public init(codePosition: [CodePosition]? = nil, codeCharset: String? = nil, codeText: String? = nil, codeType: Int64? = nil) {
            self.codePosition = codePosition
            self.codeCharset = codeCharset
            self.codeText = codeText
            self.codeType = codeType
        }

        enum CodingKeys: String, CodingKey {
            case codePosition = "CodePosition"
            case codeCharset = "CodeCharset"
            case codeText = "CodeText"
            case codeType = "CodeType"
        }
    }

    /// 图片二维码详情
    public struct CodeDetect: TCInputModel {
        /// 从图片中检测到的二维码，可能为多个
        public let moderationDetail: [CodeDetail]?

        /// 检测是否成功，0：成功，-1：出错
        public let moderationCode: Int64?

        public init(moderationDetail: [CodeDetail]? = nil, moderationCode: Int64? = nil) {
            self.moderationDetail = moderationDetail
            self.moderationCode = moderationCode
        }

        enum CodingKeys: String, CodingKey {
            case moderationDetail = "ModerationDetail"
            case moderationCode = "ModerationCode"
        }
    }

    /// 二维码在图片中的位置，由边界点的坐标表示
    public struct CodePosition: TCInputModel {
        /// 二维码边界点X轴坐标
        public let floatX: Float?

        /// 二维码边界点Y轴坐标
        public let floatY: Float?

        public init(floatX: Float? = nil, floatY: Float? = nil) {
            self.floatX = floatX
            self.floatY = floatY
        }

        enum CodingKeys: String, CodingKey {
            case floatX = "FloatX"
            case floatY = "FloatY"
        }
    }

    /// 坐标
    public struct Coordinate: TCInputModel {
        /// 左上角横坐标
        public let cx: Int64?

        /// 左上角纵坐标
        public let cy: Int64?

        /// 高度
        public let height: Int64?

        /// 宽度
        public let width: Int64?

        public init(cx: Int64? = nil, cy: Int64? = nil, height: Int64? = nil, width: Int64? = nil) {
            self.cx = cx
            self.cy = cy
            self.height = height
            self.width = width
        }

        enum CodingKeys: String, CodingKey {
            case cx = "Cx"
            case cy = "Cy"
            case height = "Height"
            case width = "Width"
        }
    }

    /// 文本返回的自定义词库结果
    public struct CustomResult: TCInputModel {
        /// 命中的自定义关键词
        public let keywords: [String]?

        /// 自定义库id
        public let libId: String?

        /// 自定义词库名称
        public let libName: String?

        /// 命中的自定义关键词的类型
        public let type: String?

        public init(keywords: [String]? = nil, libId: String? = nil, libName: String? = nil, type: String? = nil) {
            self.keywords = keywords
            self.libId = libId
            self.libName = libName
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
            case libId = "LibId"
            case libName = "LibName"
            case type = "Type"
        }
    }

    /// 文本返回的详细结果
    public struct DetailResult: TCInputModel {
        /// 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        public let evilLabel: String?

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂
        /// 20105：广告引流 
        /// 24001：暴恐
        public let evilType: UInt64?

        /// 该标签下命中的关键词
        public let keywords: [String]?

        /// 该标签模型命中的分值
        public let score: UInt64?

        public init(evilLabel: String? = nil, evilType: UInt64? = nil, keywords: [String]? = nil, score: UInt64? = nil) {
            self.evilLabel = evilLabel
            self.evilType = evilType
            self.keywords = keywords
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilLabel = "EvilLabel"
            case evilType = "EvilType"
            case keywords = "Keywords"
            case score = "Score"
        }
    }

    /// 设备信息
    public struct Device: TCInputModel {
        /// 设备指纹ID
        public let deviceId: String?

        /// IOS设备，Identifier For Advertising（广告标识符）
        public let idfa: String?

        /// IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        public let idfv: String?

        /// 设备序列号
        public let imei: String?

        /// 用户IP
        public let ip: String?

        /// Mac地址
        public let mac: String?

        /// 设备指纹Token
        public let tokenId: String?

        public init(deviceId: String? = nil, idfa: String? = nil, idfv: String? = nil, imei: String? = nil, ip: String? = nil, mac: String? = nil, tokenId: String? = nil) {
            self.deviceId = deviceId
            self.idfa = idfa
            self.idfv = idfv
            self.imei = imei
            self.ip = ip
            self.mac = mac
            self.tokenId = tokenId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case idfa = "IDFA"
            case idfv = "IDFV"
            case imei = "IMEI"
            case ip = "IP"
            case mac = "Mac"
            case tokenId = "TokenId"
        }
    }

    /// 文件类型样本
    public struct FileSample: TCInputModel {
        /// 文件md5
        public let fileMd5: String

        /// 文件名称
        public let fileName: String

        /// 文件url
        public let fileUrl: String

        /// 文件压缩后云url
        public let compressFileUrl: String?

        public init(fileMd5: String, fileName: String, fileUrl: String, compressFileUrl: String? = nil) {
            self.fileMd5 = fileMd5
            self.fileName = fileName
            self.fileUrl = fileUrl
            self.compressFileUrl = compressFileUrl
        }

        enum CodingKeys: String, CodingKey {
            case fileMd5 = "FileMd5"
            case fileName = "FileName"
            case fileUrl = "FileUrl"
            case compressFileUrl = "CompressFileUrl"
        }
    }

    /// 文件样本返回信息
    public struct FileSampleInfo: TCInputModel {
        /// 处理错误码
        public let code: Int64

        /// 创建时间戳
        public let createdAt: UInt64

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂 
        /// 24001：暴恐
        public let evilType: UInt64

        /// 文件的md5
        public let fileMd5: String

        /// 文件名称
        public let fileName: String

        /// 文件类型
        public let fileType: String

        /// 唯一标识
        public let id: String

        /// 样本类型
        /// 1：黑库
        /// 2：白库
        public let label: UInt64

        /// 任务状态
        /// 1：添加完成
        /// 2：添加处理中
        /// 3：下载中
        /// 4：下载完成
        /// 5：上传完成
        /// 6：步骤完成
        public let status: UInt64

        /// 文件压缩后云url
        public let compressFileUrl: String?

        /// 文件的url
        public let fileUrl: String?

        public init(code: Int64, createdAt: UInt64, evilType: UInt64, fileMd5: String, fileName: String, fileType: String, id: String, label: UInt64, status: UInt64, compressFileUrl: String? = nil, fileUrl: String? = nil) {
            self.code = code
            self.createdAt = createdAt
            self.evilType = evilType
            self.fileMd5 = fileMd5
            self.fileName = fileName
            self.fileType = fileType
            self.id = id
            self.label = label
            self.status = status
            self.compressFileUrl = compressFileUrl
            self.fileUrl = fileUrl
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case createdAt = "CreatedAt"
            case evilType = "EvilType"
            case fileMd5 = "FileMd5"
            case fileName = "FileName"
            case fileType = "FileType"
            case id = "Id"
            case label = "Label"
            case status = "Status"
            case compressFileUrl = "CompressFileUrl"
            case fileUrl = "FileUrl"
        }
    }

    /// 筛选数据结构
    public struct Filter: TCInputModel {
        /// 需要过滤的字段
        public let name: String

        /// 需要过滤字段的值
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 图片识别结果详情
    public struct ImageData: TCInputModel {
        /// 是否恶意 0：正常 1：可疑
        public let evilFlag: Int64

        /// 恶意类型
        /// 100：正常 
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂 
        /// 20103：性感
        /// 24001：暴恐
        public let evilType: Int64

        /// 图片二维码详情
        public let codeDetect: CodeDetect?

        /// 图片性感详情
        public let hotDetect: ImageHotDetect?

        /// 图片违法详情
        public let illegalDetect: ImageIllegalDetect?

        /// logo详情
        public let logoDetect: LogoDetail?

        /// 图片OCR详情
        public let ocrDetect: OCRDetect?

        /// 手机检测详情
        public let phoneDetect: PhoneDetect?

        /// 图片涉政详情
        public let polityDetect: ImagePolityDetect?

        /// 图片涉黄详情
        public let pornDetect: ImagePornDetect?

        /// 图片相似度详情
        public let similar: Similar?

        /// 图片暴恐详情
        public let terrorDetect: ImageTerrorDetect?

        public init(evilFlag: Int64, evilType: Int64, codeDetect: CodeDetect? = nil, hotDetect: ImageHotDetect? = nil, illegalDetect: ImageIllegalDetect? = nil, logoDetect: LogoDetail? = nil, ocrDetect: OCRDetect? = nil, phoneDetect: PhoneDetect? = nil, polityDetect: ImagePolityDetect? = nil, pornDetect: ImagePornDetect? = nil, similar: Similar? = nil, terrorDetect: ImageTerrorDetect? = nil) {
            self.evilFlag = evilFlag
            self.evilType = evilType
            self.codeDetect = codeDetect
            self.hotDetect = hotDetect
            self.illegalDetect = illegalDetect
            self.logoDetect = logoDetect
            self.ocrDetect = ocrDetect
            self.phoneDetect = phoneDetect
            self.polityDetect = polityDetect
            self.pornDetect = pornDetect
            self.similar = similar
            self.terrorDetect = terrorDetect
        }

        enum CodingKeys: String, CodingKey {
            case evilFlag = "EvilFlag"
            case evilType = "EvilType"
            case codeDetect = "CodeDetect"
            case hotDetect = "HotDetect"
            case illegalDetect = "IllegalDetect"
            case logoDetect = "LogoDetect"
            case ocrDetect = "OCRDetect"
            case phoneDetect = "PhoneDetect"
            case polityDetect = "PolityDetect"
            case pornDetect = "PornDetect"
            case similar = "Similar"
            case terrorDetect = "TerrorDetect"
        }
    }

    /// 图片性感详情
    public struct ImageHotDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常
        /// 20103：性感
        public let evilType: Int64

        /// 处置判定 0：正常 1：可疑
        public let hitFlag: Int64

        /// 关键词明细
        public let keywords: [String]?

        /// 性感标签：性感特征中文描述
        public let labels: [String]?

        /// 性感分：分值范围 0-100，分数越高性感倾向越明显
        public let score: Int64?

        public init(evilType: Int64, hitFlag: Int64, keywords: [String]? = nil, labels: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.keywords = keywords
            self.labels = labels
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case keywords = "Keywords"
            case labels = "Labels"
            case score = "Score"
        }
    }

    /// 图片违法详情
    public struct ImageIllegalDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常 
        /// 20006：涉毒违法
        public let evilType: Int64

        /// 处置判定 0：正常 1：可疑
        public let hitFlag: Int64

        /// 关键词明细
        public let keywords: [String]?

        /// 违法标签：返回违法特征中文描述，如赌桌，枪支
        public let labels: [String]?

        /// 违法分：分值范围 0-100，分数越高违法倾向越明显
        public let score: Int64?

        public init(evilType: Int64, hitFlag: Int64, keywords: [String]? = nil, labels: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.keywords = keywords
            self.labels = labels
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case keywords = "Keywords"
            case labels = "Labels"
            case score = "Score"
        }
    }

    /// 图片涉政详情
    public struct ImagePolityDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常 
        /// 20001：政治
        public let evilType: Int64

        /// 处置判定  0：正常 1：可疑
        public let hitFlag: Int64

        /// 命中的logo标签信息
        public let polityLogoDetail: [Logo]?

        /// 命中的人脸名称
        public let faceNames: [String]?

        /// 关键词明细
        public let keywords: [String]?

        /// 命中的政治物品名称
        public let polityItems: [String]?

        /// 政治（人脸）分：分值范围 0-100，分数越高可疑程度越高
        public let score: Int64?

        public init(evilType: Int64, hitFlag: Int64, polityLogoDetail: [Logo]? = nil, faceNames: [String]? = nil, keywords: [String]? = nil, polityItems: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.polityLogoDetail = polityLogoDetail
            self.faceNames = faceNames
            self.keywords = keywords
            self.polityItems = polityItems
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case polityLogoDetail = "PolityLogoDetail"
            case faceNames = "FaceNames"
            case keywords = "Keywords"
            case polityItems = "PolityItems"
            case score = "Score"
        }
    }

    /// 图片涉黄详情
    public struct ImagePornDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常
        /// 20002：色情
        public let evilType: Int64

        /// 处置判定 0：正常 1：可疑
        public let hitFlag: Int64

        /// 关键词明细
        public let keywords: [String]?

        /// 色情标签：色情特征中文描述
        public let labels: [String]?

        /// 色情分：分值范围 0-100，分数越高色情倾向越明显
        public let score: Int64?

        public init(evilType: Int64, hitFlag: Int64, keywords: [String]? = nil, labels: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.keywords = keywords
            self.labels = labels
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case keywords = "Keywords"
            case labels = "Labels"
            case score = "Score"
        }
    }

    /// 图片暴恐详情
    public struct ImageTerrorDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常
        /// 24001：暴恐
        public let evilType: Int64?

        /// 处置判定 0：正常 1：可疑
        public let hitFlag: Int64?

        /// 关键词明细
        public let keywords: [String]?

        /// 暴恐标签：返回暴恐特征中文描述
        public let labels: [String]?

        /// 暴恐分：分值范围0--100，分数越高暴恐倾向越明显
        public let score: Int64?

        public init(evilType: Int64? = nil, hitFlag: Int64? = nil, keywords: [String]? = nil, labels: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.keywords = keywords
            self.labels = labels
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case keywords = "Keywords"
            case labels = "Labels"
            case score = "Score"
        }
    }

    /// Logo
    public struct Logo: TCInputModel {
        /// logo图标坐标信息
        public let rrectF: RrectF?

        /// logo图标置信度
        public let confidence: Float?

        /// logo图标名称
        public let name: String?

        public init(rrectF: RrectF? = nil, confidence: Float? = nil, name: String? = nil) {
            self.rrectF = rrectF
            self.confidence = confidence
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case rrectF = "RrectF"
            case confidence = "Confidence"
            case name = "Name"
        }
    }

    /// LogoDetail
    public struct LogoDetail: TCInputModel {
        /// 命中的Applogo详情
        public let appLogoDetail: [Logo]?

        public init(appLogoDetail: [Logo]? = nil) {
            self.appLogoDetail = appLogoDetail
        }

        enum CodingKeys: String, CodingKey {
            case appLogoDetail = "AppLogoDetail"
        }
    }

    /// 人审审核数据相关信息
    public struct ManualReviewContent: TCInputModel {
        /// 审核批次号
        public let batchId: String

        /// 审核内容
        public let content: String

        /// 消息Id
        public let contentId: String

        /// 审核内容类型 1 图片 2 视频 3 文本 4 音频
        public let contentType: Int64

        /// 用户信息
        public let userInfo: User?

        /// 机器审核类型，与腾讯机器审核定义一致
        /// 100 正常
        /// 20001 政治
        /// 20002 色情
        /// 20006 违法
        /// 20007 谩骂
        /// 24001 暴恐
        /// 20105 广告
        /// 20103 性感
        public let autoDetailCode: Int64?

        /// 机器审核结果 0 放过 1 拦截
        public let autoResult: Int64?

        /// 回调信息标识，回传数据时原样返回
        public let callBackInfo: String?

        /// 创建时间 格式“2020-01-01 00:00:12”
        public let createTime: String?

        /// 审核优先级，可选值 [1,2,3,4]，其中 1 最高，4 最低
        public let priority: Int64?

        /// 标题
        public let title: String?

        public init(batchId: String, content: String, contentId: String, contentType: Int64, userInfo: User? = nil, autoDetailCode: Int64? = nil, autoResult: Int64? = nil, callBackInfo: String? = nil, createTime: String? = nil, priority: Int64? = nil, title: String? = nil) {
            self.batchId = batchId
            self.content = content
            self.contentId = contentId
            self.contentType = contentType
            self.userInfo = userInfo
            self.autoDetailCode = autoDetailCode
            self.autoResult = autoResult
            self.callBackInfo = callBackInfo
            self.createTime = createTime
            self.priority = priority
            self.title = title
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case content = "Content"
            case contentId = "ContentId"
            case contentType = "ContentType"
            case userInfo = "UserInfo"
            case autoDetailCode = "AutoDetailCode"
            case autoResult = "AutoResult"
            case callBackInfo = "CallBackInfo"
            case createTime = "CreateTime"
            case priority = "Priority"
            case title = "Title"
        }
    }

    /// 人工审核接口返回结果，由ContentId和BatchId组成
    public struct ManualReviewData: TCInputModel {
        /// 人审内容批次号
        public let batchId: String

        /// 人审内容ID
        public let contentId: String

        public init(batchId: String, contentId: String) {
            self.batchId = batchId
            self.contentId = contentId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case contentId = "ContentId"
        }
    }

    /// OCR识别结果详情
    public struct OCRDetect: TCInputModel {
        /// 识别到的详细信息
        public let item: [OCRItem]?

        /// 识别到的文本信息
        public let textInfo: String?

        public init(item: [OCRItem]? = nil, textInfo: String? = nil) {
            self.item = item
            self.textInfo = textInfo
        }

        enum CodingKeys: String, CodingKey {
            case item = "Item"
            case textInfo = "TextInfo"
        }
    }

    /// OCR详情
    public struct OCRItem: TCInputModel {
        /// 检测到的文本坐标信息
        public let textPosition: Coordinate?

        /// 文本命中具体标签
        public let evilLabel: String?

        /// 文本命中恶意违规类型
        public let evilType: Int64?

        /// 文本命中违规的关键词
        public let keywords: [String]?

        /// 文本涉嫌违规分值
        public let rate: Int64?

        /// 检测到的文本信息
        public let textContent: String?

        public init(textPosition: Coordinate? = nil, evilLabel: String? = nil, evilType: Int64? = nil, keywords: [String]? = nil, rate: Int64? = nil, textContent: String? = nil) {
            self.textPosition = textPosition
            self.evilLabel = evilLabel
            self.evilType = evilType
            self.keywords = keywords
            self.rate = rate
            self.textContent = textContent
        }

        enum CodingKeys: String, CodingKey {
            case textPosition = "TextPosition"
            case evilLabel = "EvilLabel"
            case evilType = "EvilType"
            case keywords = "Keywords"
            case rate = "Rate"
            case textContent = "TextContent"
        }
    }

    /// 手机模型识别检测
    public struct PhoneDetect: TCInputModel {
        /// 恶意类型
        /// 100：正常
        /// 21000：综合
        public let evilType: Int64?

        /// 处置判定 0：正常 1：可疑
        public let hitFlag: Int64?

        /// 特征中文描述
        public let labels: [String]?

        /// 分值范围 0-100，分数越高倾向越明显
        public let score: Int64?

        public init(evilType: Int64? = nil, hitFlag: Int64? = nil, labels: [String]? = nil, score: Int64? = nil) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.labels = labels
            self.score = score
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case labels = "Labels"
            case score = "Score"
        }
    }

    /// 账号风险检测结果
    public struct RiskDetails: TCInputModel {
        /// 预留字段，暂时不使用
        public let keywords: [String]?

        /// 风险类别，RiskAccount，RiskIP, RiskIMEI
        public let label: String?

        /// 预留字段，暂时不用
        public let lable: String?

        /// 风险等级，1:疑似，2：恶意
        public let level: Int64?

        public init(keywords: [String]? = nil, label: String? = nil, lable: String? = nil, level: Int64? = nil) {
            self.keywords = keywords
            self.label = label
            self.lable = lable
            self.level = level
        }

        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
            case label = "Label"
            case lable = "Lable"
            case level = "Level"
        }
    }

    /// logo位置信息
    public struct RrectF: TCInputModel {
        /// logo横坐标
        public let cx: Float?

        /// logo纵坐标
        public let cy: Float?

        /// logo图标高度
        public let height: Float?

        /// logo图标中心旋转度
        public let rotate: Float?

        /// logo图标宽度
        public let width: Float?

        public init(cx: Float? = nil, cy: Float? = nil, height: Float? = nil, rotate: Float? = nil, width: Float? = nil) {
            self.cx = cx
            self.cy = cy
            self.height = height
            self.rotate = rotate
            self.width = width
        }

        enum CodingKeys: String, CodingKey {
            case cx = "Cx"
            case cy = "Cy"
            case height = "Height"
            case rotate = "Rotate"
            case width = "Width"
        }
    }

    /// 相似度详情
    public struct Similar: TCInputModel {
        /// 恶意类型
        /// 100：正常 
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂 
        /// 24001：暴恐
        public let evilType: Int64

        /// 处置判定 0：未匹配到 1：恶意 2：白样本
        public let hitFlag: Int64

        /// 返回的种子url
        public let seedUrl: String

        public init(evilType: Int64, hitFlag: Int64, seedUrl: String) {
            self.evilType = evilType
            self.hitFlag = hitFlag
            self.seedUrl = seedUrl
        }

        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case hitFlag = "HitFlag"
            case seedUrl = "SeedUrl"
        }
    }

    /// 文本识别结果详情
    public struct TextData: TCInputModel {
        /// 是否恶意 0：正常 1：可疑
        public let evilFlag: Int64

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂
        /// 20105：广告引流 
        /// 24001：暴恐
        public let evilType: Int64

        /// 消息类公共相关参数
        public let common: TextOutputComm?

        /// 返回的自定义词库结果
        public let customResult: [CustomResult]?

        /// 返回的详细结果
        public let detailResult: [DetailResult]?

        /// 消息类ID信息
        public let id: TextOutputID?

        /// 消息类输出结果
        public let res: TextOutputRes?

        /// 账号风险检测结果
        public let riskDetails: [RiskDetails]?

        /// 最终使用的BizType
        public let bizType: UInt64?

        /// 和请求中的DataId一致，原样返回
        public let dataId: String?

        /// 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        public let evilLabel: String?

        /// 输出的其他信息，不同客户内容不同
        public let extra: String?

        /// 命中的关键词
        public let keywords: [String]?

        /// 命中的模型分值
        public let score: UInt64?

        /// 建议值,Block：打击,Review：待复审,Normal：正常
        public let suggestion: String?

        public init(evilFlag: Int64, evilType: Int64, common: TextOutputComm? = nil, customResult: [CustomResult]? = nil, detailResult: [DetailResult]? = nil, id: TextOutputID? = nil, res: TextOutputRes? = nil, riskDetails: [RiskDetails]? = nil, bizType: UInt64? = nil, dataId: String? = nil, evilLabel: String? = nil, extra: String? = nil, keywords: [String]? = nil, score: UInt64? = nil, suggestion: String? = nil) {
            self.evilFlag = evilFlag
            self.evilType = evilType
            self.common = common
            self.customResult = customResult
            self.detailResult = detailResult
            self.id = id
            self.res = res
            self.riskDetails = riskDetails
            self.bizType = bizType
            self.dataId = dataId
            self.evilLabel = evilLabel
            self.extra = extra
            self.keywords = keywords
            self.score = score
            self.suggestion = suggestion
        }

        enum CodingKeys: String, CodingKey {
            case evilFlag = "EvilFlag"
            case evilType = "EvilType"
            case common = "Common"
            case customResult = "CustomResult"
            case detailResult = "DetailResult"
            case id = "ID"
            case res = "Res"
            case riskDetails = "RiskDetails"
            case bizType = "BizType"
            case dataId = "DataId"
            case evilLabel = "EvilLabel"
            case extra = "Extra"
            case keywords = "Keywords"
            case score = "Score"
            case suggestion = "Suggestion"
        }
    }

    /// 消息类输出公共参数
    public struct TextOutputComm: TCInputModel {
        /// 接入业务的唯一ID
        public let appID: Int64?

        /// 接口唯一ID，旁路调用接口返回有该字段，标识唯一接口
        public let buCtrlID: Int64?

        /// 消息发送时间
        public let sendTime: Int64?

        /// 请求字段里的Common.Uin
        public let uin: Int64?

        public init(appID: Int64? = nil, buCtrlID: Int64? = nil, sendTime: Int64? = nil, uin: Int64? = nil) {
            self.appID = appID
            self.buCtrlID = buCtrlID
            self.sendTime = sendTime
            self.uin = uin
        }

        enum CodingKeys: String, CodingKey {
            case appID = "AppID"
            case buCtrlID = "BUCtrlID"
            case sendTime = "SendTime"
            case uin = "Uin"
        }
    }

    /// 消息类输出ID参数
    public struct TextOutputID: TCInputModel {
        /// 接入业务的唯一ID
        public let msgID: String?

        /// 用户账号uin，对应请求协议里的Content.User.Uin。旁路结果有回带，串联结果无该字段
        public let uin: String?

        public init(msgID: String? = nil, uin: String? = nil) {
            self.msgID = msgID
            self.uin = uin
        }

        enum CodingKeys: String, CodingKey {
            case msgID = "MsgID"
            case uin = "Uin"
        }
    }

    /// 消息类输出结果参数
    public struct TextOutputRes: TCInputModel {
        /// 操作人,信安处理人企业微信ID
        public let `operator`: String?

        /// 恶意操作码，
        /// 删除（1）， 通过（2）， 先审后发（100012）
        public let resultCode: Int64?

        /// 操作结果备注说明
        public let resultMsg: String?

        /// 恶意类型，广告（10001）， 政治（20001）， 色情（20002）， 社会事件（20004）， 暴力（20011）， 低俗（20012）， 违法犯罪（20006）， 欺诈（20008）， 版权（20013）， 谣言（20104）， 其他（21000）
        public let resultType: Int64?

        public init(operator: String? = nil, resultCode: Int64? = nil, resultMsg: String? = nil, resultType: Int64? = nil) {
            self.`operator` = `operator`
            self.resultCode = resultCode
            self.resultMsg = resultMsg
            self.resultType = resultType
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case resultCode = "ResultCode"
            case resultMsg = "ResultMsg"
            case resultType = "ResultType"
        }
    }

    /// 文字样本信息
    public struct TextSample: TCInputModel {
        /// 处理错误码
        public let code: Int64

        /// 关键词
        public let content: String

        /// 创建时间戳
        public let createdAt: UInt64

        /// 恶意类型
        /// 100：正常
        /// 20001：政治
        /// 20002：色情 
        /// 20006：涉毒违法
        /// 20007：谩骂 
        /// 20105：广告引流 
        /// 24001：暴恐
        public let evilType: UInt64

        /// 唯一标识
        public let id: String

        /// 样本类型
        /// 1：黑库
        /// 2：白库
        public let label: UInt64

        /// 任务状态
        /// 1：已完成
        /// 2：处理中
        public let status: UInt64

        public init(code: Int64, content: String, createdAt: UInt64, evilType: UInt64, id: String, label: UInt64, status: UInt64) {
            self.code = code
            self.content = content
            self.createdAt = createdAt
            self.evilType = evilType
            self.id = id
            self.label = label
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case content = "Content"
            case createdAt = "CreatedAt"
            case evilType = "EvilType"
            case id = "Id"
            case label = "Label"
            case status = "Status"
        }
    }

    /// 用户相关信息
    public struct User: TCInputModel {
        /// 账号类别，"1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        public let accountType: Int64?

        /// 年龄 默认0 未知
        public let age: Int64?

        /// 性别 默认0 未知 1 男性 2 女性
        public let gender: Int64?

        /// 用户等级，默认0 未知 1 低 2 中 3 高
        public let level: Int64?

        /// 用户昵称
        public let nickname: String?

        /// 手机号
        public let phone: String?

        /// 用户账号ID，如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        public let userId: String?

        public init(accountType: Int64? = nil, age: Int64? = nil, gender: Int64? = nil, level: Int64? = nil, nickname: String? = nil, phone: String? = nil, userId: String? = nil) {
            self.accountType = accountType
            self.age = age
            self.gender = gender
            self.level = level
            self.nickname = nickname
            self.phone = phone
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case age = "Age"
            case gender = "Gender"
            case level = "Level"
            case nickname = "Nickname"
            case phone = "Phone"
            case userId = "UserId"
        }
    }
}
