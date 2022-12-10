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

extension TCBatchError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case computeEnv = "ResourceNotFound.ComputeEnv"
            case computeNode = "ResourceNotFound.ComputeNode"
            case job = "ResourceNotFound.Job"
            case task = "ResourceNotFound.Task"
            case taskInstance = "ResourceNotFound.TaskInstance"
            case taskTemplate = "ResourceNotFound.TaskTemplate"
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
        
        /// 指定计算环境不存在。
        public static var computeEnv: ResourceNotFound {
            ResourceNotFound(.computeEnv)
        }
        
        /// 指定计算节点不存在。
        public static var computeNode: ResourceNotFound {
            ResourceNotFound(.computeNode)
        }
        
        /// 指定作业不存在。
        public static var job: ResourceNotFound {
            ResourceNotFound(.job)
        }
        
        /// 指定作业任务不存在。
        public static var task: ResourceNotFound {
            ResourceNotFound(.task)
        }
        
        /// 指定任务实例不存在。
        public static var taskInstance: ResourceNotFound {
            ResourceNotFound(.taskInstance)
        }
        
        /// 指定任务模板ID不存在。
        public static var taskTemplate: ResourceNotFound {
            ResourceNotFound(.taskTemplate)
        }
    }
}

extension TCBatchError.ResourceNotFound: Equatable {
    public static func == (lhs: TCBatchError.ResourceNotFound, rhs: TCBatchError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBatchError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBatchError.ResourceNotFound {
    /// - Returns: ``TCBatchError`` that holds the same error and context.
    public func toBatchError() -> TCBatchError {
        guard let code = TCBatchError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCBatchError(code, context: self.context)
    }
}

extension TCBatchError.ResourceNotFound {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
