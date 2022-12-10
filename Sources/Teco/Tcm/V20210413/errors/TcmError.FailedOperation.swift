//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTcmError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case clusterNoEnoughResource = "FailedOperation.ClusterNoEnoughResource"
            case rbacForbidden = "FailedOperation.RBACForbidden"
            case other = "FailedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 集群资源不足。
        public static var clusterNoEnoughResource: FailedOperation {
            FailedOperation(.clusterNoEnoughResource)
        }
        
        /// Cluster RBAC权限限制。
        public static var rbacForbidden: FailedOperation {
            FailedOperation(.rbacForbidden)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCTcmError.FailedOperation: Equatable {
    public static func == (lhs: TCTcmError.FailedOperation, rhs: TCTcmError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcmError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcmError.FailedOperation {
    public func toTcmError() -> TCTcmError {
        guard let code = TCTcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcmError(code, context: self.context)
    }
}