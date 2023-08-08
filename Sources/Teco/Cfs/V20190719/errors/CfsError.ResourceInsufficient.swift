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

extension TCCfsError {
    public struct ResourceInsufficient: TCCfsErrorType {
        enum Code: String {
            case fileSystemLimitExceeded = "ResourceInsufficient.FileSystemLimitExceeded"
            case pgroupNumberLimitExceeded = "ResourceInsufficient.PgroupNumberLimitExceeded"
            case regionSoldOut = "ResourceInsufficient.RegionSoldOut"
            case ruleLimitExceeded = "ResourceInsufficient.RuleLimitExceeded"
            case snapshotSizeLimitExceeded = "ResourceInsufficient.SnapshotSizeLimitExceeded"
            case subnetIpAllOccupied = "ResourceInsufficient.SubnetIpAllOccupied"
            case tagLimitExceeded = "ResourceInsufficient.TagLimitExceeded"
            case tagQuotasExceeded = "ResourceInsufficient.TagQuotasExceeded"
            case turboSpecialCapacityFileSystemCountLimit = "ResourceInsufficient.TurboSpecialCapacityFileSystemCountLimit"
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

        /// 文件系统数量达到上限。
        public static var fileSystemLimitExceeded: ResourceInsufficient {
            ResourceInsufficient(.fileSystemLimitExceeded)
        }

        /// 权限组数量达到上限。
        public static var pgroupNumberLimitExceeded: ResourceInsufficient {
            ResourceInsufficient(.pgroupNumberLimitExceeded)
        }

        /// 区域资源售罄。
        public static var regionSoldOut: ResourceInsufficient {
            ResourceInsufficient(.regionSoldOut)
        }

        /// 规则条数超过上限。
        public static var ruleLimitExceeded: ResourceInsufficient {
            ResourceInsufficient(.ruleLimitExceeded)
        }

        /// 文件系统过大，不支持快照
        public static var snapshotSizeLimitExceeded: ResourceInsufficient {
            ResourceInsufficient(.snapshotSizeLimitExceeded)
        }

        /// 该子网下已无可用IP。
        public static var subnetIpAllOccupied: ResourceInsufficient {
            ResourceInsufficient(.subnetIpAllOccupied)
        }

        /// 该资源的标签个数达到最大限制。
        public static var tagLimitExceeded: ResourceInsufficient {
            ResourceInsufficient(.tagLimitExceeded)
        }

        /// 标签限额不足。
        public static var tagQuotasExceeded: ResourceInsufficient {
            ResourceInsufficient(.tagQuotasExceeded)
        }

        /// Turbo类型特殊容量文件系统数量限制
        ///
        /// 扩容或者删除已有的特殊容量文件系统
        public static var turboSpecialCapacityFileSystemCountLimit: ResourceInsufficient {
            ResourceInsufficient(.turboSpecialCapacityFileSystemCountLimit)
        }

        public func asCfsError() -> TCCfsError {
            let code: TCCfsError.Code
            switch self.error {
            case .fileSystemLimitExceeded:
                code = .resourceInsufficient_FileSystemLimitExceeded
            case .pgroupNumberLimitExceeded:
                code = .resourceInsufficient_PgroupNumberLimitExceeded
            case .regionSoldOut:
                code = .resourceInsufficient_RegionSoldOut
            case .ruleLimitExceeded:
                code = .resourceInsufficient_RuleLimitExceeded
            case .snapshotSizeLimitExceeded:
                code = .resourceInsufficient_SnapshotSizeLimitExceeded
            case .subnetIpAllOccupied:
                code = .resourceInsufficient_SubnetIpAllOccupied
            case .tagLimitExceeded:
                code = .resourceInsufficient_TagLimitExceeded
            case .tagQuotasExceeded:
                code = .resourceInsufficient_TagQuotasExceeded
            case .turboSpecialCapacityFileSystemCountLimit:
                code = .resourceInsufficient_TurboSpecialCapacityFileSystemCountLimit
            }
            return TCCfsError(code, context: self.context)
        }
    }
}
