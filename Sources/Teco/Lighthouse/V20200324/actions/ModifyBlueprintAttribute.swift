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
    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable
    public func modifyBlueprintAttribute(_ input: ModifyBlueprintAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyBlueprintAttributeResponse > {
        self.client.execute(action: "ModifyBlueprintAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable
    public func modifyBlueprintAttribute(_ input: ModifyBlueprintAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlueprintAttributeResponse {
        try await self.client.execute(action: "ModifyBlueprintAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyBlueprintAttribute请求参数结构体
    public struct ModifyBlueprintAttributeRequest: TCRequestModel {
        /// 镜像 ID。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        public let blueprintId: String
        
        /// 设置新的镜像名称。最大长度60。
        public let blueprintName: String?
        
        /// 设置新的镜像描述。最大长度60。
        public let description: String?
        
        public init (blueprintId: String, blueprintName: String?, description: String?) {
            self.blueprintId = blueprintId
            self.blueprintName = blueprintName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case blueprintId = "BlueprintId"
            case blueprintName = "BlueprintName"
            case description = "Description"
        }
    }
    
    /// ModifyBlueprintAttribute返回参数结构体
    public struct ModifyBlueprintAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
