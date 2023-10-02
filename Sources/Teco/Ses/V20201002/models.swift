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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Ses {
    /// 附件结构，包含附件名和base64之后的附件内容。
    public struct Attachment: TCInputModel {
        /// 附件名称，最大支持255个字符长度，不支持部分附件类型，详情请参考[附件类型](https://cloud.tencent.com/document/product/1288/51951)。
        public let fileName: String

        /// Base64之后的附件内容，您可以发送的附件大小上限为4M。注意：腾讯云接口请求最大支持 8M 的请求包，附件内容经过 Base64 预期扩大1.5倍。应该控制所有附件的总大小最大在 4M 以内，整体请求超出 8M 接口会返回错误。
        public let content: String

        public init(fileName: String, content: String) {
            self.fileName = fileName
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case fileName = "FileName"
            case content = "Content"
        }
    }

    /// 邮箱黑名单结构，包含被拉黑的邮箱地址和被拉黑时间，以及被拉黑的理由
    public struct BlackEmailAddress: TCOutputModel {
        /// 邮箱被拉黑时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var bounceTime: Date

        /// 被拉黑的邮箱地址
        public let emailAddress: String

        /// 被拉黑的理由
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ispDesc: String?

        enum CodingKeys: String, CodingKey {
            case bounceTime = "BounceTime"
            case emailAddress = "EmailAddress"
            case ispDesc = "IspDesc"
        }
    }

    /// 创建重复周期发送邮件任务的参数
    public struct CycleEmailParam: TCInputModel {
        /// 任务开始时间
        public let beginTime: String

        /// 任务周期 小时维度
        public let intervalTime: UInt64

        /// 是否终止周期，用于任务更新 0否1是
        public let termCycle: UInt64?

        public init(beginTime: String, intervalTime: UInt64, termCycle: UInt64? = nil) {
            self.beginTime = beginTime
            self.intervalTime = intervalTime
            self.termCycle = termCycle
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case intervalTime = "IntervalTime"
            case termCycle = "TermCycle"
        }
    }

    /// 用于描述DNS记录的域名、记录类型、期望得到的值、目前配置的值
    public struct DNSAttributes: TCOutputModel {
        /// 记录类型 CNAME | A | TXT | MX
        public let type: String

        /// 域名
        public let sendDomain: String

        /// 需要配置的值
        public let expectedValue: String

        /// 腾讯云目前检测到的值
        public let currentValue: String

        /// 检测是否通过，创建时默认为false
        public let status: Bool

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case sendDomain = "SendDomain"
            case expectedValue = "ExpectedValue"
            case currentValue = "CurrentValue"
            case status = "Status"
        }
    }

    /// 发信域名验证列表结构体
    public struct EmailIdentity: TCOutputModel {
        /// 发信域名
        public let identityName: String

        /// 验证类型，固定为DOMAIN
        public let identityType: String

        /// 是否已通过验证
        public let sendingEnabled: Bool

        /// 当前信誉等级
        public let currentReputationLevel: UInt64

        /// 当日最高发信量
        public let dailyQuota: UInt64

        enum CodingKeys: String, CodingKey {
            case identityName = "IdentityName"
            case identityType = "IdentityType"
            case sendingEnabled = "SendingEnabled"
            case currentReputationLevel = "CurrentReputationLevel"
            case dailyQuota = "DailyQuota"
        }
    }

    /// 用于描述发件人相关信息
    public struct EmailSender: TCOutputModel {
        /// 发信地址
        public let emailAddress: String

        /// 发信人别名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let emailSenderName: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdTimestamp: UInt64?

        enum CodingKeys: String, CodingKey {
            case emailAddress = "EmailAddress"
            case emailSenderName = "EmailSenderName"
            case createdTimestamp = "CreatedTimestamp"
        }
    }

    /// 收件人列表数据类型
    public struct ReceiverData: TCOutputModel {
        /// 收件人列表ID
        public let receiverId: UInt64

        /// 收件人列表名称
        public let receiversName: String

        /// 收件人地址总数
        public let count: UInt64

        /// 收件人列表描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let desc: String?

        /// 列表状态(1 待上传 2 上传中 3 上传完成)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let receiversStatus: UInt64?

        /// 创建时间,如:2021-09-28 16:40:35
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case receiverId = "ReceiverId"
            case receiversName = "ReceiversName"
            case count = "Count"
            case desc = "Desc"
            case receiversStatus = "ReceiversStatus"
            case createTime = "CreateTime"
        }
    }

    /// 收件人列表详情
    public struct ReceiverDetail: TCOutputModel {
        /// 收件人地址
        public let email: String

        /// 创建时间
        public let createTime: String

        /// 模板参数
        public let templateData: String

        enum CodingKeys: String, CodingKey {
            case email = "Email"
            case createTime = "CreateTime"
            case templateData = "TemplateData"
        }
    }

    /// 收件人明细输入参数，包含收件人邮箱，以及模板参数
    public struct ReceiverInputData: TCInputModel {
        /// 收件人邮箱
        public let email: String

        /// 模板中的变量参数，请使用json.dump将json对象格式化为string类型。该对象是一组键值对，每个Key代表模板中的一个变量，模板中的变量使用{{键}}表示，相应的值在发送时会被替换为{{值}}。
        /// 注意：参数值不能是html等复杂类型的数据。TemplateData (整个 JSON 结构) 总长度限制为 800 bytes。
        public let templateData: String

        public init(email: String, templateData: String) {
            self.email = email
            self.templateData = templateData
        }

        enum CodingKeys: String, CodingKey {
            case email = "Email"
            case templateData = "TemplateData"
        }
    }

    /// 描述邮件发送状态
    public struct SendEmailStatus: TCOutputModel {
        /// SendEmail返回的MessageId
        public let messageId: String

        /// 收件人邮箱
        public let toEmailAddress: String

        /// 发件人邮箱
        public let fromEmailAddress: String

        /// 腾讯云处理状态
        /// 0: 处理成功
        /// 1001: 内部系统异常
        /// 1002: 内部系统异常
        /// 1003: 内部系统异常
        /// 1003: 内部系统异常
        /// 1004: 发信超时
        /// 1005: 内部系统异常
        /// 1006: 触发频率控制，短时间内对同一地址发送过多邮件
        /// 1007: 邮件地址在黑名单中
        /// 1008: 域名被收件人拒收
        /// 1009: 内部系统异常
        /// 1010: 超出了每日发送限制
        /// 1011: 无发送自定义内容权限，必须使用模板
        /// 1013: 域名被收件人取消订阅
        /// 2001: 找不到相关记录
        /// 3007: 模板ID无效或者不可用
        /// 3008: 被收信域名临时封禁
        /// 3009: 无权限使用该模板
        /// 3010: TemplateData字段格式不正确
        /// 3014: 发件域名没有经过认证，无法发送
        /// 3020: 收件方邮箱类型在黑名单
        /// 3024: 邮箱地址格式预检查失败
        /// 3030: 退信率过高，临时限制发送
        /// 3033: 余额不足，账号欠费等
        public let sendStatus: Int64

        /// 收件方处理状态
        /// 0: 请求成功被腾讯云接受，进入发送队列
        /// 1: 邮件递送成功，DeliverTime表示递送成功的时间
        /// 2: 邮件因某种原因被丢弃，DeliverMessage表示丢弃原因
        /// 3: 收件方ESP拒信，一般原因为邮箱地址不存在，或其它原因
        /// 8: 邮件被ESP因某些原因延迟递送，DeliverMessage表示延迟原因
        public let deliverStatus: Int64

        /// 收件方处理状态描述
        public let deliverMessage: String

        /// 请求到达腾讯云时间戳
        public let requestTime: Int64

        /// 腾讯云执行递送时间戳
        public let deliverTime: Int64

        /// 用户是否打开该邮件
        public let userOpened: Bool

        /// 用户是否点击该邮件中的链接
        public let userClicked: Bool

        /// 用户是否取消该发送者的订阅
        public let userUnsubscribed: Bool

        /// 用户是否举报该发送者
        public let userComplainted: Bool

        enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
            case toEmailAddress = "ToEmailAddress"
            case fromEmailAddress = "FromEmailAddress"
            case sendStatus = "SendStatus"
            case deliverStatus = "DeliverStatus"
            case deliverMessage = "DeliverMessage"
            case requestTime = "RequestTime"
            case deliverTime = "DeliverTime"
            case userOpened = "UserOpened"
            case userClicked = "UserClicked"
            case userUnsubscribed = "UserUnsubscribed"
            case userComplainted = "UserComplainted"
        }
    }

    /// 发送任务数据
    public struct SendTaskData: TCOutputModel {
        /// 任务id
        public let taskId: UInt64

        /// 发信地址
        public let fromEmailAddress: String

        /// 收件人列表Id
        public let receiverId: UInt64

        /// 任务状态 1 待开始 5 发送中 6 今日暂停发送  7 发信异常 10 发送完成
        public let taskStatus: UInt64

        /// 任务类型 1 即时 2 定时 3 周期
        public let taskType: UInt64

        /// 任务请求发信数量
        public let requestCount: UInt64

        /// 已经发送数量
        public let sendCount: UInt64

        /// 缓存数量
        public let cacheCount: UInt64

        /// 任务创建时间
        public let createTime: String

        /// 任务更新时间
        public let updateTime: String

        /// 邮件主题
        public let subject: String

        /// 模板和模板数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let template: Template?

        /// 周期任务参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cycleParam: CycleEmailParam?

        /// 定时任务参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timedParam: TimedEmailParam?

        /// 任务异常信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMsg: String?

        /// 收件人列表名称
        public let receiversName: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case fromEmailAddress = "FromEmailAddress"
            case receiverId = "ReceiverId"
            case taskStatus = "TaskStatus"
            case taskType = "TaskType"
            case requestCount = "RequestCount"
            case sendCount = "SendCount"
            case cacheCount = "CacheCount"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case subject = "Subject"
            case template = "Template"
            case cycleParam = "CycleParam"
            case timedParam = "TimedParam"
            case errMsg = "ErrMsg"
            case receiversName = "ReceiversName"
        }
    }

    /// 邮件发送的内容，可以是纯文本(TEXT)，也可以是纯代码(HTML)，或者纯文本+HTML的组合(建议方式)
    public struct Simple: TCInputModel {
        /// base64之后的Html代码。需要包含所有的代码信息，不要包含外部css，否则会导致显示格式错乱
        public let html: String?

        /// base64之后的纯文本信息，如果没有Html，邮件中会直接显示纯文本；如果有Html，它代表邮件的纯文本样式
        public let text: String?

        public init(html: String? = nil, text: String? = nil) {
            self.html = html
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case html = "Html"
            case text = "Text"
        }
    }

    /// 模板发送相关信息，包含模板ID，模板变量参数等信息
    public struct Template: TCInputModel {
        /// 模板ID。如果没有模板，请先新建一个
        public let templateID: UInt64

        /// 模板中的变量参数，请使用json.dump将json对象格式化为string类型。该对象是一组键值对，每个Key代表模板中的一个变量，模板中的变量使用{{键}}表示，相应的值在发送时会被替换为{{值}}。
        /// 注意：参数值不能是html等复杂类型的数据。
        /// 示例：{"name":"xxx","age":"xx"}
        public let templateData: String

        public init(templateID: UInt64, templateData: String) {
            self.templateID = templateID
            self.templateData = templateData
        }

        enum CodingKeys: String, CodingKey {
            case templateID = "TemplateID"
            case templateData = "TemplateData"
        }
    }

    /// 模板内容，TEXT和HTML必须至少存在一项，建议使用TEXT和HTML的组合
    public struct TemplateContent: TCInputModel {
        /// base64之后的Html代码
        public let html: String?

        /// base64之后的文本内容
        public let text: String?

        public init(html: String? = nil, text: String? = nil) {
            self.html = html
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case html = "Html"
            case text = "Text"
        }
    }

    /// 模板列表结构
    public struct TemplatesMetadata: TCOutputModel {
        /// 创建时间
        public let createdTimestamp: UInt64

        /// 模板名称
        public let templateName: String

        /// 模板状态。1-审核中|0-已通过|2-拒绝|其它-不可用
        public let templateStatus: Int64

        /// 模板ID
        public let templateID: UInt64

        /// 审核原因
        public let reviewReason: String

        enum CodingKeys: String, CodingKey {
            case createdTimestamp = "CreatedTimestamp"
            case templateName = "TemplateName"
            case templateStatus = "TemplateStatus"
            case templateID = "TemplateID"
            case reviewReason = "ReviewReason"
        }
    }

    /// 创建定时发送邮件任务时，设置的定时参数，比如开始时间之类
    public struct TimedEmailParam: TCInputModel {
        /// 定时发送邮件的开始时间
        public let beginTime: String

        public init(beginTime: String) {
            self.beginTime = beginTime
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
        }
    }

    /// 统计数据的结构体
    public struct Volume: TCOutputModel {
        /// 日期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var sendDate: Date?

        /// 邮件请求数量
        public let requestCount: UInt64

        /// 腾讯云通过数量
        public let acceptedCount: UInt64

        /// 送达数量
        public let deliveredCount: UInt64

        /// 打开邮件的用户数量，根据收件人去重
        public let openedCount: UInt64

        /// 点击了邮件中的链接数量用户数量
        public let clickedCount: UInt64

        /// 退信数量
        public let bounceCount: UInt64

        /// 取消订阅的用户数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unsubscribeCount: UInt64?

        enum CodingKeys: String, CodingKey {
            case sendDate = "SendDate"
            case requestCount = "RequestCount"
            case acceptedCount = "AcceptedCount"
            case deliveredCount = "DeliveredCount"
            case openedCount = "OpenedCount"
            case clickedCount = "ClickedCount"
            case bounceCount = "BounceCount"
            case unsubscribeCount = "UnsubscribeCount"
        }
    }
}
