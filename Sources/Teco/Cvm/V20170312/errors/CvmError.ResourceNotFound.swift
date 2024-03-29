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

extension TCCvmError {
    public struct ResourceNotFound: TCCvmErrorType {
        enum Code: String {
            case hpcCluster = "ResourceNotFound.HpcCluster"
            case invalidPlacementSet = "ResourceNotFound.InvalidPlacementSet"
            case invalidZoneInstanceType = "ResourceNotFound.InvalidZoneInstanceType"
            case keyPairNotFound = "ResourceNotFound.KeyPairNotFound"
            case noDefaultCbs = "ResourceNotFound.NoDefaultCbs"
            case noDefaultCbsWithReason = "ResourceNotFound.NoDefaultCbsWithReason"
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

        /// 高性能计算集群不存在。
        public static var hpcCluster: ResourceNotFound {
            ResourceNotFound(.hpcCluster)
        }

        /// 指定的置放群组不存在。
        public static var invalidPlacementSet: ResourceNotFound {
            ResourceNotFound(.invalidPlacementSet)
        }

        /// 可用区不支持此机型。
        public static var invalidZoneInstanceType: ResourceNotFound {
            ResourceNotFound(.invalidZoneInstanceType)
        }

        /// 使用存在的密钥对ID。
        public static var keyPairNotFound: ResourceNotFound {
            ResourceNotFound(.keyPairNotFound)
        }

        /// 无可用的缺省类型的CBS资源。
        public static var noDefaultCbs: ResourceNotFound {
            ResourceNotFound(.noDefaultCbs)
        }

        /// 无可用的缺省类型的CBS资源。
        public static var noDefaultCbsWithReason: ResourceNotFound {
            ResourceNotFound(.noDefaultCbsWithReason)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .hpcCluster:
                code = .resourceNotFound_HpcCluster
            case .invalidPlacementSet:
                code = .resourceNotFound_InvalidPlacementSet
            case .invalidZoneInstanceType:
                code = .resourceNotFound_InvalidZoneInstanceType
            case .keyPairNotFound:
                code = .resourceNotFound_KeyPairNotFound
            case .noDefaultCbs:
                code = .resourceNotFound_NoDefaultCbs
            case .noDefaultCbsWithReason:
                code = .resourceNotFound_NoDefaultCbsWithReason
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
