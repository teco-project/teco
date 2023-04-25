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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// DescribeFirmwareTaskStatistics请求参数结构体
    public struct DescribeFirmwareTaskStatisticsRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        public init(productID: String, firmwareVersion: String) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
        }
    }

    /// DescribeFirmwareTaskStatistics返回参数结构体
    public struct DescribeFirmwareTaskStatisticsResponse: TCResponseModel {
        /// 升级成功的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successTotal: UInt64?

        /// 升级失败的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failureTotal: UInt64?

        /// 正在升级的设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upgradingTotal: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successTotal = "SuccessTotal"
            case failureTotal = "FailureTotal"
            case upgradingTotal = "UpgradingTotal"
            case requestId = "RequestId"
        }
    }

    /// 查询固件升级任务统计信息
    ///
    /// 本接口用于查询固件升级任务统计信息
    @inlinable
    public func describeFirmwareTaskStatistics(_ input: DescribeFirmwareTaskStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskStatisticsResponse> {
        self.client.execute(action: "DescribeFirmwareTaskStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务统计信息
    ///
    /// 本接口用于查询固件升级任务统计信息
    @inlinable
    public func describeFirmwareTaskStatistics(_ input: DescribeFirmwareTaskStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskStatisticsResponse {
        try await self.client.execute(action: "DescribeFirmwareTaskStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务统计信息
    ///
    /// 本接口用于查询固件升级任务统计信息
    @inlinable
    public func describeFirmwareTaskStatistics(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskStatisticsResponse> {
        self.describeFirmwareTaskStatistics(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务统计信息
    ///
    /// 本接口用于查询固件升级任务统计信息
    @inlinable
    public func describeFirmwareTaskStatistics(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskStatisticsResponse {
        try await self.describeFirmwareTaskStatistics(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }
}
