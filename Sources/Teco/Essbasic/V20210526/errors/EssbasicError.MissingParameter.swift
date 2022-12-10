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

extension TCEssbasicError {
    public struct MissingParameter: TCErrorType {
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
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
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
    }
}

extension TCEssbasicError.MissingParameter: Equatable {
    public static func == (lhs: TCEssbasicError.MissingParameter, rhs: TCEssbasicError.MissingParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEssbasicError.MissingParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEssbasicError.MissingParameter {
    /// - Returns: ``TCEssbasicError`` that holds the same error and context.
    public func toEssbasicError() -> TCEssbasicError {
        guard let code = TCEssbasicError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEssbasicError(code, context: self.context)
    }
}

extension TCEssbasicError.MissingParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
