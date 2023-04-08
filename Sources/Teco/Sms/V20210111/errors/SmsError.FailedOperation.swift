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

extension TCSmsError {
    public struct FailedOperation: TCSmsErrorType {
        enum Code: String {
            case containSensitiveWord = "FailedOperation.ContainSensitiveWord"
            case failResolvePacket = "FailedOperation.FailResolvePacket"
            case forbidAddMarketingTemplates = "FailedOperation.ForbidAddMarketingTemplates"
            case insufficientBalanceInSmsPackage = "FailedOperation.InsufficientBalanceInSmsPackage"
            case jsonParseFail = "FailedOperation.JsonParseFail"
            case marketingSendTimeConstraint = "FailedOperation.MarketingSendTimeConstraint"
            case missingSignature = "FailedOperation.MissingSignature"
            case missingSignatureList = "FailedOperation.MissingSignatureList"
            case missingSignatureToModify = "FailedOperation.MissingSignatureToModify"
            case missingTemplateList = "FailedOperation.MissingTemplateList"
            case missingTemplateToModify = "FailedOperation.MissingTemplateToModify"
            case notEnterpriseCertification = "FailedOperation.NotEnterpriseCertification"
            case otherError = "FailedOperation.OtherError"
            case parametersOtherError = "FailedOperation.ParametersOtherError"
            case phoneNumberInBlacklist = "FailedOperation.PhoneNumberInBlacklist"
            case phoneNumberParseFail = "FailedOperation.PhoneNumberParseFail"
            case prohibitSubAccountUse = "FailedOperation.ProhibitSubAccountUse"
            case signIdNotExist = "FailedOperation.SignIdNotExist"
            case signNumberLimit = "FailedOperation.SignNumberLimit"
            case signatureIncorrectOrUnapproved = "FailedOperation.SignatureIncorrectOrUnapproved"
            case templateAlreadyPassedCheck = "FailedOperation.TemplateAlreadyPassedCheck"
            case templateIdNotExist = "FailedOperation.TemplateIdNotExist"
            case templateIncorrectOrUnapproved = "FailedOperation.TemplateIncorrectOrUnapproved"
            case templateNumberLimit = "FailedOperation.TemplateNumberLimit"
            case templateParamSetNotMatchApprovedTemplate = "FailedOperation.TemplateParamSetNotMatchApprovedTemplate"
            case templateUnapprovedOrNotExist = "FailedOperation.TemplateUnapprovedOrNotExist"
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

        /// 短信内容中含有敏感词，请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var containSensitiveWord: FailedOperation {
            FailedOperation(.containSensitiveWord)
        }

        /// 请求包解析失败，通常情况下是由于没有遵守 API 接口说明规范导致的，请参考 [请求包体解析1004错误详解](https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1004.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)。
        public static var failResolvePacket: FailedOperation {
            FailedOperation(.failResolvePacket)
        }

        /// 个人用户不能申请营销短信。
        public static var forbidAddMarketingTemplates: FailedOperation {
            FailedOperation(.forbidAddMarketingTemplates)
        }

        /// 套餐包余量不足，请 [购买套餐包](https://buy.cloud.tencent.com/sms)。
        public static var insufficientBalanceInSmsPackage: FailedOperation {
            FailedOperation(.insufficientBalanceInSmsPackage)
        }

        /// 解析请求包体时候失败。
        public static var jsonParseFail: FailedOperation {
            FailedOperation(.jsonParseFail)
        }

        /// 营销短信发送时间限制，为避免骚扰用户，营销短信只允许在8点到22点发送。
        public static var marketingSendTimeConstraint: FailedOperation {
            FailedOperation(.marketingSendTimeConstraint)
        }

        /// 没有申请签名之前，无法申请模板，请根据 [创建签名](https://cloud.tencent.com/document/product/382/37794#.E5.88.9B.E5.BB.BA.E7.AD.BE.E5.90.8D) 申请完成之后再次申请。
        public static var missingSignature: FailedOperation {
            FailedOperation(.missingSignature)
        }

