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
    /// DescribeDisksDeniedActions请求参数结构体
    public struct DescribeDisksDeniedActionsRequest: TCRequestModel {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        public init(diskIds: [String]) {
            self.diskIds = diskIds
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
        }
    }

    /// DescribeDisksDeniedActions返回参数结构体
    public struct DescribeDisksDeniedActionsResponse: TCResponseModel {
        /// 云硬盘操作限制列表详细信息。
        public let diskDeniedActionSet: [DiskDeniedActions]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskDeniedActionSet = "DiskDeniedActionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询云硬盘操作限制列表信息
    ///
    /// 本接口（DescribeDisksDeniedActions）用于查询一个或多个云硬盘的操作限制列表信息。
    @inlinable
    public func describeDisksDeniedActions(_ input: DescribeDisksDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksDeniedActionsResponse> {
        self.client.execute(action: "DescribeDisksDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘操作限制列表信息
    ///
    /// 本接口（DescribeDisksDeniedActions）用于查询一个或多个云硬盘的操作限制列表信息。
    @inlinable
    public func describeDisksDeniedActions(_ input: DescribeDisksDeniedActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksDeniedActionsResponse {
        try await self.client.execute(action: "DescribeDisksDeniedActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云硬盘操作限制列表信息
    ///
    /// 本接口（DescribeDisksDeniedActions）用于查询一个或多个云硬盘的操作限制列表信息。
    @inlinable
    public func describeDisksDeniedActions(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisksDeniedActionsResponse> {
        self.describeDisksDeniedActions(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云硬盘操作限制列表信息
    ///
    /// 本接口（DescribeDisksDeniedActions）用于查询一个或多个云硬盘的操作限制列表信息。
    @inlinable
    public func describeDisksDeniedActions(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisksDeniedActionsResponse {
        try await self.describeDisksDeniedActions(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
