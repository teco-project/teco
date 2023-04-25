//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCCvmError {
    public struct MissingParameter: TCCvmErrorType {
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

        /// 缺少必要参数，请至少提供一个参数。
        public static var atLeastOne: MissingParameter {
            MissingParameter(.atLeastOne)
        }

        /// DPDK实例机型要求VPC网络
        public static var dpdkInstanceTypeRequiredVPC: MissingParameter {
            MissingParameter(.dpdkInstanceTypeRequiredVPC)
        }

        /// 该实例类型必须开启云监控服务
        public static var monitorService: MissingParameter {
            MissingParameter(.monitorService)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .atLeastOne:
                code = .missingParameter_AtLeastOne
            case .dpdkInstanceTypeRequiredVPC:
                code = .missingParameter_DPDKInstanceTypeRequiredVPC
            case .monitorService:
                code = .missingParameter_MonitorService
            case .other:
                code = .missingParameter
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
