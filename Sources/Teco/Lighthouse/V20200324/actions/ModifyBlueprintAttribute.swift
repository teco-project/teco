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

extension Lighthouse {
    /// ModifyBlueprintAttribute请求参数结构体
    public struct ModifyBlueprintAttributeRequest: TCRequestModel {
        /// 镜像 ID。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        public let blueprintId: String

        /// 设置新的镜像名称。最大长度60。
        public let blueprintName: String?

        /// 设置新的镜像描述。最大长度60。
        public let description: String?

        public init(blueprintId: String, blueprintName: String? = nil, description: String? = nil) {
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

    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable @discardableResult
    public func modifyBlueprintAttribute(_ input: ModifyBlueprintAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlueprintAttributeResponse> {
        self.client.execute(action: "ModifyBlueprintAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable @discardableResult
    public func modifyBlueprintAttribute(_ input: ModifyBlueprintAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlueprintAttributeResponse {
        try await self.client.execute(action: "ModifyBlueprintAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable @discardableResult
    public func modifyBlueprintAttribute(blueprintId: String, blueprintName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBlueprintAttributeResponse> {
        self.modifyBlueprintAttribute(.init(blueprintId: blueprintId, blueprintName: blueprintName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改镜像属性
    ///
    /// 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。
    @inlinable @discardableResult
    public func modifyBlueprintAttribute(blueprintId: String, blueprintName: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlueprintAttributeResponse {
        try await self.modifyBlueprintAttribute(.init(blueprintId: blueprintId, blueprintName: blueprintName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
