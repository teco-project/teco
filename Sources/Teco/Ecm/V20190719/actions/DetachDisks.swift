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

extension Ecm {
    /// DetachDisks请求参数结构体
    public struct DetachDisksRequest: TCRequestModel {
        /// 将要卸载的云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询，单次请求最多可卸载10块弹性云盘。
        public let diskIds: [String]

        /// 对于非共享型云盘，会忽略该参数；对于共享型云盘，该参数表示要从哪个CVM实例上卸载云盘。
        public let instanceId: String?

        public init(diskIds: [String], instanceId: String? = nil) {
            self.diskIds = diskIds
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case instanceId = "InstanceId"
        }
    }

    /// DetachDisks返回参数结构体
    public struct DetachDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载云硬盘。
    ///
    /// * 支持批量操作，卸载挂载在同一主机上的多块云盘。如果多块云盘中存在不允许卸载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当请求成功返回时，云盘并未立即从主机卸载，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHED”变为“UNATTACHED”，则为卸载成功。
    @inlinable @discardableResult
    public func detachDisks(_ input: DetachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachDisksResponse> {
        self.client.execute(action: "DetachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载云硬盘。
    ///
    /// * 支持批量操作，卸载挂载在同一主机上的多块云盘。如果多块云盘中存在不允许卸载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当请求成功返回时，云盘并未立即从主机卸载，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHED”变为“UNATTACHED”，则为卸载成功。
    @inlinable @discardableResult
    public func detachDisks(_ input: DetachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachDisksResponse {
        try await self.client.execute(action: "DetachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载云硬盘。
    ///
    /// * 支持批量操作，卸载挂载在同一主机上的多块云盘。如果多块云盘中存在不允许卸载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当请求成功返回时，云盘并未立即从主机卸载，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHED”变为“UNATTACHED”，则为卸载成功。
    @inlinable @discardableResult
    public func detachDisks(diskIds: [String], instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachDisksResponse> {
        self.detachDisks(.init(diskIds: diskIds, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载云硬盘。
    ///
    /// * 支持批量操作，卸载挂载在同一主机上的多块云盘。如果多块云盘中存在不允许卸载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当请求成功返回时，云盘并未立即从主机卸载，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHED”变为“UNATTACHED”，则为卸载成功。
    @inlinable @discardableResult
    public func detachDisks(diskIds: [String], instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachDisksResponse {
        try await self.detachDisks(.init(diskIds: diskIds, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
