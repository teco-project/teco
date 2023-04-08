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
    /// ScaleUpInstance请求参数结构体
    public struct ScaleUpInstanceRequest: TCRequestModel {
        /// 实例唯一ID
        public let instanceId: String

        /// 节点类型，DATA：clickhouse节点，COMMON：为zookeeper节点
        public let type: String

        /// clickhouse节点规格。
        public let specName: String

        /// 是否滚动重启，false为不滚动重启，true为滚动重启
        public let scaleUpEnableRolling: Bool

        public init(instanceId: String, type: String, specName: String, scaleUpEnableRolling: Bool) {
            self.instanceId = instanceId
            self.type = type
            self.specName = specName
            self.scaleUpEnableRolling = scaleUpEnableRolling
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case type = "Type"
            case specName = "SpecName"
            case scaleUpEnableRolling = "ScaleUpEnableRolling"
        }
    }

    /// ScaleUpInstance返回参数结构体
    public struct ScaleUpInstanceResponse: TCResponseModel {
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

    /// 垂直扩缩容节点规格
    ///
    /// 垂直扩缩容节点规格，修改节点cvm的规格cpu，内存。 规格变化阶段，服务不可用。
    @inlinable
    public func scaleUpInstance(_ input: ScaleUpInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleUpInstanceResponse> {
        self.client.execute(action: "ScaleUpInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 垂直扩缩容节点规格
    ///
    /// 垂直扩缩容节点规格，修改节点cvm的规格cpu，内存。 规格变化阶段，服务不可用。
    @inlinable
    public func scaleUpInstance(_ input: ScaleUpInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleUpInstanceResponse {
        try await self.client.execute(action: "ScaleUpInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 垂直扩缩容节点规格
    ///
    /// 垂直扩缩容节点规格，修改节点cvm的规格cpu，内存。 规格变化阶段，服务不可用。
    @inlinable
    public func scaleUpInstance(instanceId: String, type: String, specName: String, scaleUpEnableRolling: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleUpInstanceResponse> {
        self.scaleUpInstance(.init(instanceId: instanceId, type: type, specName: specName, scaleUpEnableRolling: scaleUpEnableRolling), region: region, logger: logger, on: eventLoop)
    }

    /// 垂直扩缩容节点规格
    ///
    /// 垂直扩缩容节点规格，修改节点cvm的规格cpu，内存。 规格变化阶段，服务不可用。
    @inlinable
    public func scaleUpInstance(instanceId: String, type: String, specName: String, scaleUpEnableRolling: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleUpInstanceResponse {
        try await self.scaleUpInstance(.init(instanceId: instanceId, type: type, specName: specName, scaleUpEnableRolling: scaleUpEnableRolling), region: region, logger: logger, on: eventLoop)
    }
}
