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

extension TCBatchError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case computeEnvQuota = "LimitExceeded.ComputeEnvQuota"
            case cpuQuota = "LimitExceeded.CpuQuota"
            case jobQuota = "LimitExceeded.JobQuota"
            case taskTemplateQuota = "LimitExceeded.TaskTemplateQuota"
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
        
        /// 计算环境配额不足。
        public static var computeEnvQuota: LimitExceeded {
            LimitExceeded(.computeEnvQuota)
        }
        
        /// CPU配额不足。
        public static var cpuQuota: LimitExceeded {
            LimitExceeded(.cpuQuota)
        }
        
        /// 作业配额不足。
        public static var jobQuota: LimitExceeded {
            LimitExceeded(.jobQuota)
        }
        
        /// 任务模板配额不足。
        public static var taskTemplateQuota: LimitExceeded {
            LimitExceeded(.taskTemplateQuota)
        }
    }
}

extension TCBatchError.LimitExceeded: Equatable {
    public static func == (lhs: TCBatchError.LimitExceeded, rhs: TCBatchError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBatchError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBatchError.LimitExceeded {
    public func toBatchError() -> TCBatchError {
        guard let code = TCBatchError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCBatchError(code, context: self.context)
    }
}