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

extension TCTeoError {
    public struct ResourcesSoldOut: TCTeoErrorType {
        enum Code: String {
            case l7LackOfResources = "ResourcesSoldOut.L7LackOfResources"
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

        /// 资源售卖火爆，已售罄，正在加紧补货中，当前无法新增域名，请您耐心等待。
        public static var l7LackOfResources: ResourcesSoldOut {
            ResourcesSoldOut(.l7LackOfResources)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .l7LackOfResources:
                code = .resourcesSoldOut_L7LackOfResources
            }
            return TCTeoError(code, context: self.context)
        }
    }
}