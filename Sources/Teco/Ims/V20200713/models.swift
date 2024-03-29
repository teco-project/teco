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

extension Ims {
    /// Device结果
    public struct Device: TCInputModel {
        /// 发表消息设备IP
        public let ip: String?

        /// Mac地址
        public let mac: String?

        /// 设备指纹Token
        public let tokenId: String?

        /// 设备指纹ID
        public let deviceId: String?

        /// 设备序列号
        public let imei: String?

        /// IOS设备，Identifier For Advertising（广告标识符）
        public let idfa: String?

        /// IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        public let idfv: String?

        /// IP地址类型 0 代表ipv4 1 代表ipv6
        public let ipType: UInt64?

        public init(ip: String? = nil, mac: String? = nil, tokenId: String? = nil, deviceId: String? = nil, imei: String? = nil, idfa: String? = nil, idfv: String? = nil, ipType: UInt64? = nil) {
            self.ip = ip
            self.mac = mac
            self.tokenId = tokenId
            self.deviceId = deviceId
            self.imei = imei
            self.idfa = idfa
            self.idfv = idfv
            self.ipType = ipType
        }

        enum CodingKeys: String, CodingKey {
            case ip = "Ip"
            case mac = "Mac"
            case tokenId = "TokenId"
            case deviceId = "DeviceId"
            case imei = "IMEI"
            case idfa = "IDFA"
            case idfv = "IDFV"
            case ipType = "IpType"
        }
    }

    /// 分类模型命中子标签结果
    public struct LabelDetailItem: TCOutputModel {
        /// 序号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: Int64?

