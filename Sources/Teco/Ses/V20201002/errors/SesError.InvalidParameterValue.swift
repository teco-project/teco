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

extension TCSesError {
    public struct InvalidParameterValue: TCSesErrorType {
        enum Code: String {
            case attachContentIsWrong = "InvalidParameterValue.AttachContentIsWrong"
            case beginTimeBeforeNow = "InvalidParameterValue.BeginTimeBeforeNow"
            case createdByOther = "InvalidParameterValue.CreatedByOther"
            case emailAddressIsNULL = "InvalidParameterValue.EmailAddressIsNULL"
            case emailContentIsWrong = "InvalidParameterValue.EmailContentIsWrong"
            case illegalEmailAddress = "InvalidParameterValue.IllegalEmailAddress"
            case illegalSenderName = "InvalidParameterValue.IllegalSenderName"
            case inValidTemplateData = "InvalidParameterValue.InValidTemplateData"
            case invalidEmailIdentity = "InvalidParameterValue.InvalidEmailIdentity"
            case invalidSmtpPassWord = "InvalidParameterValue.InvalidSmtpPassWord"
            case noSuchSender = "InvalidParameterValue.NoSuchSender"
            case notExistDomain = "InvalidParameterValue.NotExistDomain"
            case receiverDescIllegal = "InvalidParameterValue.ReceiverDescIllegal"
            case receiverEmailInvalid = "InvalidParameterValue.ReceiverEmailInvalid"
            case receiverNameIllegal = "InvalidParameterValue.ReceiverNameIllegal"
            case repeatCreation = "InvalidParameterValue.RepeatCreation"
            case repeatEmailAddress = "InvalidParameterValue.RepeatEmailAddress"
            case repeatReceiverName = "InvalidParameterValue.RepeatReceiverName"
            case subjectLengthError = "InvalidParameterValue.SubjectLengthError"
            case templateContentIsNULL = "InvalidParameterValue.TemplateContentIsNULL"
            case templateContentIsWrong = "InvalidParameterValue.TemplateContentIsWrong"
            case templateDataError = "InvalidParameterValue.TemplateDataError"
            case templateDataInconsistent = "InvalidParameterValue.TemplateDataInconsistent"
            case templateDataLenLimit = "InvalidParameterValue.TemplateDataLenLimit"
            case templateNameIllegal = "InvalidParameterValue.TemplateNameIllegal"
            case templateNameIsNULL = "InvalidParameterValue.TemplateNameIsNULL"
            case templateNotExist = "InvalidParameterValue.TemplateNotExist"
            case templateNotMatchData = "InvalidParameterValue.TemplateNotMatchData"
            case wrongDate = "InvalidParameterValue.WrongDate"
            case other = "InvalidParameterValue"
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

        /// 附件内容错误，请检查base64内容是否正确。
        public static var attachContentIsWrong: InvalidParameterValue {
            InvalidParameterValue(.attachContentIsWrong)
        }

        /// 开始时间不能早于当前时间。
        ///
        /// 开始时间不能早于当前时间。请检查
        public static var beginTimeBeforeNow: InvalidParameterValue {
            InvalidParameterValue(.beginTimeBeforeNow)
        }

        /// 该域名已被其他腾讯云账号创建。
        public static var createdByOther: InvalidParameterValue {
            InvalidParameterValue(.createdByOther)
        }

        /// 收件或者发件地址为空，请检查邮件地址。
        public static var emailAddressIsNULL: InvalidParameterValue {
            InvalidParameterValue(.emailAddressIsNULL)
        }

        /// 邮件内容错误，请检查TEXT/HTML base64是否正确。
        public static var emailContentIsWrong: InvalidParameterValue {
            InvalidParameterValue(.emailContentIsWrong)
        }

        /// 邮件地址不合法，请检查邮件地址格式。
        public static var illegalEmailAddress: InvalidParameterValue {
            InvalidParameterValue(.illegalEmailAddress)
        }