        /// 无法识别签名，请确认是否已有签名通过申请，一般是签名未通过申请，可以查看 [签名审核](https://cloud.tencent.com/document/product/382/37745)。
        public static var missingSignatureList: FailedOperation {
            FailedOperation(.missingSignatureList)
        }

        /// 此签名 ID 未提交申请或不存在，不能进行修改操作，请检查您的 SignId 是否填写正确。
        public static var missingSignatureToModify: FailedOperation {
            FailedOperation(.missingSignatureToModify)
        }

        /// 无法识别模板，请确认是否已有模板通过申请，一般是模板未通过申请，可以查看 [模板审核](https://cloud.tencent.com/document/product/382/37745)。
        public static var missingTemplateList: FailedOperation {
            FailedOperation(.missingTemplateList)
        }

        /// 此模板 ID 未提交申请或不存在，不能进行修改操作，请检查您的 TemplateId是否填写正确。
        public static var missingTemplateToModify: FailedOperation {
            FailedOperation(.missingTemplateToModify)
        }

        /// 非企业认证无法使用签名及模板相关接口，您可以[ 变更实名认证模式](https://cloud.tencent.com/document/product/378/34075)，变更为企业认证用户后，约1小时左右生效。
        public static var notEnterpriseCertification: FailedOperation {
            FailedOperation(.notEnterpriseCertification)
        }

        /// 其他错误，一般是由于参数携带不符合要求导致，请参考API接口说明，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var otherError: FailedOperation {
            FailedOperation(.otherError)
        }

