//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(_ input: CreateBlueprintRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBlueprintResponse > {
        self.client.execute(action: "CreateBlueprint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建镜像
    ///
    /// 本接口 (CreateBlueprint) 用于创建镜像。
    @inlinable
    public func createBlueprint(_ input: CreateBlueprintRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlueprintResponse {
        try await self.client.execute(action: "CreateBlueprint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateBlueprint请求参数结构体
    public struct CreateBlueprintRequest: TCRequestModel {
        /// 镜像名称。最大长度60。
        public let blueprintName: String
        
        /// 镜像描述。最大长度60。
        public let description: String?
        
        /// 需要制作镜像的实例ID。
        public let instanceId: String?
        
        public init (blueprintName: String, description: String?, instanceId: String?) {
            self.blueprintName = blueprintName
            self.description = description
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case blueprintName = "BlueprintName"
            case description = "Description"
            case instanceId = "InstanceId"
        }
    }
    
    /// CreateBlueprint返回参数结构体
    public struct CreateBlueprintResponse: TCResponseModel {
        /// 自定义镜像ID。
        public let blueprintId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case blueprintId = "BlueprintId"
            case requestId = "RequestId"
        }
    }
}
