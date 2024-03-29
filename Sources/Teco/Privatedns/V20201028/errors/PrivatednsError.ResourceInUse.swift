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

import TecoCore

extension TCPrivatednsError {
    public struct ResourceInUse: TCPrivatednsErrorType {
        enum Code: String {
            case zoneBindForwardRule = "ResourceInUse.ZoneBindForwardRule"
            case other = "ResourceInUse"
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

        /// 当前私有域已转发至其他DNS服务。
        ///
        /// 当前私有域已转发至其他DNS服务，如需删除请先解绑规则。
        public static var zoneBindForwardRule: ResourceInUse {
            ResourceInUse(.zoneBindForwardRule)
        }

        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }

        public func asPrivatednsError() -> TCPrivatednsError {
            let code: TCPrivatednsError.Code
            switch self.error {
            case .zoneBindForwardRule:
                code = .resourceInUse_ZoneBindForwardRule
            case .other:
                code = .resourceInUse
            }
            return TCPrivatednsError(code, context: self.context)
        }
    }
}