        /// 未知错误，如有需要请联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var parametersOtherError: FailedOperation {
            FailedOperation(.parametersOtherError)
        }

        /// 手机号在免打扰名单库中，通常是用户退订或者命中运营商免打扰名单导致的，可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81) 解决。
        public static var phoneNumberInBlacklist: FailedOperation {
            FailedOperation(.phoneNumberInBlacklist)
        }

        /// 号码解析失败，请检查号码是否符合 E.164 标准。
        public static var phoneNumberParseFail: FailedOperation {
            FailedOperation(.phoneNumberParseFail)
        }

        /// 非主账号无法使用拉取模板列表功能。您可以使用主账号下云 API 密钥来调用接口。
        public static var prohibitSubAccountUse: FailedOperation {
            FailedOperation(.prohibitSubAccountUse)
        }

        /// 签名 ID 不存在。
        public static var signIdNotExist: FailedOperation {
            FailedOperation(.signIdNotExist)
        }

        /// 签名个数达到最大值。
        public static var signNumberLimit: FailedOperation {
            FailedOperation(.signNumberLimit)
        }

        /// 签名未审批或格式错误。（1）可登录 [短信控制台](https://console.cloud.tencent.com/smsv2)，核查签名是否已审批并且审批通过；（2）核查是否符合格式规范，签名只能由中英文、数字组成，要求2 - 12个字，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        ///
        /// 可参考 [短信发送提示：FailedOperation.SignatureIncorrectOrUnapproved 如何处理](https://cloud.tencent.com/document/product/382/9558#.E7.9F.AD.E4.BF.A1.E5.8F.91.E9.80.81.E6.8F.90.E7.A4.BA.EF.BC.9Afailedoperation.signatureincorrectorunapproved-.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var signatureIncorrectOrUnapproved: FailedOperation {
            FailedOperation(.signatureIncorrectOrUnapproved)
        }

        /// 此模板已经通过审核，无法再次进行修改。
        public static var templateAlreadyPassedCheck: FailedOperation {
            FailedOperation(.templateAlreadyPassedCheck)
        }

        /// 模板 ID 不存在。
        ///
        /// 请排查模板 ID 是否填写正确
        public static var templateIdNotExist: FailedOperation {
            FailedOperation(.templateIdNotExist)
        }

        /// 模板未审批或内容不匹配。（1）可登录 [短信控制台](https://console.cloud.tencent.com/smsv2)，核查模板是否已审批并审批通过；（2）核查是否符合 [格式规范](https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1014.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        ///
        /// 可参考 [短信发送提示：FailedOperation.TemplateIncorrectOrUnapproved 如何处理](https://cloud.tencent.com/document/product/382/9558#.E7.9F.AD.E4.BF.A1.E5.8F.91.E9.80.81.E6.8F.90.E7.A4.BA.EF.BC.9Afailedoperation.templateincorrectorunapproved-.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var templateIncorrectOrUnapproved: FailedOperation {
            FailedOperation(.templateIncorrectOrUnapproved)
        }

        /// 模板个数达到最大值。
        public static var templateNumberLimit: FailedOperation {
            FailedOperation(.templateNumberLimit)
        }

        /// 请求内容与审核通过的模板内容不匹配。请检查请求中模板参数的个数是否与申请的模板一致。若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        ///
        /// 请检查请求中模板参数的个数是否与申请的模板一致。若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var templateParamSetNotMatchApprovedTemplate: FailedOperation {
            FailedOperation(.templateParamSetNotMatchApprovedTemplate)
        }

        /// 模板未审批或不存在。可登录 [短信控制台](https://console.cloud.tencent.com/smsv2)，核查模板是否已审批并审批通过。若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        ///
        /// 可登陆 [短信控制台](https://console.cloud.tencent.com/smsv2)，核查模板是否已审批并审批通过。若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var templateUnapprovedOrNotExist: FailedOperation {
            FailedOperation(.templateUnapprovedOrNotExist)
        }

        public func asSmsError() -> TCSmsError {
            let code: TCSmsError.Code
            switch self.error {
            case .containSensitiveWord:
                code = .failedOperation_ContainSensitiveWord
            case .failResolvePacket:
                code = .failedOperation_FailResolvePacket
            case .forbidAddMarketingTemplates:
                code = .failedOperation_ForbidAddMarketingTemplates
            case .insufficientBalanceInSmsPackage:
                code = .failedOperation_InsufficientBalanceInSmsPackage
            case .jsonParseFail:
                code = .failedOperation_JsonParseFail
            case .marketingSendTimeConstraint:
                code = .failedOperation_MarketingSendTimeConstraint
            case .missingSignature:
                code = .failedOperation_MissingSignature
            case .missingSignatureList:
                code = .failedOperation_MissingSignatureList
            case .missingSignatureToModify:
                code = .failedOperation_MissingSignatureToModify
            case .missingTemplateList:
                code = .failedOperation_MissingTemplateList
            case .missingTemplateToModify:
                code = .failedOperation_MissingTemplateToModify
            case .notEnterpriseCertification:
                code = .failedOperation_NotEnterpriseCertification
            case .otherError:
                code = .failedOperation_OtherError
            case .parametersOtherError:
                code = .failedOperation_ParametersOtherError
            case .phoneNumberInBlacklist:
                code = .failedOperation_PhoneNumberInBlacklist
            case .phoneNumberParseFail:
                code = .failedOperation_PhoneNumberParseFail
            case .prohibitSubAccountUse:
                code = .failedOperation_ProhibitSubAccountUse
            case .signIdNotExist:
                code = .failedOperation_SignIdNotExist
            case .signNumberLimit:
                code = .failedOperation_SignNumberLimit
            case .signatureIncorrectOrUnapproved:
                code = .failedOperation_SignatureIncorrectOrUnapproved
            case .templateAlreadyPassedCheck:
                code = .failedOperation_TemplateAlreadyPassedCheck
            case .templateIdNotExist:
                code = .failedOperation_TemplateIdNotExist
            case .templateIncorrectOrUnapproved:
                code = .failedOperation_TemplateIncorrectOrUnapproved
            case .templateNumberLimit:
                code = .failedOperation_TemplateNumberLimit
            case .templateParamSetNotMatchApprovedTemplate:
                code = .failedOperation_TemplateParamSetNotMatchApprovedTemplate
            case .templateUnapprovedOrNotExist:
                code = .failedOperation_TemplateUnapprovedOrNotExist
            }
            return TCSmsError(code, context: self.context)
        }
    }
}
