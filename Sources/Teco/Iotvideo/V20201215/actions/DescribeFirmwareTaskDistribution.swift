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

extension Iotvideo {
    /// DescribeFirmwareTaskDistribution请求参数结构体
    public struct DescribeFirmwareTaskDistributionRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 固件升级任务ID
        public let taskId: UInt64

        public init(productID: String, firmwareVersion: String, taskId: UInt64) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
            case taskId = "TaskId"
        }
    }

    /// DescribeFirmwareTaskDistribution返回参数结构体
    public struct DescribeFirmwareTaskDistributionResponse: TCResponseModel {
        /// 固件升级任务状态分布信息
        public let statusInfos: [StatusStatistic]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case statusInfos = "StatusInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询固件升级任务状态分布
    ///
    /// 本接口用于查询固件升级任务状态分布
    @inlinable
    public func describeFirmwareTaskDistribution(_ input: DescribeFirmwareTaskDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskDistributionResponse> {
        self.client.execute(action: "DescribeFirmwareTaskDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务状态分布
    ///
    /// 本接口用于查询固件升级任务状态分布
    @inlinable
    public func describeFirmwareTaskDistribution(_ input: DescribeFirmwareTaskDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskDistributionResponse {
        try await self.client.execute(action: "DescribeFirmwareTaskDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务状态分布
    ///
    /// 本接口用于查询固件升级任务状态分布
    @inlinable
    public func describeFirmwareTaskDistribution(productID: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareTaskDistributionResponse> {
        let input = DescribeFirmwareTaskDistributionRequest(productID: productID, firmwareVersion: firmwareVersion, taskId: taskId)
        return self.client.execute(action: "DescribeFirmwareTaskDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务状态分布
    ///
    /// 本接口用于查询固件升级任务状态分布
    @inlinable
    public func describeFirmwareTaskDistribution(productID: String, firmwareVersion: String, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTaskDistributionResponse {
        let input = DescribeFirmwareTaskDistributionRequest(productID: productID, firmwareVersion: firmwareVersion, taskId: taskId)
        return try await self.client.execute(action: "DescribeFirmwareTaskDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
