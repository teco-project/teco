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

extension Mariadb {
    /// DescribeBackupTime请求参数结构体
    public struct DescribeBackupTimeRequest: TCRequestModel {
        /// 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeBackupTime返回参数结构体
    public struct DescribeBackupTimeResponse: TCResponseModel {
        /// 返回的配置数量
        public let totalCount: Int64

        /// 实例备份时间配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DBBackupTimeConfig]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询备份时间
    ///
    /// 本接口（DescribeBackupTime）用于获取云数据库的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func describeBackupTime(_ input: DescribeBackupTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupTimeResponse> {
        self.client.execute(action: "DescribeBackupTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份时间
    ///
    /// 本接口（DescribeBackupTime）用于获取云数据库的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func describeBackupTime(_ input: DescribeBackupTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupTimeResponse {
        try await self.client.execute(action: "DescribeBackupTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份时间
    ///
    /// 本接口（DescribeBackupTime）用于获取云数据库的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func describeBackupTime(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupTimeResponse> {
        self.describeBackupTime(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份时间
    ///
    /// 本接口（DescribeBackupTime）用于获取云数据库的备份时间。后台系统将根据此配置定期进行实例备份。
    @inlinable
    public func describeBackupTime(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupTimeResponse {
        try await self.describeBackupTime(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
