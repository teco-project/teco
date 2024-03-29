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

extension Ecm {
    /// AttachDisks请求参数结构体
    public struct AttachDisksRequest: TCRequest {
        /// 云服务器实例ID。云盘将被挂载到此云服务器上，通过[DescribeInstances](/document/product/213/15728)接口查询。
        public let instanceId: String

        /// 将要被挂载的弹性云盘ID。通过[DescribeDisks](/document/product/362/16315)接口查询。单次最多可挂载10块弹性云盘。
        public let diskIds: [String]

        /// 可选参数，不传该参数则仅执行挂载操作。传入`True`时，会在挂载成功后将云硬盘设置为随云主机销毁模式，仅对按量计费云硬盘有效。
        public let deleteWithInstance: Bool?

        /// 可选参数，用于控制云盘挂载时使用的挂载模式，目前仅对黑石裸金属机型有效。取值范围：
        ///
        /// - PF
        /// - VF
        public let attachMode: String?

        public init(instanceId: String, diskIds: [String], deleteWithInstance: Bool? = nil, attachMode: String? = nil) {
            self.instanceId = instanceId
            self.diskIds = diskIds
            self.deleteWithInstance = deleteWithInstance
            self.attachMode = attachMode
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case diskIds = "DiskIds"
            case deleteWithInstance = "DeleteWithInstance"
            case attachMode = "AttachMode"
        }
    }

    /// AttachDisks返回参数结构体
    public struct AttachDisksResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载云硬盘。
    ///
    /// * 支持批量操作，将多块云盘挂载到同一云主机。如果多个云盘中存在不允许挂载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当挂载云盘的请求成功返回时，表示后台已发起挂载云盘的操作，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHING”变为“ATTACHED”，则为挂载成功。
    @inlinable @discardableResult
    public func attachDisks(_ input: AttachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachDisksResponse> {
        self.client.execute(action: "AttachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载云硬盘。
    ///
    /// * 支持批量操作，将多块云盘挂载到同一云主机。如果多个云盘中存在不允许挂载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当挂载云盘的请求成功返回时，表示后台已发起挂载云盘的操作，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHING”变为“ATTACHED”，则为挂载成功。
    @inlinable @discardableResult
    public func attachDisks(_ input: AttachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachDisksResponse {
        try await self.client.execute(action: "AttachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载云硬盘。
    ///
    /// * 支持批量操作，将多块云盘挂载到同一云主机。如果多个云盘中存在不允许挂载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当挂载云盘的请求成功返回时，表示后台已发起挂载云盘的操作，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHING”变为“ATTACHED”，则为挂载成功。
    @inlinable @discardableResult
    public func attachDisks(instanceId: String, diskIds: [String], deleteWithInstance: Bool? = nil, attachMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachDisksResponse> {
        self.attachDisks(.init(instanceId: instanceId, diskIds: diskIds, deleteWithInstance: deleteWithInstance, attachMode: attachMode), region: region, logger: logger, on: eventLoop)
    }

    /// 挂载云硬盘
    ///
    /// 本接口（AttachDisks）用于挂载云硬盘。
    ///
    /// * 支持批量操作，将多块云盘挂载到同一云主机。如果多个云盘中存在不允许挂载的云盘，则操作不执行，返回特定的错误码。
    /// * 本接口为异步接口，当挂载云盘的请求成功返回时，表示后台已发起挂载云盘的操作，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHING”变为“ATTACHED”，则为挂载成功。
    @inlinable @discardableResult
    public func attachDisks(instanceId: String, diskIds: [String], deleteWithInstance: Bool? = nil, attachMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachDisksResponse {
        try await self.attachDisks(.init(instanceId: instanceId, diskIds: diskIds, deleteWithInstance: deleteWithInstance, attachMode: attachMode), region: region, logger: logger, on: eventLoop)
    }
}
