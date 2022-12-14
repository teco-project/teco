//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdc {
    /// DescribeDedicatedClusterHosts请求参数结构体
    public struct DescribeDedicatedClusterHostsRequest: TCRequestModel {
        /// 集群id
        public let dedicatedClusterId: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20
        public let limit: UInt64?

        public init(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.dedicatedClusterId = dedicatedClusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeDedicatedClusterHosts返回参数结构体
    public struct DescribeDedicatedClusterHostsResponse: TCResponseModel {
        /// 宿主机信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostInfoSet: [HostInfo]?

        /// 宿主机总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostInfoSet = "HostInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(_ input: DescribeDedicatedClusterHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterHostsResponse > {
        self.client.execute(action: "DescribeDedicatedClusterHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(_ input: DescribeDedicatedClusterHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostsResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterHostsResponse > {
        self.describeDedicatedClusterHosts(DescribeDedicatedClusterHostsRequest(dedicatedClusterId: dedicatedClusterId, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostsResponse {
        try await self.describeDedicatedClusterHosts(DescribeDedicatedClusterHostsRequest(dedicatedClusterId: dedicatedClusterId, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