        /// 发信人别名错误。
        ///
        /// 创建发信人地址时，别名错误。别名不能为一个邮箱地址
        public static var illegalSenderName: InvalidParameterValue {
            InvalidParameterValue(.illegalSenderName)
        }

        /// 收件人地址附带的模板参数不能包含html标签。
        ///
        /// 存在某一个收件人地址附带的模板参数不能包含html标签。请逐条检查收件人地址附带的模板参数。
        public static var inValidTemplateData: InvalidParameterValue {
            InvalidParameterValue(.inValidTemplateData)
        }

        /// 域名取值错误。
        public static var invalidEmailIdentity: InvalidParameterValue {
            InvalidParameterValue(.invalidEmailIdentity)
        }

        /// 密码长度为10~20位，且必须至少包含2位不重复的数字、小写字母、大写字母。
        public static var invalidSmtpPassWord: InvalidParameterValue {
            InvalidParameterValue(.invalidSmtpPassWord)
        }

        /// 您没有这个发件地址，请检查是否存在。
        public static var noSuchSender: InvalidParameterValue {
            InvalidParameterValue(.noSuchSender)
        }

        /// 该域名还没有创建，请先新建发信域名。
        public static var notExistDomain: InvalidParameterValue {
            InvalidParameterValue(.notExistDomain)
        }

        /// 收件人列表描述不合法，描述不可包含特殊字符，字符长度范围:1~300。
        public static var receiverDescIllegal: InvalidParameterValue {
            InvalidParameterValue(.receiverDescIllegal)
        }

        /// 收件人地址错误。
        ///
        /// 批量发信或单条发信，，收件人地址错误
        public static var receiverEmailInvalid: InvalidParameterValue {
            InvalidParameterValue(.receiverEmailInvalid)
        }

        /// 收件人列表名字不合法，请检查字符内容及大小。
        ///
        /// 收件人列表名字不合法，没有传列表名字或者列表名字长度超长，调整列表名字后，重新保存
        public static var receiverNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.receiverNameIllegal)
        }

        /// 该域名已经创建过了，请勿重复创建。
        public static var repeatCreation: InvalidParameterValue {
            InvalidParameterValue(.repeatCreation)
        }

        /// 该邮件地址已经创建过了，请勿重复创建。
        public static var repeatEmailAddress: InvalidParameterValue {
            InvalidParameterValue(.repeatEmailAddress)
        }

        /// 收件人列表名称重复。
        ///
        /// 收件人列表名称重复，修改列表名称，保证列表名称在自己所有的收件人列表中不重复。
        public static var repeatReceiverName: InvalidParameterValue {
            InvalidParameterValue(.repeatReceiverName)
        }

        /// 邮件主题长度必须为1-100。
        public static var subjectLengthError: InvalidParameterValue {
            InvalidParameterValue(.subjectLengthError)
        }

        /// 模板资源为空。
        public static var templateContentIsNULL: InvalidParameterValue {
            InvalidParameterValue(.templateContentIsNULL)
        }

        /// 模板内容错误，请检查base64内容是否正确。
        public static var templateContentIsWrong: InvalidParameterValue {
            InvalidParameterValue(.templateContentIsWrong)
        }

        /// 模板参数必须为json格式。
        public static var templateDataError: InvalidParameterValue {
            InvalidParameterValue(.templateDataError)
        }

        /// 模板参数变量名与之前不一致。
        ///
        /// 模板参数变量与之前不一致。向收件人列表追加收件人地址及模板参数变量时，模板参数变量名与首次上传时不一致造成。请修改模板参数变量名。
        public static var templateDataInconsistent: InvalidParameterValue {
            InvalidParameterValue(.templateDataInconsistent)
        }

        /// 单条收件人地址附带的模板参数(整个 JSON 结构)， 长度超过限制 800 bytes
        ///
        /// 收件人地址附带的模板参数长度超过限制，具体指TemplateData字段的长度。在控制台上传时，变量名和变量值为转成成json字符串，再计算长度。请参考API文档，调整TemplateData字段长度，在控制台上传时，减少变量个数或者缩短变量值
        public static var templateDataLenLimit: InvalidParameterValue {
            InvalidParameterValue(.templateDataLenLimit)
        }

