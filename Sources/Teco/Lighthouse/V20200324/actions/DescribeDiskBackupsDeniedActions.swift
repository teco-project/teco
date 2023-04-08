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

extension Lighthouse {
    /// DescribeDiskBackupsDeniedActions请求参数结构体
    public struct DescribeDiskBackupsDeniedActionsRequest: TCRequestModel {
        /// 云硬盘备份点 ID 列表, 可通过 DescribeDiskBackups 接口查询。
        public let diskBackupIds: [String]

        public init(diskBackupIds: [String]) {
            self.diskBackupIds = diskBackupIds
        }

        enum CodingKeys: String, CodingKey {
            case diskBackupIds = "DiskBackupIds"
        }
    }

    /// DescribeDiskBackupsDeniedActions返回参数结构体
    public struct DescribeDiskBackupsDeniedActionsResponse: TCResponseModel {
        /// 云硬盘备份点操作限制列表详细信息。
        public let diskBackupDeniedActionSet: [DiskBackupDeniedActions]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskBackupDeniedActionSet = "DiskBackupDeniedActionSet"
            case requestId = "RequestId"
        }
    }

    /// 查看云硬盘备份点操作限制列表
    ///
    /// 本接口（DescribeDiskBackupsDeniedActions）用于查询一个或多个云硬盘备份点的操作限制列表信息。
    @inlinable
    public func describeDiskBackupsDeniedActions(_ input: DescribeDiskBackupsDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskBackupsDeniedActionsResponse> {
        self.client.execute(action: "DescribeDiskBackupsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘备份点操作限制列表
    ///
    /// 本接口（DescribeDiskBackupsDeniedActions）用于查询一个或多个云硬盘备份点的操作限制列表信息。
    @inlinable
    public func describeDiskBackupsDeniedActions(_ input: DescribeDiskBackupsDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskBackupsDeniedActionsResponse {
        try await self.client.execute(action: "DescribeDiskBackupsDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看云硬盘备份点操作限制列表
    ///
    /// 本接口（DescribeDiskBackupsDeniedActions）用于查询一个或多个云硬盘备份点的操作限制列表信息。
    @inlinable
    public func describeDiskBackupsDeniedActions(diskBackupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskBackupsDeniedActionsResponse> {
        self.describeDiskBackupsDeniedActions(.init(diskBackupIds: diskBackupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘备份点操作限制列表
    ///
    /// 本接口（DescribeDiskBackupsDeniedActions）用于查询一个或多个云硬盘备份点的操作限制列表信息。
    @inlinable
    public func describeDiskBackupsDeniedActions(diskBackupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskBackupsDeniedActionsResponse {
        try await self.describeDiskBackupsDeniedActions(.init(diskBackupIds: diskBackupIds), region: region, logger: logger, on: eventLoop)
    }
}
