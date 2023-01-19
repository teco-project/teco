//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCEssbasicError {
    public struct MissingParameter: TCEssbasicErrorType {
        enum Code: String {
            case companyActiveInfo = "MissingParameter.CompanyActiveInfo"
            case date = "MissingParameter.Date"
            case flowId = "MissingParameter.FlowId"
            case flowIds = "MissingParameter.FlowIds"
            case flowIdsOrFlowGroupId = "MissingParameter.FlowIdsOrFlowGroupId"
            case flowInfo = "MissingParameter.FlowInfo"
            case missComponentName = "MissingParameter.MissComponentName"
            case orgOpenId = "MissingParameter.OrgOpenId"
            case organizationId = "MissingParameter.OrganizationId"
            case proxyOperatorOpenId = "MissingParameter.ProxyOperatorOpenId"
            case sealId = "MissingParameter.SealId"
            case sealImage = "MissingParameter.SealImage"
            case sealName = "MissingParameter.SealName"
            case signComponents = "MissingParameter.SignComponents"
            case templates = "MissingParameter.Templates"
            case userOpenId = "MissingParameter.UserOpenId"
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

        public static var companyActiveInfo: MissingParameter {
            MissingParameter(.companyActiveInfo)
        }

        public static var date: MissingParameter {
            MissingParameter(.date)
        }

        /// 缺少流程id，请检查后重试。
        public static var flowId: MissingParameter {
            MissingParameter(.flowId)
        }

        public static var flowIds: MissingParameter {
            MissingParameter(.flowIds)
        }

        public static var flowIdsOrFlowGroupId: MissingParameter {
            MissingParameter(.flowIdsOrFlowGroupId)
        }

        public static var flowInfo: MissingParameter {
            MissingParameter(.flowInfo)
        }

        public static var missComponentName: MissingParameter {
            MissingParameter(.missComponentName)
        }

        public static var orgOpenId: MissingParameter {
            MissingParameter(.orgOpenId)
        }

        public static var organizationId: MissingParameter {
            MissingParameter(.organizationId)
        }

        public static var proxyOperatorOpenId: MissingParameter {
            MissingParameter(.proxyOperatorOpenId)
        }

        public static var sealId: MissingParameter {
            MissingParameter(.sealId)
        }

        public static var sealImage: MissingParameter {
            MissingParameter(.sealImage)
        }

        public static var sealName: MissingParameter {
            MissingParameter(.sealName)
        }

        public static var signComponents: MissingParameter {
            MissingParameter(.signComponents)
        }

        public static var templates: MissingParameter {
            MissingParameter(.templates)
        }

        public static var userOpenId: MissingParameter {
            MissingParameter(.userOpenId)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .companyActiveInfo:
                code = .missingParameter_CompanyActiveInfo
            case .date:
                code = .missingParameter_Date
            case .flowId:
                code = .missingParameter_FlowId
            case .flowIds:
                code = .missingParameter_FlowIds
            case .flowIdsOrFlowGroupId:
                code = .missingParameter_FlowIdsOrFlowGroupId
            case .flowInfo:
                code = .missingParameter_FlowInfo
            case .missComponentName:
                code = .missingParameter_MissComponentName
            case .orgOpenId:
                code = .missingParameter_OrgOpenId
            case .organizationId:
                code = .missingParameter_OrganizationId
            case .proxyOperatorOpenId:
                code = .missingParameter_ProxyOperatorOpenId
            case .sealId:
                code = .missingParameter_SealId
            case .sealImage:
                code = .missingParameter_SealImage
            case .sealName:
                code = .missingParameter_SealName
            case .signComponents:
                code = .missingParameter_SignComponents
            case .templates:
                code = .missingParameter_Templates
            case .userOpenId:
                code = .missingParameter_UserOpenId
            case .other:
                code = .missingParameter
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
