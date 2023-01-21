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

extension Dlc {
    /// AddDMSPartitions请求参数结构体
    public struct AddDMSPartitionsRequest: TCRequestModel {
        /// 分区
        public let partitions: [DMSPartition]?

        public init(partitions: [DMSPartition]? = nil) {
            self.partitions = partitions
        }

        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
        }
    }

    /// AddDMSPartitions返回参数结构体
    public struct AddDMSPartitionsResponse: TCResponseModel {
        /// 成功数量
        public let total: Int64

        /// 分区值
        public let partitions: [DMSPartition]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case partitions = "Partitions"
            case requestId = "RequestId"
        }
    }

    /// DMS元数据新增分区
    @inlinable
    public func addDMSPartitions(_ input: AddDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDMSPartitionsResponse> {
        self.client.execute(action: "AddDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据新增分区
    @inlinable
    public func addDMSPartitions(_ input: AddDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDMSPartitionsResponse {
        try await self.client.execute(action: "AddDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据新增分区
    @inlinable
    public func addDMSPartitions(partitions: [DMSPartition]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddDMSPartitionsResponse> {
        self.addDMSPartitions(AddDMSPartitionsRequest(partitions: partitions), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据新增分区
    @inlinable
    public func addDMSPartitions(partitions: [DMSPartition]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDMSPartitionsResponse {
        try await self.addDMSPartitions(AddDMSPartitionsRequest(partitions: partitions), region: region, logger: logger, on: eventLoop)
    }
}
