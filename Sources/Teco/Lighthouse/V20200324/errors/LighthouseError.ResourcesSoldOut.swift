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

extension TCLighthouseError {
    public struct ResourcesSoldOut: TCLighthouseErrorType {
        enum Code: String {
            case purchaseSourceHasNoBundleConfigs = "ResourcesSoldOut.PurchaseSourceHasNoBundleConfigs"
            case zonesHasNoBundleConfigs = "ResourcesSoldOut.ZonesHasNoBundleConfigs"
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

        /// 套餐无可用配置。
        ///
        /// 更换套餐。
        public static var purchaseSourceHasNoBundleConfigs: ResourcesSoldOut {
            ResourcesSoldOut(.purchaseSourceHasNoBundleConfigs)
        }

        /// 套餐无可用配置。
        ///
        /// 更换套餐。
        public static var zonesHasNoBundleConfigs: ResourcesSoldOut {
            ResourcesSoldOut(.zonesHasNoBundleConfigs)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .purchaseSourceHasNoBundleConfigs:
                code = .resourcesSoldOut_PurchaseSourceHasNoBundleConfigs
            case .zonesHasNoBundleConfigs:
                code = .resourcesSoldOut_ZonesHasNoBundleConfigs
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
