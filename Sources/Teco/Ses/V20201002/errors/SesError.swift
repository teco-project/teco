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

/// Service error type returned by `Ses`.
public protocol TCSesErrorType: TCServiceErrorType {
    /// Get the service error as ``TCSesError``.
    ///
    /// - Returns: ``TCSesError`` that holds the same error code and context.
    func asSesError() -> TCSesError
}

public struct TCSesError: TCSesErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AttachContentToolarge = "FailedOperation.AttachContentToolarge"
        case failedOperation_EmailAddrInBlacklist = "FailedOperation.EmailAddrInBlacklist"
        case failedOperation_EmailContentToolarge = "FailedOperation.EmailContentToolarge"
        case failedOperation_ExceedSendLimit = "FailedOperation.ExceedSendLimit"
        case failedOperation_ExceedTemplateLimit = "FailedOperation.ExceedTemplateLimit"
        case failedOperation_FrequencyLimit = "FailedOperation.FrequencyLimit"
        case failedOperation_HighRejectionRate = "FailedOperation.HighRejectionRate"
        case failedOperation_IncorrectEmail = "FailedOperation.IncorrectEmail"
        case failedOperation_IncorrectSender = "FailedOperation.IncorrectSender"
        case failedOperation_InsufficientBalance = "FailedOperation.InsufficientBalance"
        case failedOperation_InsufficientQuota = "FailedOperation.InsufficientQuota"
        case failedOperation_InvalidAttachName = "FailedOperation.InvalidAttachName"
        case failedOperation_InvalidLimit = "FailedOperation.InvalidLimit"
        case failedOperation_InvalidTemplateID = "FailedOperation.InvalidTemplateID"
        case failedOperation_MissingEmailContent = "FailedOperation.MissingEmailContent"
        case failedOperation_NoAttachPermission = "FailedOperation.NoAttachPermission"
        case failedOperation_NotAuthenticatedSender = "FailedOperation.NotAuthenticatedSender"
        case failedOperation_NotSupportDate = "FailedOperation.NotSupportDate"
        case failedOperation_ProtocolCheckErr = "FailedOperation.ProtocolCheckErr"
        case failedOperation_ReceiverHasUnsubscribed = "FailedOperation.ReceiverHasUnsubscribed"
        case failedOperation_RejectedByRecipients = "FailedOperation.RejectedByRecipients"
        case failedOperation_SendEmailErr = "FailedOperation.SendEmailErr"
        case failedOperation_ServiceNotAvailable = "FailedOperation.ServiceNotAvailable"
        case failedOperation_TemplateContentToolarge = "FailedOperation.TemplateContentToolarge"
        case failedOperation_TemporaryBlocked = "FailedOperation.TemporaryBlocked"
        case failedOperation_TooManyAttachments = "FailedOperation.TooManyAttachments"
        case failedOperation_TooManyRecipients = "FailedOperation.TooManyRecipients"
        case failedOperation_UnsupportMailType = "FailedOperation.UnsupportMailType"
        case failedOperation_WithOutPermission = "FailedOperation.WithOutPermission"
        case failedOperation_WrongContentJson = "FailedOperation.WrongContentJson"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AttachContentIsWrong = "InvalidParameterValue.AttachContentIsWrong"
        case invalidParameterValue_BeginTimeBeforeNow = "InvalidParameterValue.BeginTimeBeforeNow"
        case invalidParameterValue_CreatedByOther = "InvalidParameterValue.CreatedByOther"
        case invalidParameterValue_EmailAddressIsNULL = "InvalidParameterValue.EmailAddressIsNULL"
        case invalidParameterValue_EmailContentIsWrong = "InvalidParameterValue.EmailContentIsWrong"
        case invalidParameterValue_IllegalEmailAddress = "InvalidParameterValue.IllegalEmailAddress"
        case invalidParameterValue_IllegalSenderName = "InvalidParameterValue.IllegalSenderName"
        case invalidParameterValue_InValidTemplateData = "InvalidParameterValue.InValidTemplateData"
        case invalidParameterValue_InvalidEmailIdentity = "InvalidParameterValue.InvalidEmailIdentity"
        case invalidParameterValue_InvalidSmtpPassWord = "InvalidParameterValue.InvalidSmtpPassWord"
        case invalidParameterValue_NoSuchSender = "InvalidParameterValue.NoSuchSender"
        case invalidParameterValue_NotExistDomain = "InvalidParameterValue.NotExistDomain"
        case invalidParameterValue_ReceiverDescIllegal = "InvalidParameterValue.ReceiverDescIllegal"
        case invalidParameterValue_ReceiverEmailInvalid = "InvalidParameterValue.ReceiverEmailInvalid"
        case invalidParameterValue_ReceiverNameIllegal = "InvalidParameterValue.ReceiverNameIllegal"
        case invalidParameterValue_RepeatCreation = "InvalidParameterValue.RepeatCreation"
        case invalidParameterValue_RepeatEmailAddress = "InvalidParameterValue.RepeatEmailAddress"
        case invalidParameterValue_RepeatReceiverName = "InvalidParameterValue.RepeatReceiverName"
        case invalidParameterValue_SubjectLengthError = "InvalidParameterValue.SubjectLengthError"
        case invalidParameterValue_TemplateContentIsNULL = "InvalidParameterValue.TemplateContentIsNULL"
        case invalidParameterValue_TemplateContentIsWrong = "InvalidParameterValue.TemplateContentIsWrong"
        case invalidParameterValue_TemplateDataError = "InvalidParameterValue.TemplateDataError"
        case invalidParameterValue_TemplateDataInconsistent = "InvalidParameterValue.TemplateDataInconsistent"
        case invalidParameterValue_TemplateDataLenLimit = "InvalidParameterValue.TemplateDataLenLimit"
        case invalidParameterValue_TemplateNameIllegal = "InvalidParameterValue.TemplateNameIllegal"
        case invalidParameterValue_TemplateNameIsNULL = "InvalidParameterValue.TemplateNameIsNULL"
        case invalidParameterValue_TemplateNotExist = "InvalidParameterValue.TemplateNotExist"
        case invalidParameterValue_TemplateNotMatchData = "InvalidParameterValue.TemplateNotMatchData"
        case invalidParameterValue_WrongDate = "InvalidParameterValue.WrongDate"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ExceedReceiverLimit = "LimitExceeded.ExceedReceiverLimit"
        case limitExceeded_ReceiverDetailCountLimit = "LimitExceeded.ReceiverDetailCountLimit"
        case limitExceeded_ReceiverDetailRequestLimit = "LimitExceeded.ReceiverDetailRequestLimit"
        case missingParameter = "MissingParameter"
        case missingParameter_CycleParamNecessary = "MissingParameter.CycleParamNecessary"
        case missingParameter_EmailsNecessary = "MissingParameter.EmailsNecessary"
        case missingParameter_ReceiverIdNecessary = "MissingParameter.ReceiverIdNecessary"
        case missingParameter_SendParamNecessary = "MissingParameter.SendParamNecessary"
        case missingParameter_TimedParamNecessary = "MissingParameter.TimedParamNecessary"
        case operationDenied = "OperationDenied"
        case operationDenied_DomainNotVerified = "OperationDenied.DomainNotVerified"
        case operationDenied_ExceedDomainLimit = "OperationDenied.ExceedDomainLimit"
        case operationDenied_ExceedSenderLimit = "OperationDenied.ExceedSenderLimit"
        case operationDenied_ReceiverIsOperating = "OperationDenied.ReceiverIsOperating"
        case operationDenied_ReceiverNotExist = "OperationDenied.ReceiverNotExist"
        case operationDenied_ReceiverStatusError = "OperationDenied.ReceiverStatusError"
        case operationDenied_RepeatPassWord = "OperationDenied.RepeatPassWord"
        case operationDenied_SendAddressStatusError = "OperationDenied.SendAddressStatusError"
        case operationDenied_TemplateStatusError = "OperationDenied.TemplateStatusError"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCSesError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameterValue.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }

    /// 操作失败。
    public static var failedOperation: TCSesError {
        TCSesError(.failedOperation)
    }

    /// 附件太大，请参考单个附件以及附件总量大小限制。
    public static var failedOperation_AttachContentToolarge: TCSesError {
        TCSesError(.failedOperation_AttachContentToolarge)
    }

    /// 邮件地址在黑名单中。
    public static var failedOperation_EmailAddrInBlacklist: TCSesError {
        TCSesError(.failedOperation_EmailAddrInBlacklist)
    }

    /// 邮件内容太大，请减少发送邮件内容。
    public static var failedOperation_EmailContentToolarge: TCSesError {
        TCSesError(.failedOperation_EmailContentToolarge)
    }

    /// 超出当日总量发送限制。
    public static var failedOperation_ExceedSendLimit: TCSesError {
        TCSesError(.failedOperation_ExceedSendLimit)
    }

    /// 超出最大模板数量限制。
    public static var failedOperation_ExceedTemplateLimit: TCSesError {
        TCSesError(.failedOperation_ExceedTemplateLimit)
    }

    /// 触发频率控制，短时间内对同一地址发送过多邮件。
    public static var failedOperation_FrequencyLimit: TCSesError {
        TCSesError(.failedOperation_FrequencyLimit)
    }

    /// 拒信率过高，被临时block。
    public static var failedOperation_HighRejectionRate: TCSesError {
        TCSesError(.failedOperation_HighRejectionRate)
    }

    /// 邮箱地址错误。
    public static var failedOperation_IncorrectEmail: TCSesError {
        TCSesError(.failedOperation_IncorrectEmail)
    }

    /// 发件人格式不正确。请参考文档示例填写。
    public static var failedOperation_IncorrectSender: TCSesError {
        TCSesError(.failedOperation_IncorrectSender)
    }

    /// 余额不足，账号欠费等。
    public static var failedOperation_InsufficientBalance: TCSesError {
        TCSesError(.failedOperation_InsufficientBalance)
    }

    /// 套餐包额度不足。
    public static var failedOperation_InsufficientQuota: TCSesError {
        TCSesError(.failedOperation_InsufficientQuota)
    }

    /// 不支持的附件名称，请检查附件名称是否含有特殊字符，详情请参考附录附件说明。
    public static var failedOperation_InvalidAttachName: TCSesError {
        TCSesError(.failedOperation_InvalidAttachName)
    }

    /// 超过查询限制，Limit最大支持100。
    public static var failedOperation_InvalidLimit: TCSesError {
        TCSesError(.failedOperation_InvalidLimit)
    }

    /// 模板ID无效或者不可用。
    public static var failedOperation_InvalidTemplateID: TCSesError {
        TCSesError(.failedOperation_InvalidTemplateID)
    }

    /// 缺少发信内容（TemplateData和Simple不能同时为空)。
    public static var failedOperation_MissingEmailContent: TCSesError {
        TCSesError(.failedOperation_MissingEmailContent)
    }

    /// 没有附件发送权限，请检查。
    public static var failedOperation_NoAttachPermission: TCSesError {
        TCSesError(.failedOperation_NoAttachPermission)
    }

    /// 发件sender没有经过认证，无法发送。
    public static var failedOperation_NotAuthenticatedSender: TCSesError {
        TCSesError(.failedOperation_NotAuthenticatedSender)
    }

    /// 不支持查询该日期邮件记录，仅支持查询90天之内的数据。
    public static var failedOperation_NotSupportDate: TCSesError {
        TCSesError(.failedOperation_NotSupportDate)
    }

    /// 协议检查错误，请检查协议是否正确。
    public static var failedOperation_ProtocolCheckErr: TCSesError {
        TCSesError(.failedOperation_ProtocolCheckErr)
    }

    /// 收件人已退订。
    ///
    /// 收件人已经退订当前发送者的邮件。
    public static var failedOperation_ReceiverHasUnsubscribed: TCSesError {
        TCSesError(.failedOperation_ReceiverHasUnsubscribed)
    }

    /// 邮件被收信人拒绝。
    public static var failedOperation_RejectedByRecipients: TCSesError {
        TCSesError(.failedOperation_RejectedByRecipients)
    }

    /// 您的发送遇到问题，请联系腾讯云提交工单沟通原因并解决。
    public static var failedOperation_SendEmailErr: TCSesError {
        TCSesError(.failedOperation_SendEmailErr)
    }

    /// 临时性错误，请求未生效，请重试。
    public static var failedOperation_ServiceNotAvailable: TCSesError {
        TCSesError(.failedOperation_ServiceNotAvailable)
    }

    /// 模板内容太大，请减少模板内容。
    public static var failedOperation_TemplateContentToolarge: TCSesError {
        TCSesError(.failedOperation_TemplateContentToolarge)
    }

    /// 因触发了某些规则导致临时Block。
    public static var failedOperation_TemporaryBlocked: TCSesError {
        TCSesError(.failedOperation_TemporaryBlocked)
    }

    /// 附件数量太多，单封邮件最多支持10个附件。
    public static var failedOperation_TooManyAttachments: TCSesError {
        TCSesError(.failedOperation_TooManyAttachments)
    }

    /// 收件人数太多，最多支持同时发送50人。
    public static var failedOperation_TooManyRecipients: TCSesError {
        TCSesError(.failedOperation_TooManyRecipients)
    }

    /// 不支持的邮箱类型。
    public static var failedOperation_UnsupportMailType: TCSesError {
        TCSesError(.failedOperation_UnsupportMailType)
    }

    /// 仅支持使用模板发送邮件。
    public static var failedOperation_WithOutPermission: TCSesError {
        TCSesError(.failedOperation_WithOutPermission)
    }

    /// TemplateData字段格式不正确，请保持为json格式。
    public static var failedOperation_WrongContentJson: TCSesError {
        TCSesError(.failedOperation_WrongContentJson)
    }

    /// 内部错误。
    public static var internalError: TCSesError {
        TCSesError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCSesError {
        TCSesError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCSesError {
        TCSesError(.invalidParameterValue)
    }

    /// 附件内容错误，请检查base64内容是否正确。
    public static var invalidParameterValue_AttachContentIsWrong: TCSesError {
        TCSesError(.invalidParameterValue_AttachContentIsWrong)
    }

    /// 开始时间不能早于当前时间。
    ///
    /// 开始时间不能早于当前时间。请检查
    public static var invalidParameterValue_BeginTimeBeforeNow: TCSesError {
        TCSesError(.invalidParameterValue_BeginTimeBeforeNow)
    }

    /// 该域名已被其他腾讯云账号创建。
    public static var invalidParameterValue_CreatedByOther: TCSesError {
        TCSesError(.invalidParameterValue_CreatedByOther)
    }

    /// 收件或者发件地址为空，请检查邮件地址。
    public static var invalidParameterValue_EmailAddressIsNULL: TCSesError {
        TCSesError(.invalidParameterValue_EmailAddressIsNULL)
    }

    /// 邮件内容错误，请检查TEXT/HTML base64是否正确。
    public static var invalidParameterValue_EmailContentIsWrong: TCSesError {
        TCSesError(.invalidParameterValue_EmailContentIsWrong)
    }

    /// 邮件地址不合法，请检查邮件地址格式。
    public static var invalidParameterValue_IllegalEmailAddress: TCSesError {
        TCSesError(.invalidParameterValue_IllegalEmailAddress)
    }

    /// 发信人别名错误。
    ///
    /// 创建发信人地址时，别名错误。别名不能为一个邮箱地址
    public static var invalidParameterValue_IllegalSenderName: TCSesError {
        TCSesError(.invalidParameterValue_IllegalSenderName)
    }

    /// 收件人地址附带的模板参数不能包含html标签。
    ///
    /// 存在某一个收件人地址附带的模板参数不能包含html标签。请逐条检查收件人地址附带的模板参数。
    public static var invalidParameterValue_InValidTemplateData: TCSesError {
        TCSesError(.invalidParameterValue_InValidTemplateData)
    }

    /// 域名取值错误。
    public static var invalidParameterValue_InvalidEmailIdentity: TCSesError {
        TCSesError(.invalidParameterValue_InvalidEmailIdentity)
    }

    /// 密码长度为10~20位，且必须至少包含2位不重复的数字、小写字母、大写字母。
    public static var invalidParameterValue_InvalidSmtpPassWord: TCSesError {
        TCSesError(.invalidParameterValue_InvalidSmtpPassWord)
    }

    /// 您没有这个发件地址，请检查是否存在。
    public static var invalidParameterValue_NoSuchSender: TCSesError {
        TCSesError(.invalidParameterValue_NoSuchSender)
    }

    /// 该域名还没有创建，请先新建发信域名。
    public static var invalidParameterValue_NotExistDomain: TCSesError {
        TCSesError(.invalidParameterValue_NotExistDomain)
    }

    /// 收件人列表描述不合法，描述不可包含特殊字符，字符长度范围:1~300。
    public static var invalidParameterValue_ReceiverDescIllegal: TCSesError {
        TCSesError(.invalidParameterValue_ReceiverDescIllegal)
    }

    /// 收件人地址错误。
    ///
    /// 批量发信或单条发信，，收件人地址错误
    public static var invalidParameterValue_ReceiverEmailInvalid: TCSesError {
        TCSesError(.invalidParameterValue_ReceiverEmailInvalid)
    }

    /// 收件人列表名字不合法，请检查字符内容及大小。
    ///
    /// 收件人列表名字不合法，没有传列表名字或者列表名字长度超长，调整列表名字后，重新保存
    public static var invalidParameterValue_ReceiverNameIllegal: TCSesError {
        TCSesError(.invalidParameterValue_ReceiverNameIllegal)
    }

    /// 该域名已经创建过了，请勿重复创建。
    public static var invalidParameterValue_RepeatCreation: TCSesError {
        TCSesError(.invalidParameterValue_RepeatCreation)
    }

    /// 该邮件地址已经创建过了，请勿重复创建。
    public static var invalidParameterValue_RepeatEmailAddress: TCSesError {
        TCSesError(.invalidParameterValue_RepeatEmailAddress)
    }

    /// 收件人列表名称重复。
    ///
    /// 收件人列表名称重复，修改列表名称，保证列表名称在自己所有的收件人列表中不重复。
    public static var invalidParameterValue_RepeatReceiverName: TCSesError {
        TCSesError(.invalidParameterValue_RepeatReceiverName)
    }

    /// 邮件主题长度必须为1-100。
    public static var invalidParameterValue_SubjectLengthError: TCSesError {
        TCSesError(.invalidParameterValue_SubjectLengthError)
    }

    /// 模板资源为空。
    public static var invalidParameterValue_TemplateContentIsNULL: TCSesError {
        TCSesError(.invalidParameterValue_TemplateContentIsNULL)
    }

    /// 模板内容错误，请检查base64内容是否正确。
    public static var invalidParameterValue_TemplateContentIsWrong: TCSesError {
        TCSesError(.invalidParameterValue_TemplateContentIsWrong)
    }

    /// 模板参数必须为json格式。
    public static var invalidParameterValue_TemplateDataError: TCSesError {
        TCSesError(.invalidParameterValue_TemplateDataError)
    }

    /// 模板参数变量名与之前不一致。
    ///
    /// 模板参数变量与之前不一致。向收件人列表追加收件人地址及模板参数变量时，模板参数变量名与首次上传时不一致造成。请修改模板参数变量名。
    public static var invalidParameterValue_TemplateDataInconsistent: TCSesError {
        TCSesError(.invalidParameterValue_TemplateDataInconsistent)
    }

    /// 单条收件人地址附带的模板参数(整个 JSON 结构)， 长度超过限制 800 bytes
    ///
    /// 收件人地址附带的模板参数长度超过限制，具体指TemplateData字段的长度。在控制台上传时，变量名和变量值为转成成json字符串，再计算长度。请参考API文档，调整TemplateData字段长度，在控制台上传时，减少变量个数或者缩短变量值
    public static var invalidParameterValue_TemplateDataLenLimit: TCSesError {
        TCSesError(.invalidParameterValue_TemplateDataLenLimit)
    }

    /// 模板名字不合法，请检查字符内容及大小。
    public static var invalidParameterValue_TemplateNameIllegal: TCSesError {
        TCSesError(.invalidParameterValue_TemplateNameIllegal)
    }

    /// 模板名字不能为空。
    public static var invalidParameterValue_TemplateNameIsNULL: TCSesError {
        TCSesError(.invalidParameterValue_TemplateNameIsNULL)
    }

    /// 不存在该模板，请先创建模板。
    public static var invalidParameterValue_TemplateNotExist: TCSesError {
        TCSesError(.invalidParameterValue_TemplateNotExist)
    }

    /// 模板变量与收件人列表参数不一一对应。
    ///
    /// 调整模板或删除收件人列表，重新调整列表中的参数并上传
    public static var invalidParameterValue_TemplateNotMatchData: TCSesError {
        TCSesError(.invalidParameterValue_TemplateNotMatchData)
    }

    /// 搜索日期错误，请检查日期及格式是否有效。
    public static var invalidParameterValue_WrongDate: TCSesError {
        TCSesError(.invalidParameterValue_WrongDate)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCSesError {
        TCSesError(.limitExceeded)
    }

    /// 收件人列表数量超过限制。
    ///
    /// 收件人列表数量最多10个，具体数量参考页面提示，可以先删除不需要用的列表，然后重新创建
    public static var limitExceeded_ExceedReceiverLimit: TCSesError {
        TCSesError(.limitExceeded_ExceedReceiverLimit)
    }

    /// 该收件人列表包含的收件人地址总量超过限制。
    ///
    /// 该收件人列表包含的收件人地址总量超过限制。请查询一下该收件人列表已存在的地址总数，加上本次请求的地址数量是否超过地址总量限制。总量限制请参考接口描述。
    public static var limitExceeded_ReceiverDetailCountLimit: TCSesError {
        TCSesError(.limitExceeded_ReceiverDetailCountLimit)
    }

    /// 请求的收件人地址数量超过限制。
    ///
    /// 请求的收件人地址数量超过限制。参考接口文档，调整请求的收件人地址的数量。
    public static var limitExceeded_ReceiverDetailRequestLimit: TCSesError {
        TCSesError(.limitExceeded_ReceiverDetailRequestLimit)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCSesError {
        TCSesError(.missingParameter)
    }

    /// 周期发送任务需选择开始时间和间隔时间。
    ///
    /// 周期发送任务需选择开始时间和间隔时间
    public static var missingParameter_CycleParamNecessary: TCSesError {
        TCSesError(.missingParameter_CycleParamNecessary)
    }

    /// 收件人地址必须传。
    ///
    /// 参数中补上收件人地址
    public static var missingParameter_EmailsNecessary: TCSesError {
        TCSesError(.missingParameter_EmailsNecessary)
    }

    /// 收件人列表Id必传。
    ///
    /// 收件人列表Id必传
    public static var missingParameter_ReceiverIdNecessary: TCSesError {
        TCSesError(.missingParameter_ReceiverIdNecessary)
    }

    /// 发件地址、收件人列表,发件模板必须传。
    public static var missingParameter_SendParamNecessary: TCSesError {
        TCSesError(.missingParameter_SendParamNecessary)
    }

    /// 定时发送任务需选择开始时间。
    ///
    /// 定时发送任务需选择开始时间
    public static var missingParameter_TimedParamNecessary: TCSesError {
        TCSesError(.missingParameter_TimedParamNecessary)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCSesError {
        TCSesError(.operationDenied)
    }

    /// 域名验证失败，请检查域名是否通过验证。
    public static var operationDenied_DomainNotVerified: TCSesError {
        TCSesError(.operationDenied_DomainNotVerified)
    }

    /// 超出最大发信域名限制。
    public static var operationDenied_ExceedDomainLimit: TCSesError {
        TCSesError(.operationDenied_ExceedDomainLimit)
    }

    /// 超出最大发信地址限制。
    public static var operationDenied_ExceedSenderLimit: TCSesError {
        TCSesError(.operationDenied_ExceedSenderLimit)
    }

    /// 收件人列表正在上传中，请稍后操作。
    ///
    /// 可能是收件人列表正在上传收件人地址，等待一段时间再操作，必要时可以反馈问题
    public static var operationDenied_ReceiverIsOperating: TCSesError {
        TCSesError(.operationDenied_ReceiverIsOperating)
    }

    /// 收件人列表不存在。
    ///
    /// 确认一下收件人Id是否正确真实，必须为已创建的收件人列表的id
    public static var operationDenied_ReceiverNotExist: TCSesError {
        TCSesError(.operationDenied_ReceiverNotExist)
    }

    /// 收件人列表空或状态不是上传完成。
    ///
    /// 检查收件人列表中是否存在收件人地址或者正在进行上传，尚未完成全部上传工作
    public static var operationDenied_ReceiverStatusError: TCSesError {
        TCSesError(.operationDenied_ReceiverStatusError)
    }

    /// 不能与上一次设置密码相同。
    public static var operationDenied_RepeatPassWord: TCSesError {
        TCSesError(.operationDenied_RepeatPassWord)
    }

    /// 发信地址不存在或者状态不是通过状态。
    ///
    /// 发信地址不存在或者状态不是通过,请检查发信地址是否创建
    public static var operationDenied_SendAddressStatusError: TCSesError {
        TCSesError(.operationDenied_SendAddressStatusError)
    }

    /// 发信模板不存在或者状态不是审核通过状态。
    ///
    /// 发信模板不存在或者状态不是审核通过，请检查
    public static var operationDenied_TemplateStatusError: TCSesError {
        TCSesError(.operationDenied_TemplateStatusError)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCSesError {
        TCSesError(.requestLimitExceeded)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCSesError {
        TCSesError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCSesError {
        TCSesError(.resourceNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCSesError {
        TCSesError(.resourceUnavailable)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCSesError {
        TCSesError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCSesError {
        TCSesError(.unsupportedOperation)
    }

    public func asSesError() -> TCSesError {
        return self
    }
}
