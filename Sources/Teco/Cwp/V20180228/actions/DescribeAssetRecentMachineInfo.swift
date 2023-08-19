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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cwp {
    /// DescribeAssetRecentMachineInfo请求参数结构体
    public struct DescribeAssetRecentMachineInfoRequest: TCRequest {
        /// 开始时间，如：2020-09-22
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 结束时间，如：2020-09-22
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        public init(beginDate: Date, endDate: Date) {
            self._beginDate = .init(wrappedValue: beginDate)
            self._endDate = .init(wrappedValue: endDate)
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeAssetRecentMachineInfo返回参数结构体
    public struct DescribeAssetRecentMachineInfoResponse: TCResponse {
        /// 总数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalList: [AssetKeyVal]?

        /// 在线数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveList: [AssetKeyVal]?

        /// 离线数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineList: [AssetKeyVal]?

        /// 风险数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskList: [AssetKeyVal]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalList = "TotalList"
            case liveList = "LiveList"
            case offlineList = "OfflineList"
            case riskList = "RiskList"
            case requestId = "RequestId"
        }
    }

    /// 获取主机概况趋势
    ///
    /// 获取主机最近趋势情况
    @inlinable
    public func describeAssetRecentMachineInfo(_ input: DescribeAssetRecentMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetRecentMachineInfoResponse> {
        self.client.execute(action: "DescribeAssetRecentMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主机概况趋势
    ///
    /// 获取主机最近趋势情况
    @inlinable
    public func describeAssetRecentMachineInfo(_ input: DescribeAssetRecentMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetRecentMachineInfoResponse {
        try await self.client.execute(action: "DescribeAssetRecentMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主机概况趋势
    ///
    /// 获取主机最近趋势情况
    @inlinable
    public func describeAssetRecentMachineInfo(beginDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetRecentMachineInfoResponse> {
        self.describeAssetRecentMachineInfo(.init(beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主机概况趋势
    ///
    /// 获取主机最近趋势情况
    @inlinable
    public func describeAssetRecentMachineInfo(beginDate: Date, endDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetRecentMachineInfoResponse {
        try await self.describeAssetRecentMachineInfo(.init(beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
