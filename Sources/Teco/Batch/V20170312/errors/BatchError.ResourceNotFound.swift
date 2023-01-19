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

extension TCBatchError {
    public struct ResourceNotFound: TCBatchErrorType {
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

        public func asBatchError() -> TCBatchError {
            let code: TCBatchError.Code
            switch self.error {
            case .computeEnv:
                code = .resourceNotFound_ComputeEnv
            case .computeNode:
                code = .resourceNotFound_ComputeNode
            case .job:
                code = .resourceNotFound_Job
            case .task:
                code = .resourceNotFound_Task
            case .taskInstance:
                code = .resourceNotFound_TaskInstance
            case .taskTemplate:
                code = .resourceNotFound_TaskTemplate
            }
            return TCBatchError(code, context: self.context)
        }
    }
}