        /// 模板名字不合法，请检查字符内容及大小。
        public static var templateNameIllegal: InvalidParameterValue {
            InvalidParameterValue(.templateNameIllegal)
        }

        /// 模板名字不能为空。
        public static var templateNameIsNULL: InvalidParameterValue {
            InvalidParameterValue(.templateNameIsNULL)
        }

        /// 不存在该模板，请先创建模板。
        public static var templateNotExist: InvalidParameterValue {
            InvalidParameterValue(.templateNotExist)
        }

        /// 模板变量与收件人列表参数不一一对应。
        ///
        /// 调整模板或删除收件人列表，重新调整列表中的参数并上传
        public static var templateNotMatchData: InvalidParameterValue {
            InvalidParameterValue(.templateNotMatchData)
        }

        /// 搜索日期错误，请检查日期及格式是否有效。
        public static var wrongDate: InvalidParameterValue {
            InvalidParameterValue(.wrongDate)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asSesError() -> TCSesError {
            let code: TCSesError.Code
            switch self.error {
            case .attachContentIsWrong:
                code = .invalidParameterValue_AttachContentIsWrong
            case .beginTimeBeforeNow:
                code = .invalidParameterValue_BeginTimeBeforeNow
            case .createdByOther:
                code = .invalidParameterValue_CreatedByOther
            case .emailAddressIsNULL:
                code = .invalidParameterValue_EmailAddressIsNULL
            case .emailContentIsWrong:
                code = .invalidParameterValue_EmailContentIsWrong
            case .illegalEmailAddress:
                code = .invalidParameterValue_IllegalEmailAddress
            case .illegalSenderName:
                code = .invalidParameterValue_IllegalSenderName
            case .inValidTemplateData:
                code = .invalidParameterValue_InValidTemplateData
            case .invalidEmailIdentity:
                code = .invalidParameterValue_InvalidEmailIdentity
            case .invalidSmtpPassWord:
                code = .invalidParameterValue_InvalidSmtpPassWord
            case .noSuchSender:
                code = .invalidParameterValue_NoSuchSender
            case .notExistDomain:
                code = .invalidParameterValue_NotExistDomain
            case .receiverDescIllegal:
                code = .invalidParameterValue_ReceiverDescIllegal
            case .receiverEmailInvalid:
                code = .invalidParameterValue_ReceiverEmailInvalid
            case .receiverNameIllegal:
                code = .invalidParameterValue_ReceiverNameIllegal
            case .repeatCreation:
                code = .invalidParameterValue_RepeatCreation
            case .repeatEmailAddress:
                code = .invalidParameterValue_RepeatEmailAddress
            case .repeatReceiverName:
                code = .invalidParameterValue_RepeatReceiverName
            case .subjectLengthError:
                code = .invalidParameterValue_SubjectLengthError
            case .templateContentIsNULL:
                code = .invalidParameterValue_TemplateContentIsNULL
            case .templateContentIsWrong:
                code = .invalidParameterValue_TemplateContentIsWrong
            case .templateDataError:
                code = .invalidParameterValue_TemplateDataError
            case .templateDataInconsistent:
                code = .invalidParameterValue_TemplateDataInconsistent
            case .templateDataLenLimit:
                code = .invalidParameterValue_TemplateDataLenLimit
            case .templateNameIllegal:
                code = .invalidParameterValue_TemplateNameIllegal
            case .templateNameIsNULL:
                code = .invalidParameterValue_TemplateNameIsNULL
            case .templateNotExist:
                code = .invalidParameterValue_TemplateNotExist
            case .templateNotMatchData:
                code = .invalidParameterValue_TemplateNotMatchData
            case .wrongDate:
                code = .invalidParameterValue_WrongDate
            case .other:
                code = .invalidParameterValue
            }
            return TCSesError(code, context: self.context)
        }
    }
}
