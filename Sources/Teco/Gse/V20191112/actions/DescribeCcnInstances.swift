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

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// DescribeCcnInstances请求参数结构体
    public struct DescribeCcnInstancesRequest: TCRequest {
        /// 服务器舰队 Id
        public let fleetId: String?

        public init(fleetId: String? = nil) {
            self.fleetId = fleetId
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
        }
    }

    /// DescribeCcnInstances返回参数结构体
    public struct DescribeCcnInstancesResponse: TCResponse {
        /// 云联网实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ccnInstanceSets: [CcnInstanceSets]?

        /// 云联网实例个数，最小值为0
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccnInstanceSets = "CcnInstanceSets"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询云联网实例
    ///
    /// 本接口（DescribeCcnInstances）用于查询云联网实例。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeCcnInstances(_ input: DescribeCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnInstancesResponse> {
        fatalError("'DescribeCcnInstances' is no longer available.")
    }

    /// 查询云联网实例
    ///
    /// 本接口（DescribeCcnInstances）用于查询云联网实例。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeCcnInstances(_ input: DescribeCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnInstancesResponse {
        fatalError("'DescribeCcnInstances' is no longer available.")
    }

    /// 查询云联网实例
    ///
    /// 本接口（DescribeCcnInstances）用于查询云联网实例。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeCcnInstances(fleetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnInstancesResponse> {
        fatalError("'DescribeCcnInstances' is no longer available.")
    }

    /// 查询云联网实例
    ///
    /// 本接口（DescribeCcnInstances）用于查询云联网实例。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeCcnInstances(fleetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnInstancesResponse {
        fatalError("'DescribeCcnInstances' is no longer available.")
    }
}
