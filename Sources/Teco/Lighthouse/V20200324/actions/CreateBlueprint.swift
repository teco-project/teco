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

extension Lighthouse {
    /// CreateBlueprint请求参数结构体
    public struct CreateBlueprintRequest: TCRequest {
        /// 镜像名称。最大长度60。
        public let blueprintName: String

        /// 镜像描述。最大长度60。
        public let description: String?

        /// 需要制作镜像的实例ID。
        public let instanceId: String?

        /// 是否执行强制关机以制作镜像。
        /// 取值范围：
        /// True：表示关机之后制作镜像
        /// False：表示开机状态制作镜像
        /// 默认取值：True
        /// 开机状态制作镜像，可能导致部分数据未备份，影响数据安全。
        public let forcePowerOff: Bool?

        public init(blueprintName: String, description: String? = nil, instanceId: String? = nil, forcePowerOff: Bool? = nil) {
            self.blueprintName = blueprintName
            self.description = description
            self.instanceId = instanceId
            self.forcePowerOff = forcePowerOff
        }

        enum CodingKeys: String, CodingKey {
            case blueprintName = "BlueprintName"
            case description = "Description"
            case instanceId = "InstanceId"
            case forcePowerOff = "ForcePowerOff"
        }
    }

    /// CreateBlueprint返回参数结构体
    public struct CreateBlueprintResponse: TCResponse {
        /// 自定义镜像ID。
        public let blueprintId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case blueprintId = "BlueprintId"
            case requestId = "RequestId"
        }
    }

    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(_ input: CreateBlueprintRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlueprintResponse> {
        self.client.execute(action: "CreateBlueprint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(_ input: CreateBlueprintRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlueprintResponse {
        try await self.client.execute(action: "CreateBlueprint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(blueprintName: String, description: String? = nil, instanceId: String? = nil, forcePowerOff: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlueprintResponse> {
        self.createBlueprint(.init(blueprintName: blueprintName, description: description, instanceId: instanceId, forcePowerOff: forcePowerOff), region: region, logger: logger, on: eventLoop)
    }

    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(blueprintName: String, description: String? = nil, instanceId: String? = nil, forcePowerOff: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlueprintResponse {
        try await self.createBlueprint(.init(blueprintName: blueprintName, description: description, instanceId: instanceId, forcePowerOff: forcePowerOff), region: region, logger: logger, on: eventLoop)
    }
}
