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

extension Tms {
    /// 文本审核返回的详细结果
    public struct DetailResults: TCOutputModel {
        /// 该字段用于返回检测结果所对应的全部恶意标签。
        ///
        /// 返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 该字段用于返回对应当前标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。
        ///
        /// 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 该字段用于返回检测文本命中的关键词信息，用于标注文本违规的具体原因（如：*加我微信*）。该参数可能会有多个返回值，代表命中的多个关键词；如返回值为空且Score不为空，则代表识别结果所对应的恶意标签（Label）是来自于语义模型判断的返回值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?

        /// 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该字段**仅当Label为Custom自定义关键词时有效**，用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libType: Int64?

        /// 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libId: String?

        /// 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?

        /// 该字段用于返回当前标签（Label）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该字段用于返回当前一级标签（Label）下的关键词、子标签及分数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case suggestion = "Suggestion"
            case keywords = "Keywords"
            case score = "Score"
            case libType = "LibType"
            case libId = "LibId"
            case libName = "LibName"
            case subLabel = "SubLabel"
            case tags = "Tags"
        }
    }

    /// 用于表示业务用户对应的设备信息
    public struct Device: TCInputModel {
        /// 该字段表示业务用户对应设备的IP地址。
        ///
        /// 备注:目前仅支持IPv4地址记录，不支持IPv6地址记录。
        public let ip: String?

        /// 该字段表示业务用户对应的MAC地址，以方便设备识别与管理；其格式与取值与标准MAC地址一致。
        public let mac: String?

        /// *内测中，敬请期待。*
        public let tokenId: String?

        /// *内测中，敬请期待。*
        public let deviceId: String?

        /// 该字段表示业务用户对应设备的**IMEI码**（国际移动设备识别码），该识别码可用于识别每一部独立的手机等移动通信设备，方便设备识别与管理。
        ///
        /// 备注：格式为**15-17位纯数字**。
        public let imei: String?

        /// **iOS设备专用**，该字段表示业务用户对应的**IDFA**(广告标识符),这是由苹果公司提供的用于标识用户的广告标识符，由一串16进制的32位数字和字母组成。
        ///
        /// 备注：苹果公司自2021年iOS14更新后允许用户手动关闭或者开启IDFA，故此字符串标记有效性可能有所降低。
        public let idfa: String?

        /// **iOS设备专用**，该字段表示业务用户对应的**IDFV**(应用开发商标识符),这是由苹果公司提供的用于标注应用开发商的标识符，由一串16进制的32位数字和字母组成，可被用于唯一标识设备。
        public let idfv: String?

        public init(ip: String? = nil, mac: String? = nil, tokenId: String? = nil, deviceId: String? = nil, imei: String? = nil, idfa: String? = nil, idfv: String? = nil) {
            self.ip = ip
            self.mac = mac
            self.tokenId = tokenId
            self.deviceId = deviceId
            self.imei = imei
            self.idfa = idfa
            self.idfv = idfv
        }

        enum CodingKeys: String, CodingKey {
            case ip = "IP"
            case mac = "Mac"
            case tokenId = "TokenId"
            case deviceId = "DeviceId"
            case imei = "IMEI"
            case idfa = "IDFA"
            case idfv = "IDFV"
        }
    }

    /// 账号风险检测结果
    public struct RiskDetails: TCOutputModel {
        /// 该字段用于返回账号信息检测对应的风险类别，取值为：**RiskAccount**（账号存在风险）、**RiskIP**（IP地址存在风险）、**RiskIMEI**（移动设备识别码存在风险）。
        public let label: String

        /// 该字段用于返回账号信息检测对应的风险等级，取值为：**1**（疑似存在风险）和**2**（存在恶意风险）。
        public let level: Int64

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case level = "Level"
        }
    }

    /// 该字段用于返回审核结果明细字段的标签及分数
    public struct Tag: TCOutputModel {
        /// 该字段用于返回命中的关键词
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyword: String?

        /// 该字段用于返回子标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该字段用于返回子标签对应的分数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
            case subLabel = "SubLabel"
            case score = "Score"
        }
    }

    /// 用于表示业务用户的账号相关信息
    public struct User: TCInputModel {
        /// 该字段表示业务用户ID,填写后，系统可根据账号过往违规历史优化审核结果判定，有利于存在可疑违规风险时的辅助判断。
        ///
        /// 备注：该字段可传入微信openid、QQopenid、字符串等账号信息，与账号类别参数（AccountType）配合使用可确定唯一账号。
        public let userId: String?

        /// 该字段表示业务用户对应的账号昵称信息。
        public let nickname: String?

        /// 该字段表示业务用户ID对应的账号类型，取值：**1**-微信uin，**2**-QQ号，**3**-微信群uin，**4**-qq群号，**5**-微信openid，**6**-QQopenid，**7**-其它string。
        ///
        /// 该字段与账号ID参数（UserId）配合使用可确定唯一账号。
        public let accountType: Int64?

        /// 该字段表示业务用户对应账号的性别信息。
        ///
        /// 取值：**0**（默认值，代表性别未知）、**1**（男性）、**2**（女性）。
        public let gender: Int64?

        /// 该字段表示业务用户对应账号的年龄信息。
        ///
        /// 取值：**0**（默认值，代表年龄未知）-（**自定义年龄上限**）之间的整数。
        public let age: Int64?

        /// 该字段表示业务用户对应账号的等级信息。
        ///
        /// 取值：**0**（默认值，代表等级未知）、**1**（等级较低）、**2**（等级中等）、**3**（等级较高），目前**暂不支持自定义等级**。
        public let level: Int64?

        /// 该字段表示业务用户对应账号的手机号信息，支持全球各地区手机号的记录。
        ///
        /// 备注：请保持手机号格式的统一，如区号格式（086/+86）等。
        public let phone: String?

        /// 该字段表示业务用户头像图片的访问链接(URL)，支持PNG、JPG、JPEG、BMP、GIF、WEBP格式。
        /// 备注：头像图片大小不超过5MB，建议分辨率不低于256x256；图片下载时间限制为3秒，超过则会返回下载超时。
        public let headUrl: String?

        /// 该字段表示业务用户的简介信息，支持汉字、英文及特殊符号，长度不超过5000个汉字字符。
        public let desc: String?

        /// 该字段表示业务群聊场景时的房间ID。
        public let roomId: String?

        /// 该字段表示消息接受者ID
        public let receiverId: String?

        /// 消息生成时间，精确到毫秒
        public let sendTime: Int64?

        public init(userId: String? = nil, nickname: String? = nil, accountType: Int64? = nil, gender: Int64? = nil, age: Int64? = nil, level: Int64? = nil, phone: String? = nil, headUrl: String? = nil, desc: String? = nil, roomId: String? = nil, receiverId: String? = nil, sendTime: Int64? = nil) {
            self.userId = userId
            self.nickname = nickname
            self.accountType = accountType
            self.gender = gender
            self.age = age
            self.level = level
            self.phone = phone
            self.headUrl = headUrl
            self.desc = desc
            self.roomId = roomId
            self.receiverId = receiverId
            self.sendTime = sendTime
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case nickname = "Nickname"
            case accountType = "AccountType"
            case gender = "Gender"
            case age = "Age"
            case level = "Level"
            case phone = "Phone"
            case headUrl = "HeadUrl"
            case desc = "Desc"
            case roomId = "RoomId"
            case receiverId = "ReceiverId"
            case sendTime = "SendTime"
        }
    }
}
