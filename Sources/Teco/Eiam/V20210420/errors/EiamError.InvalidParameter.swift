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

extension TCEiamError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case attributeValueValidError = "InvalidParameter.AttributeValueValidError"
            case orgCodeIllegal = "InvalidParameter.OrgCodeIllegal"
            case parameterIllegal = "InvalidParameter.ParameterIllegal"
            case parameterlllegal = "InvalidParameter.Parameterlllegal"
            case searchCriteriaIllegal = "InvalidParameter.SearchCriteriaIllegal"
            case timeFormatIllegal = "InvalidParameter.TimeFormatIllegal"
            case userExpirationTimeIllegal = "InvalidParameter.UserExpirationTimeIllegal"
            case userIDIsNull = "InvalidParameter.UserIDIsNull"
            case userNameIsNull = "InvalidParameter.UserNameIsNull"
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
        
        /// 属性校验失败。
        public static var attributeValueValidError: InvalidParameter {
            InvalidParameter(.attributeValueValidError)
        }
        
        /// 组织机构代码不合法。
        public static var orgCodeIllegal: InvalidParameter {
            InvalidParameter(.orgCodeIllegal)
        }
        
        /// 参数不合法。
        public static var parameterIllegal: InvalidParameter {
            InvalidParameter(.parameterIllegal)
        }
        
        /// 参数不合法。
        public static var parameterlllegal: InvalidParameter {
            InvalidParameter(.parameterlllegal)
        }
        
        /// 列表搜索条件不合法。
        public static var searchCriteriaIllegal: InvalidParameter {
            InvalidParameter(.searchCriteriaIllegal)
        }
        
        /// 时间格式不合法。
        public static var timeFormatIllegal: InvalidParameter {
            InvalidParameter(.timeFormatIllegal)
        }
        
        /// 设定的用户过期时间不合法。
        public static var userExpirationTimeIllegal: InvalidParameter {
            InvalidParameter(.userExpirationTimeIllegal)
        }
        
        /// 用户ID参数为空。
        public static var userIDIsNull: InvalidParameter {
            InvalidParameter(.userIDIsNull)
        }
        
        /// 用户名参数为空。
        public static var userNameIsNull: InvalidParameter {
            InvalidParameter(.userNameIsNull)
        }
    }
}

extension TCEiamError.InvalidParameter: Equatable {
    public static func == (lhs: TCEiamError.InvalidParameter, rhs: TCEiamError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEiamError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEiamError.InvalidParameter {
    /// - Returns: ``TCEiamError`` that holds the same error and context.
    public func toEiamError() -> TCEiamError {
        guard let code = TCEiamError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEiamError(code, context: self.context)
    }
}

extension TCEiamError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
