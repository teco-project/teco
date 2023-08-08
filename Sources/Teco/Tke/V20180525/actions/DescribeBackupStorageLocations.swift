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

extension Tke {
    /// DescribeBackupStorageLocations请求参数结构体
    public struct DescribeBackupStorageLocationsRequest: TCRequestModel {
        /// 多个备份仓库名称，如果不填写，默认返回当前地域所有存储仓库名称
        public let names: [String]?

        public init(names: [String]? = nil) {
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case names = "Names"
        }
    }

    /// DescribeBackupStorageLocations返回参数结构体
    public struct DescribeBackupStorageLocationsResponse: TCResponseModel {
        /// 详细备份仓库信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupStorageLocationSet: [BackupStorageLocation]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupStorageLocationSet = "BackupStorageLocationSet"
            case requestId = "RequestId"
        }
    }

    /// 查询备份仓库
    ///
    /// 查询备份仓库信息
    @inlinable
    public func describeBackupStorageLocations(_ input: DescribeBackupStorageLocationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupStorageLocationsResponse> {
        self.client.execute(action: "DescribeBackupStorageLocations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份仓库
    ///
    /// 查询备份仓库信息
    @inlinable
    public func describeBackupStorageLocations(_ input: DescribeBackupStorageLocationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupStorageLocationsResponse {
        try await self.client.execute(action: "DescribeBackupStorageLocations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份仓库
    ///
    /// 查询备份仓库信息
    @inlinable
    public func describeBackupStorageLocations(names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupStorageLocationsResponse> {
        self.describeBackupStorageLocations(.init(names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份仓库
    ///
    /// 查询备份仓库信息
    @inlinable
    public func describeBackupStorageLocations(names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupStorageLocationsResponse {
        try await self.describeBackupStorageLocations(.init(names: names), region: region, logger: logger, on: eventLoop)
    }
}