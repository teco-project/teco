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

extension TCTkeError {
    public struct UnsupportedOperation: TCTkeErrorType {
        enum Code: String {
            case caEnableFailed = "UnsupportedOperation.CaEnableFailed"
            case clusterNotSuitAddClusterCIDR = "UnsupportedOperation.ClusterNotSuitAddClusterCIDR"
            case clusterNotSuitEnableVPCCNI = "UnsupportedOperation.ClusterNotSuitEnableVPCCNI"
            case notInWhitelist = "UnsupportedOperation.NotInWhitelist"
            case notSupportInstallVirtualKubelet = "UnsupportedOperation.NotSupportInstallVirtualKubelet"
            case other = "UnsupportedOperation"
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

        /// AS伸缩关闭导致无法开启CA。
        ///
        /// 如果需要开启伸缩(CA)功能，请打开对应伸缩组的伸缩开关，重新操作即可
        public static var caEnableFailed: UnsupportedOperation {
            UnsupportedOperation(.caEnableFailed)
        }

        /// 集群不支持添加 ClusterCIDR。
        public static var clusterNotSuitAddClusterCIDR: UnsupportedOperation {
            UnsupportedOperation(.clusterNotSuitAddClusterCIDR)
        }

        /// 集群不支持开启 VPC-CNI 模式。
        public static var clusterNotSuitEnableVPCCNI: UnsupportedOperation {
            UnsupportedOperation(.clusterNotSuitEnableVPCCNI)
        }

        /// 非白名单用户。
        public static var notInWhitelist: UnsupportedOperation {
            UnsupportedOperation(.notInWhitelist)
        }

        /// 不支持安装虚拟节点。
        ///
        /// 请检查集群版本是否满足安装虚拟节点条件。
        public static var notSupportInstallVirtualKubelet: UnsupportedOperation {
            UnsupportedOperation(.notSupportInstallVirtualKubelet)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .caEnableFailed:
                code = .unsupportedOperation_CaEnableFailed
            case .clusterNotSuitAddClusterCIDR:
                code = .unsupportedOperation_ClusterNotSuitAddClusterCIDR
            case .clusterNotSuitEnableVPCCNI:
                code = .unsupportedOperation_ClusterNotSuitEnableVPCCNI
            case .notInWhitelist:
                code = .unsupportedOperation_NotInWhitelist
            case .notSupportInstallVirtualKubelet:
                code = .unsupportedOperation_NotSupportInstallVirtualKubelet
            case .other:
                code = .unsupportedOperation
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
