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

extension TCCvmError {
    public struct MissingParameter: TCErrorType {
        enum Code: String {
            case atLeastOne = "MissingParameter.AtLeastOne"
            case dpdkInstanceTypeRequiredVPC = "MissingParameter.DPDKInstanceTypeRequiredVPC"
            case monitorService = "MissingParameter.MonitorService"
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
        
        /// 缺少必要参数，请至少提供一个参数。
        public static var atLeastOne: MissingParameter {
            MissingParameter(.atLeastOne)
        }
        
        /// DPDK实例机型要求VPC网络
        ///
        /// 无
        public static var dpdkInstanceTypeRequiredVPC: MissingParameter {
            MissingParameter(.dpdkInstanceTypeRequiredVPC)
        }
        
        /// 该实例类型必须开启云监控服务
        ///
        /// 无
        public static var monitorService: MissingParameter {
            MissingParameter(.monitorService)
        }
        
        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }
    }
}

extension TCCvmError.MissingParameter: Equatable {
    public static func == (lhs: TCCvmError.MissingParameter, rhs: TCCvmError.MissingParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.MissingParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.MissingParameter {
    /// - Returns: ``TCCvmError`` that holds the same error and context.
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}

extension TCCvmError.MissingParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
