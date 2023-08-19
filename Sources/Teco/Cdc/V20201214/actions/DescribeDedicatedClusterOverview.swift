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

extension Cdc {
    /// DescribeDedicatedClusterOverview请求参数结构体
    public struct DescribeDedicatedClusterOverviewRequest: TCRequest {
        /// 集群id
        public let dedicatedClusterId: String

        public init(dedicatedClusterId: String) {
            self.dedicatedClusterId = dedicatedClusterId
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
        }
    }

    /// DescribeDedicatedClusterOverview返回参数结构体
    public struct DescribeDedicatedClusterOverviewResponse: TCResponse {
        /// 云服务器数量
        public let cvmCount: UInt64

        /// 宿主机数量
        public let hostCount: UInt64

        /// vpn通道状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpnConnectionState: String?

        /// vpn网关监控数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpngwBandwidthData: VpngwBandwidthData?

        /// 本地网关信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let localNetInfo: LocalNetInfo?

        /// vpn网关通道监控数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpnConnectionBandwidthData: [VpngwBandwidthData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cvmCount = "CvmCount"
            case hostCount = "HostCount"
            case vpnConnectionState = "VpnConnectionState"
            case vpngwBandwidthData = "VpngwBandwidthData"
            case localNetInfo = "LocalNetInfo"
            case vpnConnectionBandwidthData = "VpnConnectionBandwidthData"
            case requestId = "RequestId"
        }
    }

    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(_ input: DescribeDedicatedClusterOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterOverviewResponse> {
        self.client.execute(action: "DescribeDedicatedClusterOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(_ input: DescribeDedicatedClusterOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterOverviewResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(dedicatedClusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterOverviewResponse> {
        self.describeDedicatedClusterOverview(.init(dedicatedClusterId: dedicatedClusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 专用集群概览信息
    @inlinable
    public func describeDedicatedClusterOverview(dedicatedClusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterOverviewResponse {
        try await self.describeDedicatedClusterOverview(.init(dedicatedClusterId: dedicatedClusterId), region: region, logger: logger, on: eventLoop)
    }
}
