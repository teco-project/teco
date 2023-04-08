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

extension Dlc {
    /// AlterDMSPartition请求参数结构体
    public struct AlterDMSPartitionRequest: TCRequestModel {
        /// 当前名称，变更前db名称
        public let currentDbName: String

        /// 当前名称，变更前table名称
        public let currentTableName: String

        /// 当前名称，变更前Part名称
        public let currentValues: String

        /// 分区
        public let partition: DMSPartition?

        public init(currentDbName: String, currentTableName: String, currentValues: String, partition: DMSPartition? = nil) {
            self.currentDbName = currentDbName
            self.currentTableName = currentTableName
            self.currentValues = currentValues
            self.partition = partition
        }

        enum CodingKeys: String, CodingKey {
            case currentDbName = "CurrentDbName"
            case currentTableName = "CurrentTableName"
            case currentValues = "CurrentValues"
            case partition = "Partition"
        }
    }

    /// AlterDMSPartition返回参数结构体
    public struct AlterDMSPartitionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// DMS元数据更新分区
    @inlinable @discardableResult
    public func alterDMSPartition(_ input: AlterDMSPartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AlterDMSPartitionResponse> {
        self.client.execute(action: "AlterDMSPartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据更新分区
    @inlinable @discardableResult
    public func alterDMSPartition(_ input: AlterDMSPartitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AlterDMSPartitionResponse {
        try await self.client.execute(action: "AlterDMSPartition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据更新分区
    @inlinable @discardableResult
    public func alterDMSPartition(currentDbName: String, currentTableName: String, currentValues: String, partition: DMSPartition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AlterDMSPartitionResponse> {
        self.alterDMSPartition(.init(currentDbName: currentDbName, currentTableName: currentTableName, currentValues: currentValues, partition: partition), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据更新分区
    @inlinable @discardableResult
    public func alterDMSPartition(currentDbName: String, currentTableName: String, currentValues: String, partition: DMSPartition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AlterDMSPartitionResponse {
        try await self.alterDMSPartition(.init(currentDbName: currentDbName, currentTableName: currentTableName, currentValues: currentValues, partition: partition), region: region, logger: logger, on: eventLoop)
    }
}
