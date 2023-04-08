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

extension TCEbError {
    public struct ResourceUnavailable: TCEbErrorType {
        enum Code: String {
            case connection = "ResourceUnavailable.Connection"
            case esUnhealth = "ResourceUnavailable.ESUnhealth"
            case target = "ResourceUnavailable.Target"
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

        /// 连接器创建失败，当前资源不可用。
        public static var connection: ResourceUnavailable {
            ResourceUnavailable(.connection)
        }

        /// ES集群状态异常。
        public static var esUnhealth: ResourceUnavailable {
            ResourceUnavailable(.esUnhealth)
        }

        /// 投递目标创建失败，当前资源不可用。
        public static var target: ResourceUnavailable {
            ResourceUnavailable(.target)
        }

        public func asEbError() -> TCEbError {
            let code: TCEbError.Code
            switch self.error {
            case .connection:
                code = .resourceUnavailable_Connection
            case .esUnhealth:
                code = .resourceUnavailable_ESUnhealth
            case .target:
                code = .resourceUnavailable_Target
            }
            return TCEbError(code, context: self.context)
        }
    }
}