        /// 子标签名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 子标签分数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: UInt64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case score = "Score"
        }
    }

    /// 分类模型命中结果
    public struct LabelResult: TCOutputModel {
        /// 场景识别结果
        public let scene: String

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 子标签检测结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该标签模型命中的分值
        public let score: UInt64

        /// 分类模型命中子标签结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [LabelDetailItem]?

        enum CodingKeys: String, CodingKey {
            case scene = "Scene"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case details = "Details"
        }
    }

    /// 自定义库/黑白库明细
    public struct LibDetail: TCOutputModel {
        /// 序号
        public let id: Int64

        /// 仅当Label为Custom自定义关键词时有效，表示自定义库id
        public let libId: String

        /// 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?

        /// 图片ID
        public let imageId: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        /// 以及其他令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 自定义标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: String?

        /// 命中的模型分值
        public let score: Int64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case libId = "LibId"
            case libName = "LibName"
            case imageId = "ImageId"
            case label = "Label"
            case tag = "Tag"
            case score = "Score"
        }
    }

    /// 黑白库结果明细
    public struct LibResult: TCOutputModel {
        /// 场景识别结果
        public let scene: String

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 子标签检测结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该标签模型命中的分值
        public let score: Int64

        /// 黑白库结果明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [LibDetail]?

        enum CodingKeys: String, CodingKey {
            case scene = "Scene"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case details = "Details"
        }
    }

    /// 坐标
    public struct Location: TCOutputModel {
        /// 左上角横坐标
        public let x: Float

        /// 左上角纵坐标
        public let y: Float

        /// 宽度
        public let width: Float

        /// 高度
        public let height: Float

        /// 检测框的旋转角度
        public let rotate: Float

        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
            case rotate = "Rotate"
        }
    }

    /// 实体检测结果明细，当检测场景为实体、广告台标、二维码时表示模型检测目标框的标签名称、标签值、标签分数以及检测框的位置信息。
    public struct ObjectDetail: TCOutputModel {
        /// 序号
        public let id: UInt64

        /// 标签名称
        public let name: String

        /// 标签值，
        /// 当标签为二维码时，表示URL地址，如Name为QrCode时，Value为"http//abc.com/aaa"
        public let value: String

        /// 分数
        public let score: UInt64

        /// 检测框坐标
        public let location: Location

        /// 二级标签名称
        public let subLabel: String

        /// 图库或人脸库id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupId: String?

        /// 图或人脸id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let objectId: String?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case value = "Value"
            case score = "Score"
            case location = "Location"
            case subLabel = "SubLabel"
            case groupId = "GroupId"
            case objectId = "ObjectId"
        }
    }

    /// 实体检测结果详情：实体、广告台标、二维码
    public struct ObjectResult: TCOutputModel {
        /// 场景识别结果
        public let scene: String

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 子标签检测结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该标签模型命中的分值
        public let score: UInt64

        /// 实体名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let names: [String]?

        /// 实体检测结果明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [ObjectDetail]?

        enum CodingKeys: String, CodingKey {
            case scene = "Scene"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case names = "Names"
            case details = "Details"
        }
    }

    /// OCR结果检测详情
    public struct OcrResult: TCOutputModel {
        /// 场景识别结果
        public let scene: String

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 子标签检测结果
        public let subLabel: String

        /// 该标签模型命中的分值
        public let score: UInt64

        /// ocr结果详情
        public let details: [OcrTextDetail]

        /// ocr识别出的文本结果
        public let text: String

        /// 是否命中结果，0 未命中 1命中
        public let hitFlag: UInt64

        enum CodingKeys: String, CodingKey {
            case scene = "Scene"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case details = "Details"
            case text = "Text"
            case hitFlag = "HitFlag"
        }
    }

    /// OCR文本结果详情
    public struct OcrTextDetail: TCOutputModel {
        /// OCR文本内容
        public let text: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 仅当Label为Custom自定义关键词时有效，表示自定义库id
        public let libId: String

        /// 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        public let libName: String

        /// 该标签下命中的关键词
        public let keywords: [String]

        /// 该标签模型命中的分值
        public let score: UInt64

        /// OCR位置
        public let location: Location

        /// OCR文本识别置信度
        public let rate: UInt64

        /// OCR文本命中的二级标签
        public let subLabel: String

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case label = "Label"
            case libId = "LibId"
            case libName = "LibName"
            case keywords = "Keywords"
            case score = "Score"
            case location = "Location"
            case rate = "Rate"
            case subLabel = "SubLabel"
        }
    }

    /// 识别类型标签结果信息
    public struct RecognitionResult: TCOutputModel {
        /// 当前可能的取值：Scene（图片场景模型）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// Label对应模型下的识别标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [RecognitionTag]?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case tags = "Tags"
        }
    }

    /// 识别类型标签信息
    public struct RecognitionTag: TCOutputModel {
        /// 标签名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 置信分：0～100，数值越大表示置信度越高
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 标签位置信息，若模型无位置信息，则可能为零值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: Location?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case score = "Score"
            case location = "Location"
        }
    }

    /// User结果
    public struct User: TCInputModel {
        /// 业务用户ID 如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        public let userId: String?

        /// 业务用户ID类型 "1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        public let accountType: String?

        /// 用户昵称
        public let nickname: String?

        /// 性别 默认0 未知 1 男性 2 女性
        public let gender: UInt64?

        /// 年龄 默认0 未知
        public let age: UInt64?

        /// 用户等级，默认0 未知 1 低 2 中 3 高
        public let level: UInt64?

        /// 手机号
        public let phone: String?

        /// 用户简介，长度不超过5000字
        public let desc: String?

        /// 用户头像图片链接
        public let headUrl: String?

        public init(userId: String? = nil, accountType: String? = nil, nickname: String? = nil, gender: UInt64? = nil, age: UInt64? = nil, level: UInt64? = nil, phone: String? = nil, desc: String? = nil, headUrl: String? = nil) {
            self.userId = userId
            self.accountType = accountType
            self.nickname = nickname
            self.gender = gender
            self.age = age
            self.level = level
            self.phone = phone
            self.desc = desc
            self.headUrl = headUrl
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case accountType = "AccountType"
            case nickname = "Nickname"
            case gender = "Gender"
            case age = "Age"
            case level = "Level"
            case phone = "Phone"
            case desc = "Desc"
            case headUrl = "HeadUrl"
        }
    }
}
