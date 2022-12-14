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

extension Iotcloud {
    /// DescribeFirmwareTasks请求参数结构体
    public struct DescribeFirmwareTasksRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 固件版本号
        public let firmwareVersion: String

        /// 查询偏移量
        public let offset: UInt64

        /// 返回查询结果条数
        public let limit: UInt64

        /// 搜索过滤条件
        public let filters: [SearchKeyword]?

        public init(productId: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil) {
            self.productId = productId
            self.firmwareVersion = firmwareVersion
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case firmwareVersion = "FirmwareVersion"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeFirmwareTasks返回参数结构体
    public struct DescribeFirmwareTasksResponse: TCResponseModel {
        /// 固件升级任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfos: [FirmwareTaskInfo]?

        /// 固件升级任务总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskInfos = "TaskInfos"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(_ input: DescribeFirmwareTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFirmwareTasksResponse > {
        self.client.execute(action: "DescribeFirmwareTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(_ input: DescribeFirmwareTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTasksResponse {
        try await self.client.execute(action: "DescribeFirmwareTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(productId: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFirmwareTasksResponse > {
        self.describeFirmwareTasks(DescribeFirmwareTasksRequest(productId: productId, firmwareVersion: firmwareVersion, offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询固件升级任务列表
    @inlinable
    public func describeFirmwareTasks(productId: String, firmwareVersion: String, offset: UInt64, limit: UInt64, filters: [SearchKeyword]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareTasksResponse {
        try await self.describeFirmwareTasks(DescribeFirmwareTasksRequest(productId: productId, firmwareVersion: firmwareVersion, offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }
}
