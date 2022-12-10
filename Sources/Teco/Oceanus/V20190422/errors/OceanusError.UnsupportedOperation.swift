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

extension TCOceanusError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case invalidCheckpointIntervalError = "UnsupportedOperation.InvalidCheckpointIntervalError"
            case noPermissionAccess = "UnsupportedOperation.NoPermissionAccess"
            case unsupportedStartMode = "UnsupportedOperation.UnsupportedStartMode"
            case other = "UnsupportedOperation"
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
        
        /// Checkpoint 时间间隔，错误。
        public static var invalidCheckpointIntervalError: UnsupportedOperation {
            UnsupportedOperation(.invalidCheckpointIntervalError)
        }
        
        /// 权限拦截,没有进入权限。
        public static var noPermissionAccess: UnsupportedOperation {
            UnsupportedOperation(.noPermissionAccess)
        }
        
        /// 不支持的启动模式。
        public static var unsupportedStartMode: UnsupportedOperation {
            UnsupportedOperation(.unsupportedStartMode)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCOceanusError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCOceanusError.UnsupportedOperation, rhs: TCOceanusError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOceanusError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCOceanusError.UnsupportedOperation {
    public func toOceanusError() -> TCOceanusError {
        guard let code = TCOceanusError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCOceanusError(code, context: self.context)
    }
}