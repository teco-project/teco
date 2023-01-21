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

extension TCEssError {
    public struct MissingParameter: TCEssErrorType {
        enum Code: String {
            case approverMobile = "MissingParameter.ApproverMobile"
            case approverName = "MissingParameter.ApproverName"
            case approverOrganizationInfo = "MissingParameter.ApproverOrganizationInfo"
            case approverRole = "MissingParameter.ApproverRole"
            case approverSignComponent = "MissingParameter.ApproverSignComponent"
            case authCode = "MissingParameter.AuthCode"
            case cancelReason = "MissingParameter.CancelReason"
            case field = "MissingParameter.Field"
            case fileNames = "MissingParameter.FileNames"
            case flowApprover = "MissingParameter.FlowApprover"
            case flowId = "MissingParameter.FlowId"
            case keyWord = "MissingParameter.KeyWord"
            case qrCodeId = "MissingParameter.QrCodeId"
            case recipient = "MissingParameter.Recipient"
            case resourceId = "MissingParameter.ResourceId"
            case resourceName = "MissingParameter.ResourceName"
            case serverSignSealId = "MissingParameter.ServerSignSealId"
            case signComponents = "MissingParameter.SignComponents"
            case userId = "MissingParameter.UserId"
            case other = "MissingParameter"
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

        public static var approverMobile: MissingParameter {
            MissingParameter(.approverMobile)
        }

        public static var approverName: MissingParameter {
            MissingParameter(.approverName)
        }

        public static var approverOrganizationInfo: MissingParameter {
            MissingParameter(.approverOrganizationInfo)
        }

        public static var approverRole: MissingParameter {
            MissingParameter(.approverRole)
        }

        public static var approverSignComponent: MissingParameter {
            MissingParameter(.approverSignComponent)
        }

        public static var authCode: MissingParameter {
            MissingParameter(.authCode)
        }

        public static var cancelReason: MissingParameter {
            MissingParameter(.cancelReason)
        }

        public static var field: MissingParameter {
            MissingParameter(.field)
        }

        public static var fileNames: MissingParameter {
            MissingParameter(.fileNames)
        }

        public static var flowApprover: MissingParameter {
            MissingParameter(.flowApprover)
        }

        public static var flowId: MissingParameter {
            MissingParameter(.flowId)
        }

        public static var keyWord: MissingParameter {
            MissingParameter(.keyWord)
        }

        public static var qrCodeId: MissingParameter {
            MissingParameter(.qrCodeId)
        }

        public static var recipient: MissingParameter {
            MissingParameter(.recipient)
        }

        public static var resourceId: MissingParameter {
            MissingParameter(.resourceId)
        }

        public static var resourceName: MissingParameter {
            MissingParameter(.resourceName)
        }

        public static var serverSignSealId: MissingParameter {
            MissingParameter(.serverSignSealId)
        }

        public static var signComponents: MissingParameter {
            MissingParameter(.signComponents)
        }

        public static var userId: MissingParameter {
            MissingParameter(.userId)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .approverMobile:
                code = .missingParameter_ApproverMobile
            case .approverName:
                code = .missingParameter_ApproverName
            case .approverOrganizationInfo:
                code = .missingParameter_ApproverOrganizationInfo
            case .approverRole:
                code = .missingParameter_ApproverRole
            case .approverSignComponent:
                code = .missingParameter_ApproverSignComponent
            case .authCode:
                code = .missingParameter_AuthCode
            case .cancelReason:
                code = .missingParameter_CancelReason
            case .field:
                code = .missingParameter_Field
            case .fileNames:
                code = .missingParameter_FileNames
            case .flowApprover:
                code = .missingParameter_FlowApprover
            case .flowId:
                code = .missingParameter_FlowId
            case .keyWord:
                code = .missingParameter_KeyWord
            case .qrCodeId:
                code = .missingParameter_QrCodeId
            case .recipient:
                code = .missingParameter_Recipient
            case .resourceId:
                code = .missingParameter_ResourceId
            case .resourceName:
                code = .missingParameter_ResourceName
            case .serverSignSealId:
                code = .missingParameter_ServerSignSealId
            case .signComponents:
                code = .missingParameter_SignComponents
            case .userId:
                code = .missingParameter_UserId
            case .other:
                code = .missingParameter
            }
            return TCEssError(code, context: self.context)
        }
    }
}
