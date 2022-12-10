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

extension TCCloudauditError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case createBucketFail = "FailedOperation.CreateBucketFail"
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
        
        /// 创建COS存储桶失败
        public static var createBucketFail: FailedOperation {
            FailedOperation(.createBucketFail)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCCloudauditError.FailedOperation: Equatable {
    public static func == (lhs: TCCloudauditError.FailedOperation, rhs: TCCloudauditError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCloudauditError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCloudauditError.FailedOperation {
    public func toCloudauditError() -> TCCloudauditError {
        guard let code = TCCloudauditError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCloudauditError(code, context: self.context)
    }
}