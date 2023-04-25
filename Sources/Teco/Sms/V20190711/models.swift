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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Sms {
    /// 添加签名响应
    public struct AddSignStatus: TCOutputModel {
        /// 签名Id。
        public let signId: UInt64

        /// 签名申请Id。
        public let signApplyId: UInt64

        enum CodingKeys: String, CodingKey {
            case signId = "SignId"
            case signApplyId = "SignApplyId"
        }
    }

    /// 添加模板参数响应
    public struct AddTemplateStatus: TCOutputModel {
        /// 模板参数
        public let templateId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// 回执数据统计响应包体
    public struct CallbackStatusStatistics: TCOutputModel {
        /// 短信回执量统计。
        public let callbackCount: UInt64

        /// 短信提交成功量统计。
        public let requestSuccessCount: UInt64

        /// 短信回执失败量统计。
        public let callbackFailCount: UInt64

        /// 短信回执成功量统计。
        public let callbackSuccessCount: UInt64

        /// 运营商内部错误统计。
        public let internalErrorCount: UInt64

        /// 号码无效或空号统计。
        public let invalidNumberCount: UInt64

        /// 停机、关机等错误统计。
        public let shutdownErrorCount: UInt64

        /// 号码拉入黑名单统计。
        public let blackListCount: UInt64

        /// 运营商频率限制统计。
        public let frequencyLimitCount: UInt64

        enum CodingKeys: String, CodingKey {
            case callbackCount = "CallbackCount"
            case requestSuccessCount = "RequestSuccessCount"
            case callbackFailCount = "CallbackFailCount"
            case callbackSuccessCount = "CallbackSuccessCount"
            case internalErrorCount = "InternalErrorCount"
            case invalidNumberCount = "InvalidNumberCount"
            case shutdownErrorCount = "ShutdownErrorCount"
            case blackListCount = "BlackListCount"
            case frequencyLimitCount = "FrequencyLimitCount"
        }
    }

    /// 删除签名响应
    public struct DeleteSignStatus: TCInputModel {
        /// 删除状态信息。
        public let deleteStatus: String

        /// 删除时间，UNIX 时间戳（单位：秒）。
        public let deleteTime: UInt64

        public init(deleteStatus: String, deleteTime: UInt64) {
            self.deleteStatus = deleteStatus
            self.deleteTime = deleteTime
        }

        enum CodingKeys: String, CodingKey {
            case deleteStatus = "DeleteStatus"
            case deleteTime = "DeleteTime"
        }
    }

    /// 删除模板响应
    public struct DeleteTemplateStatus: TCOutputModel {
        /// 删除状态信息。
        public let deleteStatus: String

        /// 删除时间，UNIX 时间戳（单位：秒）。
        public let deleteTime: UInt64

        enum CodingKeys: String, CodingKey {
            case deleteStatus = "DeleteStatus"
            case deleteTime = "DeleteTime"
        }
    }

    /// 获取短信签名信息响应
    public struct DescribeSignListStatus: TCOutputModel {
        /// 签名Id
        public let signId: UInt64

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        /// 申请签名状态。其中：
        /// 0：表示审核通过。
        /// 1：表示审核中。
        /// -1：表示审核未通过或审核失败。
        public let statusCode: Int64

        /// 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        public let reviewReply: String

        /// 签名名称。
        public let signName: String

        /// 提交审核时间，UNIX 时间戳（单位：秒）。
        public let createTime: UInt64

        enum CodingKeys: String, CodingKey {
            case signId = "SignId"
            case international = "International"
            case statusCode = "StatusCode"
            case reviewReply = "ReviewReply"
            case signName = "SignName"
            case createTime = "CreateTime"
        }
    }

    /// 获取短信模板信息响应
    public struct DescribeTemplateListStatus: TCOutputModel {
        /// 模板Id
        public let templateId: UInt64

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        /// 申请签名状态。其中：
        /// 0：表示审核通过。
        /// 1：表示审核中。
        /// -1：表示审核未通过或审核失败。
        public let statusCode: Int64

        /// 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        public let reviewReply: String

        /// 模板名称。
        public let templateName: String

        /// 提交审核时间，UNIX 时间戳（单位：秒）。
        public let createTime: UInt64

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case international = "International"
            case statusCode = "StatusCode"
            case reviewReply = "ReviewReply"
            case templateName = "TemplateName"
            case createTime = "CreateTime"
        }
    }

    /// 修改签名响应
    public struct ModifySignStatus: TCOutputModel {
        /// 签名Id
        public let signId: UInt64

        /// 签名修改申请Id
        public let signApplyId: String

        enum CodingKeys: String, CodingKey {
            case signId = "SignId"
            case signApplyId = "SignApplyId"
        }
    }

    /// 修改模板参数响应
    public struct ModifyTemplateStatus: TCOutputModel {
        /// 模板参数
        public let templateId: UInt64

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// 短信回复状态
    public struct PullSmsReplyStatus: TCOutputModel {
        /// 短信码号扩展号，默认未开通，如需开通请联系 [sms helper](https://cloud.tencent.com/document/product/382/3773)。
        public let extendCode: String

        /// 国家（或地区）码。
        public let nationCode: String

        /// 手机号码,e.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumber: String

        /// 短信签名。
        public let sign: String

        /// 用户回复的内容。
        public let replyContent: String

        /// 回复时间（例如：2019-10-08 17:18:37）。
        public let replyTime: String

        /// 回复时间，UNIX 时间戳（单位：秒）。
        public let replyUnixTime: UInt64

        enum CodingKeys: String, CodingKey {
            case extendCode = "ExtendCode"
            case nationCode = "NationCode"
            case phoneNumber = "PhoneNumber"
            case sign = "Sign"
            case replyContent = "ReplyContent"
            case replyTime = "ReplyTime"
            case replyUnixTime = "ReplyUnixTime"
        }
    }

    /// 短信的下发状态详细信息
    public struct PullSmsSendStatus: TCOutputModel {
        /// 用户实际接收到短信的时间。
        public let userReceiveTime: String

        /// 用户实际接收到短信的时间，UNIX 时间戳（单位：秒）。
        public let userReceiveUnixTime: UInt64

        /// 国家（或地区）码。
        public let nationCode: String

        /// 手机号码,e.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let purePhoneNumber: String

        /// 手机号码，普通格式，示例如：13711112222。
        public let phoneNumber: String

        /// 本次发送标识 ID。
        public let serialNo: String

        /// 实际是否收到短信接收状态，SUCCESS（成功）、FAIL（失败）。
        public let reportStatus: String

        /// 用户接收短信状态描述。
        public let description: String

        enum CodingKeys: String, CodingKey {
            case userReceiveTime = "UserReceiveTime"
            case userReceiveUnixTime = "UserReceiveUnixTime"
            case nationCode = "NationCode"
            case purePhoneNumber = "PurePhoneNumber"
            case phoneNumber = "PhoneNumber"
            case serialNo = "SerialNo"
            case reportStatus = "ReportStatus"
            case description = "Description"
        }
    }

    /// 发送短信状态
    public struct SendStatus: TCOutputModel {
        /// 发送流水号。
        public let serialNo: String

        /// 手机号码,e.164标准，+[国家或地区码][手机号] ，示例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumber: String

        /// 计费条数，计费规则请查询 [计费策略](https://cloud.tencent.com/document/product/382/36135)。
        public let fee: UInt64

        /// 用户Session内容。
        public let sessionContext: String

        /// 短信请求错误码，具体含义请参考错误码。
        public let code: String

        /// 短信请求错误码描述。
        public let message: String

        /// 国家码或地区码，例如CN,US等，对于未识别出国家码或者地区码，默认返回DEF,具体支持列表请参考国际/港澳台计费总览。
        public let isoCode: String

        enum CodingKeys: String, CodingKey {
            case serialNo = "SerialNo"
            case phoneNumber = "PhoneNumber"
            case fee = "Fee"
            case sessionContext = "SessionContext"
            case code = "Code"
            case message = "Message"
            case isoCode = "IsoCode"
        }
    }

    /// 发送数据统计响应包体
    public struct SendStatusStatistics: TCOutputModel {
        /// 短信计费条数统计，例如提交成功量为100条，其中有20条是长短信（长度为80字）被拆分成2条，则计费条数为： ```80 * 1 + 20 * 2 = 120``` 条。
        public let feeCount: UInt64

        /// 短信提交量统计。
        public let requestCount: UInt64

        /// 短信提交成功量统计。
        public let requestSuccessCount: UInt64

        enum CodingKeys: String, CodingKey {
            case feeCount = "FeeCount"
            case requestCount = "RequestCount"
            case requestSuccessCount = "RequestSuccessCount"
        }
    }

    /// 套餐包信息统计响应包体
    public struct SmsPackagesStatistics: TCOutputModel {
        /// 套餐包创建时间，标准时间，例如：2019-10-08 17:18:37。
        public let packageCreateTime: String

        /// 套餐包创建时间，UNIX 时间戳（单位：秒）。
        public let packageCreateUnixTime: UInt64

        /// 套餐包生效时间，标准时间，例如：2019-10-08 17:18:37。
        public let packageEffectiveTime: String

        /// 套餐包生效时间，UNIX 时间戳（单位：秒）。
        public let packageEffectiveUnixTime: UInt64

        /// 套餐包过期时间，标准时间，例如：2019-10-08 17:18:37。
        public let packageExpiredTime: String

        /// 套餐包过期时间，UNIX 时间戳（单位：秒）。
        public let packageExpiredUnixTime: UInt64

        /// 套餐包条数。
        public let amountOfPackage: UInt64

        /// 0表示赠送套餐包，1表示购买套餐包。
        public let typeOfPackage: UInt64

        /// 套餐包 ID。
        public let packageId: UInt64

        /// 当前使用量。
        public let currentUsage: UInt64

        enum CodingKeys: String, CodingKey {
            case packageCreateTime = "PackageCreateTime"
            case packageCreateUnixTime = "PackageCreateUnixTime"
            case packageEffectiveTime = "PackageEffectiveTime"
            case packageEffectiveUnixTime = "PackageEffectiveUnixTime"
            case packageExpiredTime = "PackageExpiredTime"
            case packageExpiredUnixTime = "PackageExpiredUnixTime"
            case amountOfPackage = "AmountOfPackage"
            case typeOfPackage = "TypeOfPackage"
            case packageId = "PackageId"
            case currentUsage = "CurrentUsage"
        }
    }
}
