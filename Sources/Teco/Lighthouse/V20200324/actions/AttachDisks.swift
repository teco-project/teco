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
    /// AttachDisks请求参数结构体
    public struct AttachDisksRequest: TCRequestModel {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        /// 实例ID。
        public let instanceId: String

        /// 续费标识。
        public let renewFlag: String?

        public init(diskIds: [String], instanceId: String, renewFlag: String? = nil) {
            self.diskIds = diskIds
            self.instanceId = instanceId
            self.renewFlag = renewFlag
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case instanceId = "InstanceId"
            case renewFlag = "RenewFlag"
        }
    }

    /// AttachDisks返回参数结构体
    public struct AttachDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载一个或多个云硬盘。
    @inlinable @discardableResult
    public func attachDisks(_ input: AttachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachDisksResponse> {
        self.client.execute(action: "AttachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载一个或多个云硬盘。
    @inlinable @discardableResult
    public func attachDisks(_ input: AttachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachDisksResponse {
        try await self.client.execute(action: "AttachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载一个或多个云硬盘。
    @inlinable @discardableResult
    public func attachDisks(diskIds: [String], instanceId: String, renewFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachDisksResponse> {
        self.attachDisks(AttachDisksRequest(diskIds: diskIds, instanceId: instanceId, renewFlag: renewFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载一个或多个云硬盘。
    @inlinable @discardableResult
    public func attachDisks(diskIds: [String], instanceId: String, renewFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachDisksResponse {
        try await self.attachDisks(AttachDisksRequest(diskIds: diskIds, instanceId: instanceId, renewFlag: renewFlag), region: region, logger: logger, on: eventLoop)
    }
}
