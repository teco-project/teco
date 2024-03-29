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

extension TCEmrError {
    public struct ResourceInsufficient: TCEmrErrorType {
        enum Code: String {
            case diskInsufficient = "ResourceInsufficient.DiskInsufficient"
            case instanceInsufficient = "ResourceInsufficient.InstanceInsufficient"
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

        /// 硬盘规格不满足。
        public static var diskInsufficient: ResourceInsufficient {
            ResourceInsufficient(.diskInsufficient)
        }

        /// 不支持或售罄的节点规格。
        public static var instanceInsufficient: ResourceInsufficient {
            ResourceInsufficient(.instanceInsufficient)
        }

        public func asEmrError() -> TCEmrError {
            let code: TCEmrError.Code
            switch self.error {
            case .diskInsufficient:
                code = .resourceInsufficient_DiskInsufficient
            case .instanceInsufficient:
                code = .resourceInsufficient_InstanceInsufficient
            }
            return TCEmrError(code, context: self.context)
        }
    }
}
