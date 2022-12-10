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

extension TCChdfsError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case accessGroupBound = "FailedOperation.AccessGroupBound"
            case fileSystemNotEmpty = "FailedOperation.FileSystemNotEmpty"
            case quotaLessThanCurrentUsed = "FailedOperation.QuotaLessThanCurrentUsed"
            case other = "FailedOperation"
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
        
        /// 权限组被绑定。
        ///
        /// 当前权限组先解绑关联的挂载点。
        public static var accessGroupBound: FailedOperation {
            FailedOperation(.accessGroupBound)
        }
        
        /// 文件系统非空。
        ///
        /// 先清空当前文件系统。
        public static var fileSystemNotEmpty: FailedOperation {
            FailedOperation(.fileSystemNotEmpty)
        }
        
        /// 修改的文件系统容量小于当前使用量。
        public static var quotaLessThanCurrentUsed: FailedOperation {
            FailedOperation(.quotaLessThanCurrentUsed)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCChdfsError.FailedOperation: Equatable {
    public static func == (lhs: TCChdfsError.FailedOperation, rhs: TCChdfsError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCChdfsError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCChdfsError.FailedOperation {
    /// - Returns: ``TCChdfsError`` that holds the same error and context.
    public func toChdfsError() -> TCChdfsError {
        guard let code = TCChdfsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCChdfsError(code, context: self.context)
    }
}

extension TCChdfsError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
