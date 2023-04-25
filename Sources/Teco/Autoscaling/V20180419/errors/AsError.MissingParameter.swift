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

extension TCAsError {
    public struct MissingParameter: TCAsErrorType {
        enum Code: String {
            case inScenario = "MissingParameter.InScenario"
            case instanceMarketOptions = "MissingParameter.InstanceMarketOptions"
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

        /// 在特定场景下缺少参数。
        public static var inScenario: MissingParameter {
            MissingParameter(.inScenario)
        }

        /// 竞价计费类型缺少对应的 InstanceMarketOptions 参数。
        public static var instanceMarketOptions: MissingParameter {
            MissingParameter(.instanceMarketOptions)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .inScenario:
                code = .missingParameter_InScenario
            case .instanceMarketOptions:
                code = .missingParameter_InstanceMarketOptions
            case .other:
                code = .missingParameter
            }
            return TCAsError(code, context: self.context)
        }
    }
}
