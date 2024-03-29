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

extension TCEssbasicError {
    public struct FailedOperation: TCEssbasicErrorType {
        enum Code: String {
            case ageNotAchieveNormalLegal = "FailedOperation.AgeNotAchieveNormalLegal"
            case authFail = "FailedOperation.AuthFail"
            case errNotSyncProxyOrganization = "FailedOperation.ErrNotSyncProxyOrganization"
            case existSameSealName = "FailedOperation.ExistSameSealName"
            case flowNumExceed = "FailedOperation.FlowNumExceed"
            case hasAuthorized = "FailedOperation.HasAuthorized"
            case noRoleAuth = "FailedOperation.NoRoleAuth"
            case notAvailableSignReview = "FailedOperation.NotAvailableSignReview"
            case qrCodeCreatorSignComponents = "FailedOperation.QrCodeCreatorSignComponents"
            case qrCodeSignUsers = "FailedOperation.QrCodeSignUsers"
            case qrCodeTemplateId = "FailedOperation.QrCodeTemplateId"
            case staffAlreadyVerify = "FailedOperation.StaffAlreadyVerify"
            case userAutoSignEnableAlready = "FailedOperation.UserAutoSignEnableAlready"
            case userAutoSignEnableUrlNotExist = "FailedOperation.UserAutoSignEnableUrlNotExist"
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

        /// 签署人未达到合法年龄。
        ///
        /// 请检查签署人证件号是合法年龄，以证件号为准。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var ageNotAchieveNormalLegal: FailedOperation {
            FailedOperation(.ageNotAchieveNormalLegal)
        }

        /// 鉴权失败。
        ///
        /// 请检查参数，确保账号信息正确。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var authFail: FailedOperation {
            FailedOperation(.authFail)
        }

        /// 使用“同步企业信息”接口同步企业信息
        public static var errNotSyncProxyOrganization: FailedOperation {
            FailedOperation(.errNotSyncProxyOrganization)
        }

        /// 存在同名印章。
        public static var existSameSealName: FailedOperation {
            FailedOperation(.existSameSealName)
        }

        /// 合同数目超出。
        public static var flowNumExceed: FailedOperation {
            FailedOperation(.flowNumExceed)
        }

        /// 已授权。
        public static var hasAuthorized: FailedOperation {
            FailedOperation(.hasAuthorized)
        }

        public static var noRoleAuth: FailedOperation {
            FailedOperation(.noRoleAuth)
        }

        /// 当前合同状态无法进行签署审批。
        public static var notAvailableSignReview: FailedOperation {
            FailedOperation(.notAvailableSignReview)
        }

        /// 发起签署存在填写控件。
        ///
        /// 请确认是否模板配置存在发起方的填写控件。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeCreatorSignComponents: FailedOperation {
            FailedOperation(.qrCodeCreatorSignComponents)
        }

        /// 模板签署人不存在。
        ///
        /// 请确认模板是否缺少签署人。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeSignUsers: FailedOperation {
            FailedOperation(.qrCodeSignUsers)
        }

        /// 签署二维码模板信息有误，请检查参数后重试。
        ///
        /// 适用的模版仅限于B2C（无序签署，顺序签署时B静默签署，顺序签署时B非首位签署）、单C的模版，且模版中发起方没有填写控件。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var qrCodeTemplateId: FailedOperation {
            FailedOperation(.qrCodeTemplateId)
        }

        /// 员工已实名。
        ///
        /// 员工已实名，如有其他疑问，请联系客服。
        public static var staffAlreadyVerify: FailedOperation {
            FailedOperation(.staffAlreadyVerify)
        }

        public static var userAutoSignEnableAlready: FailedOperation {
            FailedOperation(.userAutoSignEnableAlready)
        }

        public static var userAutoSignEnableUrlNotExist: FailedOperation {
            FailedOperation(.userAutoSignEnableUrlNotExist)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .ageNotAchieveNormalLegal:
                code = .failedOperation_AgeNotAchieveNormalLegal
            case .authFail:
                code = .failedOperation_AuthFail
            case .errNotSyncProxyOrganization:
                code = .failedOperation_ErrNotSyncProxyOrganization
            case .existSameSealName:
                code = .failedOperation_ExistSameSealName
            case .flowNumExceed:
                code = .failedOperation_FlowNumExceed
            case .hasAuthorized:
                code = .failedOperation_HasAuthorized
            case .noRoleAuth:
                code = .failedOperation_NoRoleAuth
            case .notAvailableSignReview:
                code = .failedOperation_NotAvailableSignReview
            case .qrCodeCreatorSignComponents:
                code = .failedOperation_QrCodeCreatorSignComponents
            case .qrCodeSignUsers:
                code = .failedOperation_QrCodeSignUsers
            case .qrCodeTemplateId:
                code = .failedOperation_QrCodeTemplateId
            case .staffAlreadyVerify:
                code = .failedOperation_StaffAlreadyVerify
            case .userAutoSignEnableAlready:
                code = .failedOperation_UserAutoSignEnableAlready
            case .userAutoSignEnableUrlNotExist:
                code = .failedOperation_UserAutoSignEnableUrlNotExist
            case .other:
                code = .failedOperation
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
