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

extension TCTioneError {
    public struct OperationDenied: TCErrorType {
        enum Code: String {
            case balanceInsufficient = "OperationDenied.BalanceInsufficient"
            case miyingBalanceInsufficient = "OperationDenied.MIYINGBalanceInsufficient"
            case networkCidrIllegal = "OperationDenied.NetworkCidrIllegal"
            case whitelistQuotaExceed = "OperationDenied.WhitelistQuotaExceed"
            case other = "OperationDenied"
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
        
        /// 余额不足，创建/更新失败。
        ///
        /// 请充值并查看服务使用的冻结规则
        public static var balanceInsufficient: OperationDenied {
            OperationDenied(.balanceInsufficient)
        }
        
        public static var miyingBalanceInsufficient: OperationDenied {
            OperationDenied(.miyingBalanceInsufficient)
        }
        
        public static var networkCidrIllegal: OperationDenied {
            OperationDenied(.networkCidrIllegal)
        }
        
        /// 白名单免费配额不足。
        public static var whitelistQuotaExceed: OperationDenied {
            OperationDenied(.whitelistQuotaExceed)
        }
        
        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }
    }
}

extension TCTioneError.OperationDenied: Equatable {
    public static func == (lhs: TCTioneError.OperationDenied, rhs: TCTioneError.OperationDenied) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTioneError.OperationDenied: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTioneError.OperationDenied {
    /// - Returns: ``TCTioneError`` that holds the same error and context.
    public func toTioneError() -> TCTioneError {
        guard let code = TCTioneError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTioneError(code, context: self.context)
    }
}

extension TCTioneError.OperationDenied {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
