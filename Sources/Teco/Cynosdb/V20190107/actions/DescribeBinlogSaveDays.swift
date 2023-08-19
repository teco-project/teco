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

extension Cynosdb {
    /// DescribeBinlogSaveDays请求参数结构体
    public struct DescribeBinlogSaveDaysRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeBinlogSaveDays返回参数结构体
    public struct DescribeBinlogSaveDaysResponse: TCResponse {
        /// Binlog保留天数
        public let binlogSaveDays: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case binlogSaveDays = "BinlogSaveDays"
            case requestId = "RequestId"
        }
    }

    /// 查询Binlog保留天数
    ///
    /// 此接口（DescribeBinlogSaveDays）用于查询集群的Binlog保留天数。
    @inlinable
    public func describeBinlogSaveDays(_ input: DescribeBinlogSaveDaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogSaveDaysResponse> {
        self.client.execute(action: "DescribeBinlogSaveDays", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Binlog保留天数
    ///
    /// 此接口（DescribeBinlogSaveDays）用于查询集群的Binlog保留天数。
    @inlinable
    public func describeBinlogSaveDays(_ input: DescribeBinlogSaveDaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogSaveDaysResponse {
        try await self.client.execute(action: "DescribeBinlogSaveDays", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Binlog保留天数
    ///
    /// 此接口（DescribeBinlogSaveDays）用于查询集群的Binlog保留天数。
    @inlinable
    public func describeBinlogSaveDays(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBinlogSaveDaysResponse> {
        self.describeBinlogSaveDays(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Binlog保留天数
    ///
    /// 此接口（DescribeBinlogSaveDays）用于查询集群的Binlog保留天数。
    @inlinable
    public func describeBinlogSaveDays(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBinlogSaveDaysResponse {
        try await self.describeBinlogSaveDays(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
