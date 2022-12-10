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
    public struct MissingParameter: TCErrorType {
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
    }
}

extension TCEssError.MissingParameter: Equatable {
    public static func == (lhs: TCEssError.MissingParameter, rhs: TCEssError.MissingParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEssError.MissingParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEssError.MissingParameter {
    /// - Returns: ``TCEssError`` that holds the same error and context.
    public func toEssError() -> TCEssError {
        guard let code = TCEssError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEssError(code, context: self.context)
    }
}

extension TCEssError.MissingParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
