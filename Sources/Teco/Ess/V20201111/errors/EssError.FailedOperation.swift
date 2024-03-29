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

extension TCEssError {
    public struct FailedOperation: TCEssErrorType {
        enum Code: String {
            case accountVerifyFail = "FailedOperation.AccountVerifyFail"
            case ageNotAchieveNormalLegal = "FailedOperation.AgeNotAchieveNormalLegal"
            case flowHasDocument = "FailedOperation.FlowHasDocument"
            case flowHasNoDocument = "FailedOperation.FlowHasNoDocument"
            case noSignReviewPass = "FailedOperation.NoSignReviewPass"
            case organizationExperienceChange = "FailedOperation.OrganizationExperienceChange"
            case organizationNameChanged = "FailedOperation.OrganizationNameChanged"
            case organizationNameNeedChange = "FailedOperation.OrganizationNameNeedChange"
            case preViewUrlFail = "FailedOperation.PreViewUrlFail"
            case qrCodeCreatorSignComponents = "FailedOperation.QrCodeCreatorSignComponents"
            case qrCodeSignUsers = "FailedOperation.QrCodeSignUsers"
            case qrCodeTemplateId = "FailedOperation.QrCodeTemplateId"
            case requestLimitExceeded = "FailedOperation.RequestLimitExceeded"
            case templateHasNoResource = "FailedOperation.TemplateHasNoResource"
            case userInfoNoMatch = "FailedOperation.UserInfoNoMatch"
            case other = "FailedOperation"
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

        /// 实名认证失败。
        public static var accountVerifyFail: FailedOperation {
            FailedOperation(.accountVerifyFail)
        }

        /// 16岁以下不提供电子签服务。
        public static var ageNotAchieveNormalLegal: FailedOperation {
            FailedOperation(.ageNotAchieveNormalLegal)
        }

        /// 流程已关联文档。
        public static var flowHasDocument: FailedOperation {
            FailedOperation(.flowHasDocument)
        }

        public static var flowHasNoDocument: FailedOperation {
            FailedOperation(.flowHasNoDocument)
        }

        public static var noSignReviewPass: FailedOperation {
            FailedOperation(.noSignReviewPass)
        }

        public static var organizationExperienceChange: FailedOperation {
            FailedOperation(.organizationExperienceChange)
        }

        public static var organizationNameChanged: FailedOperation {
            FailedOperation(.organizationNameChanged)
        }

        public static var organizationNameNeedChange: FailedOperation {
            FailedOperation(.organizationNameNeedChange)
        }

        public static var preViewUrlFail: FailedOperation {
            FailedOperation(.preViewUrlFail)
        }

        /// 请确认是否模板配置存在填写控件。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeCreatorSignComponents: FailedOperation {
            FailedOperation(.qrCodeCreatorSignComponents)
        }

        /// 请确认模板是否缺少签署人。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeSignUsers: FailedOperation {
            FailedOperation(.qrCodeSignUsers)
        }

        /// 适用的模版仅限于B2C（无序签署，顺序签署时B静默签署，顺序签署时B非首位签署）、单C的模版，且模版中发起方没有填写控件。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeTemplateId: FailedOperation {
            FailedOperation(.qrCodeTemplateId)
        }

        /// 短信发送频率超出限制。
        public static var requestLimitExceeded: FailedOperation {
            FailedOperation(.requestLimitExceeded)
        }

        /// 模板无资源信息。
        public static var templateHasNoResource: FailedOperation {
            FailedOperation(.templateHasNoResource)
        }

        public static var userInfoNoMatch: FailedOperation {
            FailedOperation(.userInfoNoMatch)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .accountVerifyFail: 
                code = .failedOperation_AccountVerifyFail
            case .ageNotAchieveNormalLegal: 
                code = .failedOperation_AgeNotAchieveNormalLegal
            case .flowHasDocument: 
                code = .failedOperation_FlowHasDocument
            case .flowHasNoDocument: 
                code = .failedOperation_FlowHasNoDocument
            case .noSignReviewPass: 
                code = .failedOperation_NoSignReviewPass
            case .organizationExperienceChange: 
                code = .failedOperation_OrganizationExperienceChange
            case .organizationNameChanged: 
                code = .failedOperation_OrganizationNameChanged
            case .organizationNameNeedChange: 
                code = .failedOperation_OrganizationNameNeedChange
            case .preViewUrlFail: 
                code = .failedOperation_PreViewUrlFail
            case .qrCodeCreatorSignComponents: 
                code = .failedOperation_QrCodeCreatorSignComponents
            case .qrCodeSignUsers: 
                code = .failedOperation_QrCodeSignUsers
            case .qrCodeTemplateId: 
                code = .failedOperation_QrCodeTemplateId
            case .requestLimitExceeded: 
                code = .failedOperation_RequestLimitExceeded
            case .templateHasNoResource: 
                code = .failedOperation_TemplateHasNoResource
            case .userInfoNoMatch: 
                code = .failedOperation_UserInfoNoMatch
            case .other: 
                code = .failedOperation
            }
            return TCEssError(code, context: self.context)
        }
    }
}
