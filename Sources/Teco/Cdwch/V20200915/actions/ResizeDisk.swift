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

extension Cdwch {
    /// ResizeDisk请求参数结构体
    public struct ResizeDiskRequest: TCRequestModel {
        /// 实例唯一ID
        public let instanceId: String

        /// 节点类型，DATA：clickhouse节点，COMMON：为zookeeper节点
        public let type: String

        /// 磁盘扩容后容量，不能小于原有用量。clickhouse最小200，且为100的整数倍。 zk最小100，且为10的整数倍；
        public let diskSize: Int64

        public init(instanceId: String, type: String, diskSize: Int64) {
            self.instanceId = instanceId
            self.type = type
            self.diskSize = diskSize
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case type = "Type"
            case diskSize = "DiskSize"
        }
    }

    /// ResizeDisk返回参数结构体
    public struct ResizeDiskResponse: TCResponseModel {
        /// 流程ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: String?

        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case instanceId = "InstanceId"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }

    /// 扩容磁盘容量
    ///
    /// 扩容磁盘，包含扩容数据节点，zk节点
    @inlinable
    public func resizeDisk(_ input: ResizeDiskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeDiskResponse> {
        self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容磁盘容量
    ///
    /// 扩容磁盘，包含扩容数据节点，zk节点
    @inlinable
    public func resizeDisk(_ input: ResizeDiskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeDiskResponse {
        try await self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容磁盘容量
    ///
    /// 扩容磁盘，包含扩容数据节点，zk节点
    @inlinable
    public func resizeDisk(instanceId: String, type: String, diskSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeDiskResponse> {
        self.resizeDisk(.init(instanceId: instanceId, type: type, diskSize: diskSize), region: region, logger: logger, on: eventLoop)
    }

    /// 扩容磁盘容量
    ///
    /// 扩容磁盘，包含扩容数据节点，zk节点
    @inlinable
    public func resizeDisk(instanceId: String, type: String, diskSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeDiskResponse {
        try await self.resizeDisk(.init(instanceId: instanceId, type: type, diskSize: diskSize), region: region, logger: logger, on: eventLoop)
    }
}
